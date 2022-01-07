; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }
%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@decrementers = common dso_local global i32 0, align 4
@decrementers_next_tb = common dso_local global i32 0, align 4
@decrementer_max = common dso_local global i32 0, align 4
@CONFIG_PPC_WATCHDOG = common dso_local global i32 0, align 4
@irq_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ppc_n_lost_interrupts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = call i8* @this_cpu_ptr(i32* @decrementers)
  %8 = bitcast i8* %7 to %struct.clock_event_device*
  store %struct.clock_event_device* %8, %struct.clock_event_device** %3, align 8
  %9 = call i8* @this_cpu_ptr(i32* @decrementers_next_tb)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i32 @cpu_online(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @decrementer_max, align 4
  %21 = call i32 @set_dec(i32 %20)
  br label %89

22:                                               ; preds = %1
  %23 = load i32, i32* @CONFIG_PPC_WATCHDOG, align 4
  %24 = call i64 @IS_ENABLED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @set_dec(i32 2147483647)
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @decrementer_max, align 4
  %30 = call i32 @set_dec(i32 %29)
  br label %31

31:                                               ; preds = %28, %26
  %32 = call i32 (...) @may_hard_irq_enable()
  %33 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %34 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %33)
  store %struct.pt_regs* %34, %struct.pt_regs** %5, align 8
  %35 = call i32 (...) @irq_enter()
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = call i32 @trace_timer_interrupt_entry(%struct.pt_regs* %36)
  %38 = call i64 (...) @test_irq_work_pending()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = call i32 (...) @clear_irq_work_pending()
  %42 = call i32 (...) @irq_work_run()
  br label %43

43:                                               ; preds = %40, %31
  %44 = call i32 (...) @get_tb_or_rtc()
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  store i32 -1, i32* %50, align 4
  %51 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %52 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %51, i32 0, i32 0
  %53 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %52, align 8
  %54 = icmp ne i32 (%struct.clock_event_device*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %57 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %56, i32 0, i32 0
  %58 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %57, align 8
  %59 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %60 = call i32 %58(%struct.clock_event_device* %59)
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irq_stat, i32 0, i32 1), align 4
  %63 = call i32 @__this_cpu_inc(i32 %62)
  br label %83

64:                                               ; preds = %43
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @decrementer_max, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @set_dec(i32 %73)
  br label %75

75:                                               ; preds = %72, %64
  %76 = call i64 (...) @test_irq_work_pending()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @set_dec(i32 1)
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irq_stat, i32 0, i32 0), align 4
  %82 = call i32 @__this_cpu_inc(i32 %81)
  br label %83

83:                                               ; preds = %80, %61
  %84 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %85 = call i32 @trace_timer_interrupt_exit(%struct.pt_regs* %84)
  %86 = call i32 (...) @irq_exit()
  %87 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %88 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %87)
  br label %89

89:                                               ; preds = %83, %18
  ret void
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_dec(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @may_hard_irq_enable(...) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @trace_timer_interrupt_entry(%struct.pt_regs*) #1

declare dso_local i64 @test_irq_work_pending(...) #1

declare dso_local i32 @clear_irq_work_pending(...) #1

declare dso_local i32 @irq_work_run(...) #1

declare dso_local i32 @get_tb_or_rtc(...) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @trace_timer_interrupt_exit(%struct.pt_regs*) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
