; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pfd.c_clk_pfd_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pfd.c_clk_pfd_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pfd = type { i32, i64 }

@CLR = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pfd_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pfd_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_pfd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_pfd* @to_clk_pfd(%struct.clk_hw* %10)
  store %struct.clk_pfd* %11, %struct.clk_pfd** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 18
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = udiv i64 %17, 2
  %19 = add i64 %16, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @do_div(i32 %21, i64 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 12
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 12, i32* %9, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 35
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 35, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.clk_pfd*, %struct.clk_pfd** %7, align 8
  %35 = getelementptr inbounds %struct.clk_pfd, %struct.clk_pfd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 8
  %38 = shl i32 63, %37
  %39 = load %struct.clk_pfd*, %struct.clk_pfd** %7, align 8
  %40 = getelementptr inbounds %struct.clk_pfd, %struct.clk_pfd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.clk_pfd*, %struct.clk_pfd** %7, align 8
  %47 = getelementptr inbounds %struct.clk_pfd, %struct.clk_pfd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 8
  %50 = shl i32 %45, %49
  %51 = load %struct.clk_pfd*, %struct.clk_pfd** %7, align 8
  %52 = getelementptr inbounds %struct.clk_pfd, %struct.clk_pfd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SET, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i32 %50, i64 %55)
  ret i32 0
}

declare dso_local %struct.clk_pfd* @to_clk_pfd(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
