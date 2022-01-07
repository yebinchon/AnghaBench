; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_loongson3_ipi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_smp.c_loongson3_ipi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ipi_status0_regs = common dso_local global i32* null, align 8
@IPI_IRQ_OFFSET = common dso_local global i32 0, align 4
@ipi_clear0_regs = common dso_local global i32* null, align 8
@SMP_RESCHEDULE_YOURSELF = common dso_local global i32 0, align 4
@SMP_CALL_FUNCTION = common dso_local global i32 0, align 4
@SMP_ASK_C0COUNT = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@core0_c0count = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loongson3_ipi_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** @ipi_status0_regs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @cpu_logical_map(i32 %11)
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @loongson3_ipi_read32(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IPI_IRQ_OFFSET, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** @ipi_clear0_regs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @cpu_logical_map(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @loongson3_ipi_write32(i32 %19, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SMP_RESCHEDULE_YOURSELF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 (...) @scheduler_ipi()
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SMP_CALL_FUNCTION, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 (...) @irq_enter()
  %39 = call i32 (...) @generic_smp_call_function_interrupt()
  %40 = call i32 (...) @irq_exit()
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SMP_ASK_C0COUNT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = call i32 (...) @read_c0_count()
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 1, %56 ]
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %69, %57
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @nr_cpu_ids, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** @core0_c0count, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %59

72:                                               ; preds = %59
  %73 = call i32 (...) @__wbflush()
  br label %74

74:                                               ; preds = %72, %41
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %82, %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ffs(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @do_IRQ(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = shl i32 1, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %78

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %74
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @loongson3_ipi_read32(i32) #1

declare dso_local i64 @cpu_logical_map(i32) #1

declare dso_local i32 @loongson3_ipi_write32(i32, i32) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @irq_exit(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @__wbflush(...) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
