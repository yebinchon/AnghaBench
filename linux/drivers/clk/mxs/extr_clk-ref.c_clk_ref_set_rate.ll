; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-ref.c_clk_ref_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-ref.c_clk_ref_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_ref = type { i32, i32 }

@mxs_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_ref_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_ref_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_ref*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_ref* @to_clk_ref(%struct.clk_hw* %13)
  store %struct.clk_ref* %14, %struct.clk_ref** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.clk_ref*, %struct.clk_ref** %7, align 8
  %18 = getelementptr inbounds %struct.clk_ref, %struct.clk_ref* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 8
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 18
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = udiv i64 %24, 2
  %26 = add i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @do_div(i32 %28, i64 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 18
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 18, i32* %11, align 4
  br label %40

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 35
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 35, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_lock_irqsave(i32* @mxs_lock, i64 %41)
  %43 = load %struct.clk_ref*, %struct.clk_ref** %7, align 8
  %44 = getelementptr inbounds %struct.clk_ref, %struct.clk_ref* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @readl_relaxed(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 63, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.clk_ref*, %struct.clk_ref** %7, align 8
  %59 = getelementptr inbounds %struct.clk_ref, %struct.clk_ref* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel_relaxed(i32 %57, i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* @mxs_lock, i64 %62)
  ret i32 0
}

declare dso_local %struct.clk_ref* @to_clk_ref(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
