; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-gpt-synth.c_clk_gpt_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-gpt-synth.c_clk_gpt_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gpt = type { i64, i32 }

@GPT_MSCALE_MASK = common dso_local global i32 0, align 4
@GPT_NSCALE_SHIFT = common dso_local global i32 0, align 4
@GPT_NSCALE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_gpt_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_gpt_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_gpt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_gpt* @to_clk_gpt(%struct.clk_hw* %10)
  store %struct.clk_gpt* %11, %struct.clk_gpt** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.clk_gpt*, %struct.clk_gpt** %6, align 8
  %13 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.clk_gpt*, %struct.clk_gpt** %6, align 8
  %18 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i64 %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.clk_gpt*, %struct.clk_gpt** %6, align 8
  %24 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @readl_relaxed(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.clk_gpt*, %struct.clk_gpt** %6, align 8
  %28 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.clk_gpt*, %struct.clk_gpt** %6, align 8
  %33 = getelementptr inbounds %struct.clk_gpt, %struct.clk_gpt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GPT_MSCALE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @GPT_NSCALE_SHIFT, align 4
  %45 = lshr i32 %43, %44
  %46 = load i32, i32* @GPT_NSCALE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = add i32 %47, 1
  %49 = shl i32 1, %48
  %50 = load i32, i32* %8, align 4
  %51 = mul i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %60

55:                                               ; preds = %37
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = udiv i64 %56, %58
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local %struct.clk_gpt* @to_clk_gpt(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
