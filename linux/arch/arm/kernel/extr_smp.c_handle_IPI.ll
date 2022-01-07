; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_handle_IPI.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_smp.c_handle_IPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@NR_IPI = common dso_local global i32 0, align 4
@ipi_types = common dso_local global i32* null, align 8
@ipi_irqs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"CPU%u: Unknown IPI message 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_IPI(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %8)
  store %struct.pt_regs* %9, %struct.pt_regs** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NR_IPI, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32*, i32** @ipi_types, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @trace_ipi_entry_rcuidle(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @ipi_irqs, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__inc_irq_stat(i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i32, i32* %3, align 4
  switch i32 %28, label %53 [
    i32 128, label %29
    i32 130, label %30
    i32 135, label %32
    i32 132, label %36
    i32 134, label %41
    i32 133, label %46
  ]

29:                                               ; preds = %27
  br label %57

30:                                               ; preds = %27
  %31 = call i32 (...) @scheduler_ipi()
  br label %57

32:                                               ; preds = %27
  %33 = call i32 (...) @irq_enter()
  %34 = call i32 (...) @generic_smp_call_function_interrupt()
  %35 = call i32 (...) @irq_exit()
  br label %57

36:                                               ; preds = %27
  %37 = call i32 (...) @irq_enter()
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ipi_cpu_stop(i32 %38)
  %40 = call i32 (...) @irq_exit()
  br label %57

41:                                               ; preds = %27
  %42 = call i32 (...) @irq_enter()
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ipi_complete(i32 %43)
  %45 = call i32 (...) @irq_exit()
  br label %57

46:                                               ; preds = %27
  %47 = call i32 (...) @printk_nmi_enter()
  %48 = call i32 (...) @irq_enter()
  %49 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %50 = call i32 @nmi_cpu_backtrace(%struct.pt_regs* %49)
  %51 = call i32 (...) @irq_exit()
  %52 = call i32 (...) @printk_nmi_exit()
  br label %57

53:                                               ; preds = %27
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %46, %41, %36, %32, %30, %29
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @NR_IPI, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32*, i32** @ipi_types, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trace_ipi_exit_rcuidle(i32 %66)
  br label %68

68:                                               ; preds = %61, %57
  %69 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %70 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %69)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @trace_ipi_entry_rcuidle(i32) #1

declare dso_local i32 @__inc_irq_stat(i32, i32) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @irq_exit(...) #1

declare dso_local i32 @ipi_cpu_stop(i32) #1

declare dso_local i32 @ipi_complete(i32) #1

declare dso_local i32 @printk_nmi_enter(...) #1

declare dso_local i32 @nmi_cpu_backtrace(%struct.pt_regs*) #1

declare dso_local i32 @printk_nmi_exit(...) #1

declare dso_local i32 @pr_crit(i8*, i32, i32) #1

declare dso_local i32 @trace_ipi_exit_rcuidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
