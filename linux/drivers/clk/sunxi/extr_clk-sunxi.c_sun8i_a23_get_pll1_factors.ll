; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun8i_a23_get_pll1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun8i_a23_get_pll1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun8i_a23_get_pll1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_a23_get_pll1_factors(%struct.factors_request* %0) #0 {
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
  %36 = icmp slt i32 %35, 20
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34
  %45 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %46 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %45, i32 0, i32 2
  store i32 2, i32* %46, align 8
  br label %64

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 40
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 64
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %47
  %58 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %59 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %63

60:                                               ; preds = %53, %50
  %61 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %62 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %44
  %65 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %66 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %71 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %3, align 4
  %75 = sdiv i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = sdiv i32 %76, 4
  %78 = sub nsw i32 %77, 1
  %79 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %80 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
