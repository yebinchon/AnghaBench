; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson3.c_loongson3_perfcount_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson3.c_loongson3_perfcount_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.pt_regs = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CAUSEF_PCI = common dso_local global i32 0, align 4
@LOONGSON3_PERFCNT_OVERFLOW = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CAUSEF_TI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @loongson3_perfcount_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson3_perfcount_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %6, align 4
  %9 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %9, %struct.pt_regs** %7, align 8
  %10 = call i32 (...) @read_c0_cause()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CAUSEF_PCI, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %1, align 4
  br label %62

17:                                               ; preds = %0
  %18 = call i32 (...) @read_c0_perfhi1()
  store i32 %18, i32* %3, align 4
  %19 = call i32 (...) @read_c0_perfhi2()
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @LOONGSON3_PERFCNT_OVERFLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %31 = call i32 @oprofile_add_sample(%struct.pt_regs* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 8
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %17
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @LOONGSON3_PERFCNT_OVERFLOW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %44 = call i32 @oprofile_add_sample(%struct.pt_regs* %43, i32 1)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %34
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @local_irq_restore(i64 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @write_c0_perfhi1(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @write_c0_perfhi2(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @CAUSEF_TI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %47
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %60, %15
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_perfhi1(...) #1

declare dso_local i32 @read_c0_perfhi2(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @write_c0_perfhi1(i32) #1

declare dso_local i32 @write_c0_perfhi2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
