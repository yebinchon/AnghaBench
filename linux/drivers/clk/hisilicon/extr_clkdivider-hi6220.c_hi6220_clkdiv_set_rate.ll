; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clkdivider-hi6220.c_hi6220_clkdiv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clkdivider-hi6220.c_hi6220_clkdiv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hi6220_clk_divider = type { i32, i32, i64, i32, i32, i32 }

@CLK_DIVIDER_ROUND_CLOSEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @hi6220_clkdiv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_clkdiv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hi6220_clk_divider*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.hi6220_clk_divider* @to_hi6220_clk_divider(%struct.clk_hw* %11)
  store %struct.hi6220_clk_divider* %12, %struct.hi6220_clk_divider** %10, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %16 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %19 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLK_DIVIDER_ROUND_CLOSEST, align 4
  %22 = call i32 @divider_get_val(i64 %13, i64 %14, i32 %17, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %24 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %29 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %3
  %34 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %35 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @readl_relaxed(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %39 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @div_mask(i32 %40)
  %42 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %43 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %51 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %57 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %63 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @writel_relaxed(i32 %61, i32 %64)
  %66 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %67 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %33
  %71 = load %struct.hi6220_clk_divider*, %struct.hi6220_clk_divider** %10, align 8
  %72 = getelementptr inbounds %struct.hi6220_clk_divider, %struct.hi6220_clk_divider* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %70, %33
  ret i32 0
}

declare dso_local %struct.hi6220_clk_divider* @to_hi6220_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @div_mask(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
