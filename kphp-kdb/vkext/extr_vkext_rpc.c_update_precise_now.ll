; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_update_precise_now.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_update_precise_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@precise_now_ticks = common dso_local global i64 0, align 8
@precise_now_updates = common dso_local global i32 0, align 4
@precise_now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_precise_now() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @rdtsc()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @precise_now_ticks, align 8
  %5 = sub nsw i64 %3, %4
  %6 = icmp sgt i64 %5, 1000000
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @precise_now_updates, align 4
  %9 = call i32 @ADD_CNT(i32 %8)
  %10 = load i64, i64* %1, align 8
  store i64 %10, i64* @precise_now_ticks, align 8
  %11 = call i32 (...) @get_utime_monotonic()
  store i32 %11, i32* @precise_now, align 4
  br label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @precise_now, align 4
  %14 = sitofp i32 %13 to double
  %15 = fadd double %14, 0x3EB0C6F7A0B5ED8D
  %16 = fptosi double %15 to i32
  store i32 %16, i32* @precise_now, align 4
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @ADD_CNT(i32) #1

declare dso_local i32 @get_utime_monotonic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
