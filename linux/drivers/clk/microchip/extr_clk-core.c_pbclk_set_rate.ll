; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pbclk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_pbclk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_periph_clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PB_DIV_READY = common dso_local global i32 0, align 4
@LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@PB_DIV_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @pbclk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbclk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pic32_periph_clk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.pic32_periph_clk* @clkhw_to_pbclk(%struct.clk_hw* %13)
  store %struct.pic32_periph_clk* %14, %struct.pic32_periph_clk** %8, align 8
  %15 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %16 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @PB_DIV_READY, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %23 = call i32 @readl_poll_timeout(i32 %17, i32 %18, i32 %21, i32 1, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @DIV_ROUND_CLOSEST(i64 %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %33 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %39 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @readl(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @PB_DIV_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = call i32 (...) @pic32_syskey_unlock()
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %53 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @writel(i32 %51, i32 %54)
  %56 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %57 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %63 = getelementptr inbounds %struct.pic32_periph_clk, %struct.pic32_periph_clk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PB_DIV_READY, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %70 = call i32 @readl_poll_timeout(i32 %64, i32 %65, i32 %68, i32 1, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %28
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %86

75:                                               ; preds = %28
  %76 = load %struct.pic32_periph_clk*, %struct.pic32_periph_clk** %8, align 8
  %77 = call i32 @pbclk_read_pbdiv(%struct.pic32_periph_clk* %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  br label %84

84:                                               ; preds = %81, %80
  %85 = phi i32 [ 0, %80 ], [ %83, %81 ]
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %73, %26
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.pic32_periph_clk* @clkhw_to_pbclk(%struct.clk_hw*) #1

declare dso_local i32 @readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pic32_syskey_unlock(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pbclk_read_pbdiv(%struct.pic32_periph_clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
