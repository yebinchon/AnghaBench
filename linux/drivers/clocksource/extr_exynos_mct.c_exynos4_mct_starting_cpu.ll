; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_starting_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_starting_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mct_clock_event_device = type { i64, i32, %struct.clock_event_device }
%struct.clock_event_device = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }

@percpu_mct_tick = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mct_tick%d\00", align 1
@exynos4_tick_set_next_event = common dso_local global i32 0, align 4
@set_state_periodic = common dso_local global i32 0, align 4
@set_state_shutdown = common dso_local global i8* null, align 8
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@TICK_BASE_CNT = common dso_local global i32 0, align 4
@MCT_L_TCNTB_OFFSET = common dso_local global i64 0, align 8
@mct_int_type = common dso_local global i64 0, align 8
@MCT_INT_SPI = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@mct_irqs = common dso_local global i32* null, align 8
@MCT_L0_IRQ = common dso_local global i64 0, align 8
@clk_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exynos4_mct_starting_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4_mct_starting_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mct_clock_event_device*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mct_clock_event_device* @per_cpu_ptr(i32* @percpu_mct_tick, i32 %6)
  store %struct.mct_clock_event_device* %7, %struct.mct_clock_event_device** %4, align 8
  %8 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %9 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %8, i32 0, i32 2
  store %struct.clock_event_device* %9, %struct.clock_event_device** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @EXYNOS4_MCT_L_BASE(i32 %10)
  %12 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %13 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %15 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @snprintf(i32 %16, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %20 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @cpumask_of(i32 %24)
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @exynos4_tick_set_next_event, align 4
  %29 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %30 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @set_state_periodic, align 4
  %32 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %33 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @set_state_shutdown, align 8
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @set_state_shutdown, align 8
  %38 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %39 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @set_state_shutdown, align 8
  %41 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %42 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @set_state_shutdown, align 8
  %44 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %45 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %47 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %50 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %52 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %51, i32 0, i32 1
  store i32 500, i32* %52, align 4
  %53 = load i32, i32* @TICK_BASE_CNT, align 4
  %54 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %55 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MCT_L_TCNTB_OFFSET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @exynos4_mct_write(i32 %53, i64 %58)
  %60 = load i64, i64* @mct_int_type, align 8
  %61 = load i64, i64* @MCT_INT_SPI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %1
  %64 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %65 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %63
  %72 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %73 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @cpumask_of(i32 %75)
  %77 = call i32 @irq_force_affinity(i32 %74, i32 %76)
  %78 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %79 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @enable_irq(i32 %80)
  br label %88

82:                                               ; preds = %1
  %83 = load i32*, i32** @mct_irqs, align 8
  %84 = load i64, i64* @MCT_L0_IRQ, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @enable_percpu_irq(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %82, %71
  %89 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %90 = load i32, i32* @clk_rate, align 4
  %91 = load i32, i32* @TICK_BASE_CNT, align 4
  %92 = add nsw i32 %91, 1
  %93 = sdiv i32 %90, %92
  %94 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %89, i32 %93, i32 15, i32 2147483647)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %88, %68
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.mct_clock_event_device* @per_cpu_ptr(i32*, i32) #1

declare dso_local i64 @EXYNOS4_MCT_L_BASE(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @exynos4_mct_write(i32, i64) #1

declare dso_local i32 @irq_force_affinity(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
