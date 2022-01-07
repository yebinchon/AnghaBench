; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_x2apic_uv_x.c_uv_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }
%struct.timer_list = type { i32 }

@uv_scir_info = common dso_local global %struct.TYPE_2__* null, align 8
@SCIR_CPU_HEARTBEAT = common dso_local global i8 0, align 1
@SCIR_CPU_ACTIVITY = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@SCIR_CPU_HB_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @uv_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_heartbeat(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uv_scir_info, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* @SCIR_CPU_HEARTBEAT, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, %8
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = call i32 (...) @raw_smp_processor_id()
  %14 = call i64 @idle_cpu(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i8, i8* @SCIR_CPU_ACTIVITY, align 1
  %18 = zext i8 %17 to i32
  %19 = xor i32 %18, -1
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %3, align 1
  br label %31

24:                                               ; preds = %1
  %25 = load i8, i8* @SCIR_CPU_ACTIVITY, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  br label %31

31:                                               ; preds = %24, %16
  %32 = load i8, i8* %3, align 1
  %33 = call i32 @uv_set_scir_bits(i8 zeroext %32)
  %34 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @SCIR_CPU_HB_INTERVAL, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @mod_timer(%struct.timer_list* %34, i64 %37)
  ret void
}

declare dso_local i64 @idle_cpu(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @uv_set_scir_bits(i8 zeroext) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
