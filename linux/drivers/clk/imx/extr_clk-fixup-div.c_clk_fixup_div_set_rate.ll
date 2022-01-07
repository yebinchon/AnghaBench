; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-fixup-div.c_clk_fixup_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-fixup-div.c_clk_fixup_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fixup_div = type { i32 (i32*)* }
%struct.clk_divider = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_fixup_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fixup_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_fixup_div*, align 8
  %8 = alloca %struct.clk_divider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_fixup_div* @to_clk_fixup_div(%struct.clk_hw* %13)
  store %struct.clk_fixup_div* %14, %struct.clk_fixup_div** %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %15)
  store %struct.clk_divider* %16, %struct.clk_divider** %8, align 8
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %25 = call i32 @div_mask(%struct.clk_divider* %24)
  %26 = icmp ugt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %29 = call i32 @div_mask(%struct.clk_divider* %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %32 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  %36 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %37 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @readl(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %41 = call i32 @div_mask(%struct.clk_divider* %40)
  %42 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %43 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %12, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %51 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %49, %52
  %54 = load i32, i32* %12, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load %struct.clk_fixup_div*, %struct.clk_fixup_div** %7, align 8
  %57 = getelementptr inbounds %struct.clk_fixup_div, %struct.clk_fixup_div* %56, i32 0, i32 0
  %58 = load i32 (i32*)*, i32 (i32*)** %57, align 8
  %59 = call i32 %58(i32* %12)
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %62 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @writel(i32 %60, i32 %63)
  %65 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %66 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32 %67, i64 %68)
  ret i32 0
}

declare dso_local %struct.clk_fixup_div* @to_clk_fixup_div(%struct.clk_hw*) #1

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @div_mask(%struct.clk_divider*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
