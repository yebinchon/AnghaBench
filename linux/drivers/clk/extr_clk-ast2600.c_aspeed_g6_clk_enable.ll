; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i64, i64, i32, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @aspeed_g6_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.aspeed_clk_gate*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw* %8)
  store %struct.aspeed_clk_gate* %9, %struct.aspeed_clk_gate** %4, align 8
  %10 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %11 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @get_bit(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %15 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @get_bit(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %19 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %24 = call i64 @aspeed_g6_clk_is_enabled(%struct.clk_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %28 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32 %29, i64 %30)
  store i32 0, i32* %2, align 4
  br label %91

32:                                               ; preds = %1
  %33 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %34 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %39 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %42 = call i64 @get_reset_reg(%struct.aspeed_clk_gate* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @regmap_write(i32 %40, i64 %42, i32 %43)
  %45 = call i32 @udelay(i32 100)
  br label %46

46:                                               ; preds = %37, %32
  %47 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %48 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %55 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %58 = call i64 @get_clock_reg(%struct.aspeed_clk_gate* %57)
  %59 = add nsw i64 %58, 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @regmap_write(i32 %56, i64 %59, i32 %60)
  br label %70

62:                                               ; preds = %46
  %63 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %64 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %67 = call i64 @get_clock_reg(%struct.aspeed_clk_gate* %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @regmap_write(i32 %65, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %53
  %71 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %72 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = call i32 @mdelay(i32 10)
  %77 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %78 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %81 = call i64 @get_reset_reg(%struct.aspeed_clk_gate* %80)
  %82 = add nsw i64 %81, 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @regmap_write(i32 %79, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %70
  %86 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %87 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32 %88, i64 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %26
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @get_bit(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @aspeed_g6_clk_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @get_reset_reg(%struct.aspeed_clk_gate*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @get_clock_reg(%struct.aspeed_clk_gate*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
