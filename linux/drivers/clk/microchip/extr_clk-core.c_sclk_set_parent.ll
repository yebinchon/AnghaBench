; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-core.c_sclk_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pic32_sys_clk = type { i64*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@OSC_NEW_MASK = common dso_local global i32 0, align 4
@OSC_NEW_SHIFT = common dso_local global i32 0, align 4
@OSC_SWEN = common dso_local global i32 0, align 4
@LOCK_TIMEOUT_US = common dso_local global i32 0, align 4
@OSC_CUR_SHIFT = common dso_local global i32 0, align 4
@OSC_CUR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: err, failed to set_parent() to %d, current %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @sclk_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclk_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pic32_sys_clk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw* %11)
  store %struct.pic32_sys_clk* %12, %struct.pic32_sys_clk** %5, align 8
  %13 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %14 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %20 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %25 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i64 [ %29, %23 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %36 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @readl(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @OSC_NEW_MASK, align 4
  %40 = load i32, i32* @OSC_NEW_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @OSC_NEW_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = call i32 (...) @pic32_syskey_unlock()
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %53 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @writel(i32 %51, i32 %54)
  %56 = load i32, i32* @OSC_SWEN, align 4
  %57 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %58 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PIC32_SET(i32 %59)
  %61 = call i32 @writel(i32 %56, i32 %60)
  %62 = call i32 (...) @cpu_relax()
  %63 = call i32 (...) @cpu_nop5()
  %64 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %65 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @OSC_SWEN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* @LOCK_TIMEOUT_US, align 4
  %75 = call i32 @readl_poll_timeout_atomic(i32 %66, i32 %67, i32 %73, i32 1, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %77 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.pic32_sys_clk*, %struct.pic32_sys_clk** %5, align 8
  %83 = getelementptr inbounds %struct.pic32_sys_clk, %struct.pic32_sys_clk* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @readl(i32 %84)
  %86 = load i32, i32* @OSC_CUR_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* @OSC_CUR_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %32
  %94 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %95 = call i32 @clk_hw_get_name(%struct.clk_hw* %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %93, %32
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local %struct.pic32_sys_clk* @clkhw_to_sys_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pic32_syskey_unlock(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PIC32_SET(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @cpu_nop5(...) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
