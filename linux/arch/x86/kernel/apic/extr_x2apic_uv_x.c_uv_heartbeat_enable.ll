; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.timer_list }

@SCIR_CPU_HEARTBEAT = common dso_local global i32 0, align 4
@SCIR_CPU_ACTIVITY = common dso_local global i32 0, align 4
@uv_heartbeat = common dso_local global i32 0, align 4
@TIMER_PINNED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SCIR_CPU_HB_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uv_heartbeat_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_heartbeat_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timer_list*, align 8
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %1
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.TYPE_2__* @uv_cpu_scir_info(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %35

11:                                               ; preds = %4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.TYPE_2__* @uv_cpu_scir_info(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.timer_list* %14, %struct.timer_list** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SCIR_CPU_HEARTBEAT, align 4
  %17 = load i32, i32* @SCIR_CPU_ACTIVITY, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @uv_set_cpu_scir_bits(i32 %15, i32 %18)
  %20 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %21 = load i32, i32* @uv_heartbeat, align 4
  %22 = load i32, i32* @TIMER_PINNED, align 4
  %23 = call i32 @timer_setup(%struct.timer_list* %20, i32 %21, i32 %22)
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* @SCIR_CPU_HB_INTERVAL, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %28 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @add_timer_on(%struct.timer_list* %29, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call %struct.TYPE_2__* @uv_cpu_scir_info(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %4

35:                                               ; preds = %4
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @uv_cpu_scir_info(i32) #1

declare dso_local i32 @uv_set_cpu_scir_bits(i32, i32) #1

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @add_timer_on(%struct.timer_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
