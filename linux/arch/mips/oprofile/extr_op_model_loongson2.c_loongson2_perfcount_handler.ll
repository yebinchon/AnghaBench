; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_perfcount_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_op_model_loongson2.c_loongson2_perfcount_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.pt_regs = type { i32 }

@LOONGSON2_PERFCTRL_ENABLE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@reg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOONGSON2_PERFCNT_OVERFLOW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @loongson2_perfcount_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson2_perfcount_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %11, %struct.pt_regs** %9, align 8
  %12 = call i32 (...) @read_c0_perfctrl()
  %13 = load i32, i32* @LOONGSON2_PERFCTRL_ENABLE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %19
  %28 = call i32 (...) @read_c0_perfcnt()
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @LOONGSON2_PERFCNT_OVERFLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %41 = call i32 @oprofile_add_sample(%struct.pt_regs* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 2), align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @LOONGSON2_PERFCNT_OVERFLOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 1), align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %54 = call i32 @oprofile_add_sample(%struct.pt_regs* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @reg, i32 0, i32 3), align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @write_c0_perfcnt(i32 %61)
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %25, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @read_c0_perfctrl(...) #1

declare dso_local i32 @read_c0_perfcnt(...) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @write_c0_perfcnt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
