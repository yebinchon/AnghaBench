; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_ams-delta-fiq.c_deferred_fiq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_ams-delta-fiq.c_deferred_fiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.irq_data*)* }

@AMS_DELTA_GPIO_PIN_KEYBRD_CLK = common dso_local global i32 0, align 4
@AMS_DELTA_GPIO_PIN_HOOK_SWITCH = common dso_local global i32 0, align 4
@irq_data = common dso_local global %struct.irq_data** null, align 8
@fiq_buffer = common dso_local global i32* null, align 8
@FIQ_CNT_INT_00 = common dso_local global i32 0, align 4
@irq_counter = common dso_local global i32* null, align 8
@irq_chip = common dso_local global %struct.TYPE_2__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @deferred_fiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deferred_fiq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @AMS_DELTA_GPIO_PIN_KEYBRD_CLK, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @AMS_DELTA_GPIO_PIN_HOOK_SWITCH, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load %struct.irq_data**, %struct.irq_data*** @irq_data, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.irq_data*, %struct.irq_data** %15, i64 %17
  %19 = load %struct.irq_data*, %struct.irq_data** %18, align 8
  store %struct.irq_data* %19, %struct.irq_data** %5, align 8
  %20 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %21 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** @fiq_buffer, align 8
  %24 = load i32, i32* @FIQ_CNT_INT_00, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** @irq_counter, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %14
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @AMS_DELTA_GPIO_PIN_KEYBRD_CLK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_chip, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %43, align 8
  %45 = icmp ne i32 (%struct.irq_data*)* %44, null
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON_ONCE(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @irq_chip, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.irq_data*)*, i32 (%struct.irq_data*)** %52, align 8
  %54 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %55 = call i32 %53(%struct.irq_data* %54)
  br label %56

56:                                               ; preds = %50, %41
  br label %57

57:                                               ; preds = %56, %37, %14
  br label %58

58:                                               ; preds = %69, %57
  %59 = load i32*, i32** @irq_counter, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @generic_handle_irq(i32 %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** @irq_counter, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %58

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %10

80:                                               ; preds = %10
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
