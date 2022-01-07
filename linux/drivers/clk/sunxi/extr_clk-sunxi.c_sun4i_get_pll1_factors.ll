; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun4i_get_pll1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun4i_get_pll1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun4i_get_pll1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_get_pll1_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %4 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %5 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sdiv i32 %6, 6000000
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = mul nsw i32 6000000, %8
  %10 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %11 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %13 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %15 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 768000000
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %20 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 42000000
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %25 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 54000000
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18, %1
  %29 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %30 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %33 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %39 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %38, i32 0, i32 2
  store i32 3, i32* %39, align 8
  br label %71

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 20
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 32
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %40
  %51 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %52 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %51, i32 0, i32 2
  store i32 2, i32* %52, align 8
  br label %70

53:                                               ; preds = %46, %43
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 40
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 64
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %53
  %64 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %65 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %69

66:                                               ; preds = %59, %56
  %67 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %68 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %73 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %78 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %3, align 4
  %82 = sdiv i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = sdiv i32 %83, 4
  %85 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %86 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
