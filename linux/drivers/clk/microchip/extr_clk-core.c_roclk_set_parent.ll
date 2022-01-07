; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_roclk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_ref_osc = type { i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@REFO_ACTIVE = common dso_local global i64 0, align 8
@LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: poll failed, clk active\0A\00", align 1
@REFO_SEL_MASK = common dso_local global i64 0, align 8
@REFO_SEL_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @roclk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roclk_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pic32_ref_osc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.pic32_ref_osc* @clkhw_to_refosc(%struct.clk_hw* %10)
  store %struct.pic32_ref_osc* %11, %struct.pic32_ref_osc** %6, align 8
  %12 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %13 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %18 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %25 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @REFO_ACTIVE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %35 = call i32 @readl_poll_timeout(i32 %26, i64 %27, i32 %33, i32 1, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %40 = call i32 @clk_hw_get_name(%struct.clk_hw* %39)
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %77

43:                                               ; preds = %23
  %44 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %45 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = call i32 (...) @pic32_syskey_unlock()
  %51 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %52 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @readl(i32 %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* @REFO_SEL_MASK, align 8
  %56 = load i64, i64* @REFO_SEL_SHIFT, align 8
  %57 = shl i64 %55, %56
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %8, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @REFO_SEL_SHIFT, align 8
  %63 = shl i64 %61, %62
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %68 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @writel(i64 %66, i32 %69)
  %71 = load %struct.pic32_ref_osc*, %struct.pic32_ref_osc** %6, align 8
  %72 = getelementptr inbounds %struct.pic32_ref_osc, %struct.pic32_ref_osc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %43, %38
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.pic32_ref_osc* @clkhw_to_refosc(%struct.clk_hw*) #1

declare dso_local i32 @readl_poll_timeout(i32, i64, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pic32_syskey_unlock(...) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
