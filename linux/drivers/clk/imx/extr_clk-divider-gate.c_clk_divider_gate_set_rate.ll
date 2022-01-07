; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider_gate = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_divider_gate_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_divider_gate_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_divider_gate*, align 8
  %9 = alloca %struct.clk_divider*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw* %13)
  store %struct.clk_divider_gate* %14, %struct.clk_divider_gate** %8, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %15)
  store %struct.clk_divider* %16, %struct.clk_divider** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %20 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %23 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %26 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @divider_get_val(i64 %17, i64 %18, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %3
  %34 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %35 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32 %36, i64 %37)
  %39 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %40 = call i64 @clk_hw_is_enabled(%struct.clk_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %33
  %43 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %44 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @readl(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %48 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_div_mask(i32 %49)
  %51 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %52 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %50, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %60 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %58, %61
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %67 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @writel(i32 %65, i32 %68)
  br label %74

70:                                               ; preds = %33
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.clk_divider_gate*, %struct.clk_divider_gate** %8, align 8
  %73 = getelementptr inbounds %struct.clk_divider_gate, %struct.clk_divider_gate* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %42
  %75 = load %struct.clk_divider*, %struct.clk_divider** %9, align 8
  %76 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32 %77, i64 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %31
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw*) #1

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @divider_get_val(i64, i64, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @clk_hw_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
