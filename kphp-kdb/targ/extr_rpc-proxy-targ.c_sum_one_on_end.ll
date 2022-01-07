; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_one_on_end.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_rpc-proxy-targ.c_sum_one_on_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather = type { i64 }

@TL_MAYBE_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_one_on_end(%struct.gather* %0) #0 {
  %2 = alloca %struct.gather*, align 8
  store %struct.gather* %0, %struct.gather** %2, align 8
  %3 = load %struct.gather*, %struct.gather** %2, align 8
  %4 = call i64 @merge_init_response(%struct.gather* %3)
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i64, i64* @TL_MAYBE_TRUE, align 8
  %8 = call i32 @tl_store_int(i64 %7)
  %9 = load %struct.gather*, %struct.gather** %2, align 8
  %10 = getelementptr inbounds %struct.gather, %struct.gather* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @tl_store_int(i64 %12)
  %14 = call i32 (...) @tl_store_end()
  br label %15

15:                                               ; preds = %6, %1
  %16 = load %struct.gather*, %struct.gather** %2, align 8
  %17 = call i32 @merge_delete(%struct.gather* %16)
  ret void
}

declare dso_local i64 @merge_init_response(%struct.gather*) #1

declare dso_local i32 @tl_store_int(i64) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @merge_delete(%struct.gather*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
