; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_um_idle_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_process.c_um_idle_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UM_NSEC_PER_SEC = common dso_local global i64 0, align 8
@time_travel_mode = common dso_local global i64 0, align 8
@TT_MODE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @um_idle_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @um_idle_sleep() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @UM_NSEC_PER_SEC, align 8
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* @time_travel_mode, align 8
  %4 = load i64, i64* @TT_MODE_OFF, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @time_travel_sleep(i64 %7)
  br label %12

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @os_idle_sleep(i64 %10)
  br label %12

12:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32 @time_travel_sleep(i64) #1

declare dso_local i32 @os_idle_sleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
