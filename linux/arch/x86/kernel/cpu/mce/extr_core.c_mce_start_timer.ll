; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@check_interval = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@mce_next_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mce_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_start_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load i64, i64* @check_interval, align 8
  %5 = load i64, i64* @HZ, align 8
  %6 = mul i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  br label %20

13:                                               ; preds = %9
  %14 = load i32, i32* @mce_next_interval, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @this_cpu_write(i32 %14, i64 %15)
  %17 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @__start_timer(%struct.timer_list* %17, i64 %18)
  br label %20

20:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @this_cpu_write(i32, i64) #1

declare dso_local i32 @__start_timer(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
