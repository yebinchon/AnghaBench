; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_div2_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_div2_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.krait_div2_clk = type { i32, i32, i64, i32 }

@LPL_SHIFT = common dso_local global i32 0, align 4
@krait_clock_reg_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @krait_div2_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krait_div2_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.krait_div2_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.krait_div2_clk* @to_krait_div2_clk(%struct.clk_hw* %11)
  store %struct.krait_div2_clk* %12, %struct.krait_div2_clk** %7, align 8
  %13 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %14 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BIT(i32 %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %19 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %25 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LPL_SHIFT, align 4
  %28 = add nsw i32 %26, %27
  %29 = shl i32 %23, %28
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %32 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %30, %33
  %35 = or i32 %29, %34
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %22, %3
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* @krait_clock_reg_lock, i64 %37)
  %39 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %40 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @krait_get_l2_indirect_reg(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.krait_div2_clk*, %struct.krait_div2_clk** %7, align 8
  %48 = getelementptr inbounds %struct.krait_div2_clk, %struct.krait_div2_clk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @krait_set_l2_indirect_reg(i32 %49, i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @krait_clock_reg_lock, i64 %52)
  ret i32 0
}

declare dso_local %struct.krait_div2_clk* @to_krait_div2_clk(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @krait_get_l2_indirect_reg(i32) #1

declare dso_local i32 @krait_set_l2_indirect_reg(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
