; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_perf_event_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_perf_event_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { %struct.perf_event** }
%struct.perf_event = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@MSR_PMM = common dso_local global i32 0, align 4
@PMRN_PMGC0 = common dso_local global i32 0, align 4
@PMGC0_PMIE = common dso_local global i32 0, align 4
@PMGC0_FCECE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @perf_event_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %9, %struct.cpu_hw_events** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = call i32 @perf_intr_is_nmi(%struct.pt_regs* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @nmi_enter()
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @irq_enter()
  br label %18

18:                                               ; preds = %16, %14
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 0
  %28 = load %struct.perf_event**, %struct.perf_event*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %28, i64 %30
  %32 = load %struct.perf_event*, %struct.perf_event** %31, align 8
  store %struct.perf_event* %32, %struct.perf_event** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @read_pmc(i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %25
  %39 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %40 = icmp ne %struct.perf_event* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %45 = call i32 @record_and_restart(%struct.perf_event* %42, i64 %43, %struct.pt_regs* %44)
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @write_pmc(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %19

54:                                               ; preds = %19
  %55 = call i32 (...) @mfmsr()
  %56 = load i32, i32* @MSR_PMM, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @mtmsr(i32 %57)
  %59 = load i32, i32* @PMRN_PMGC0, align 4
  %60 = load i32, i32* @PMGC0_PMIE, align 4
  %61 = load i32, i32* @PMGC0_FCECE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @mtpmr(i32 %59, i32 %62)
  %64 = call i32 (...) @isync()
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (...) @nmi_exit()
  br label %71

69:                                               ; preds = %54
  %70 = call i32 (...) @irq_exit()
  br label %71

71:                                               ; preds = %69, %67
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_intr_is_nmi(%struct.pt_regs*) #1

declare dso_local i32 @nmi_enter(...) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i64 @read_pmc(i32) #1

declare dso_local i32 @record_and_restart(%struct.perf_event*, i64, %struct.pt_regs*) #1

declare dso_local i32 @write_pmc(i32, i32) #1

declare dso_local i32 @mtmsr(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i32 @mtpmr(i32, i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @nmi_exit(...) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
