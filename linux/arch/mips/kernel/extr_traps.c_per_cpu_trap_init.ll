; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_per_cpu_trap_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_per_cpu_trap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }

@cpu_has_mips_r2_r6 = common dso_local global i64 0, align 8
@CAUSEB_TI = common dso_local global i64 0, align 8
@CAUSEB_IP = common dso_local global i64 0, align 8
@cp0_compare_irq_shift = common dso_local global i64 0, align 8
@INTCTLB_IPTI = common dso_local global i32 0, align 4
@cp0_compare_irq = common dso_local global i32 0, align 4
@INTCTLB_IPPCI = common dso_local global i32 0, align 4
@cp0_perfcount_irq = common dso_local global i32 0, align 4
@INTCTLB_IPFDC = common dso_local global i32 0, align 4
@cp0_fdc_irq = common dso_local global i32 0, align 4
@CP0_LEGACY_COMPARE_IRQ = common dso_local global i32 0, align 4
@CP0_LEGACY_PERFCNT_IRQ = common dso_local global i64 0, align 8
@cpu_has_mmid = common dso_local global i64 0, align 8
@cpu_data = common dso_local global %struct.TYPE_5__* null, align 8
@init_mm = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @per_cpu_trap_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @configure_status()
  %6 = call i32 (...) @configure_hwrena()
  %7 = call i32 (...) @configure_exception_vector()
  %8 = load i64, i64* @cpu_has_mips_r2_r6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i64, i64* @CAUSEB_TI, align 8
  %12 = load i64, i64* @CAUSEB_IP, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, i64* @cp0_compare_irq_shift, align 8
  %14 = call i32 (...) @read_c0_intctl()
  %15 = load i32, i32* @INTCTLB_IPTI, align 4
  %16 = ashr i32 %14, %15
  %17 = and i32 %16, 7
  store i32 %17, i32* @cp0_compare_irq, align 4
  %18 = call i32 (...) @read_c0_intctl()
  %19 = load i32, i32* @INTCTLB_IPPCI, align 4
  %20 = ashr i32 %18, %19
  %21 = and i32 %20, 7
  store i32 %21, i32* @cp0_perfcount_irq, align 4
  %22 = call i32 (...) @read_c0_intctl()
  %23 = load i32, i32* @INTCTLB_IPFDC, align 4
  %24 = ashr i32 %22, %23
  %25 = and i32 %24, 7
  store i32 %25, i32* @cp0_fdc_irq, align 4
  %26 = load i32, i32* @cp0_fdc_irq, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  store i32 -1, i32* @cp0_fdc_irq, align 4
  br label %29

29:                                               ; preds = %28, %10
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @CP0_LEGACY_COMPARE_IRQ, align 4
  store i32 %31, i32* @cp0_compare_irq, align 4
  %32 = load i64, i64* @CP0_LEGACY_PERFCNT_IRQ, align 8
  store i64 %32, i64* @cp0_compare_irq_shift, align 8
  store i32 -1, i32* @cp0_perfcount_irq, align 4
  store i32 -1, i32* @cp0_fdc_irq, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i64, i64* @cpu_has_mmid, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_data, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %59

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_data, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @asid_first_version(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_data, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %52, i64* %57, align 8
  br label %58

58:                                               ; preds = %50, %42
  br label %59

59:                                               ; preds = %58, %36
  %60 = call i32 @mmgrab(i32* @init_mm)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* @init_mm, i32** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %68 = call i32 @enter_lazy_tlb(i32* @init_mm, %struct.TYPE_4__* %67)
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = call i32 (...) @cpu_cache_init()
  br label %73

73:                                               ; preds = %71, %59
  %74 = call i32 (...) @tlb_init()
  %75 = call i32 (...) @TLBMISS_HANDLER_SETUP()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @configure_status(...) #1

declare dso_local i32 @configure_hwrena(...) #1

declare dso_local i32 @configure_exception_vector(...) #1

declare dso_local i32 @read_c0_intctl(...) #1

declare dso_local i64 @asid_first_version(i32) #1

declare dso_local i32 @mmgrab(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @enter_lazy_tlb(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @cpu_cache_init(...) #1

declare dso_local i32 @tlb_init(...) #1

declare dso_local i32 @TLBMISS_HANDLER_SETUP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
