; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pllv3 = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@BM_PLL_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_pllv3*)* @clk_pllv3_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv3_wait_lock(%struct.clk_pllv3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_pllv3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_pllv3* %0, %struct.clk_pllv3** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = call i64 @msecs_to_jiffies(i32 10)
  %8 = add i64 %6, %7
  store i64 %8, i64* %4, align 8
  %9 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %10 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %14 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %18 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %1
  %25 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %26 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %21
  store i32 0, i32* %2, align 4
  br label %66

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %51, %33
  %35 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %36 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @readl_relaxed(i32 %37)
  %39 = load i32, i32* @BM_PLL_LOCK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %34
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @time_after(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %52

49:                                               ; preds = %43
  %50 = call i32 @usleep_range(i32 50, i32 500)
  br label %51

51:                                               ; preds = %49
  br i1 true, label %34, label %52

52:                                               ; preds = %51, %48, %42
  %53 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %54 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @readl_relaxed(i32 %55)
  %57 = load i32, i32* @BM_PLL_LOCK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ 0, %60 ], [ %63, %61 ]
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
