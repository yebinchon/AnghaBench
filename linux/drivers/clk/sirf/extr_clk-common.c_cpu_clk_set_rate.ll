; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_cpu_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_cpu_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.clk* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.clk* }
%struct.clk_hw = type { i32 }

@clk_pll1 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@clk_pll2 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@clk_pll3 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @cpu_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clk_pll1, i32 0, i32 0, i32 0), align 8
  %13 = call i64 @clk_get_rate(%struct.clk* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %17 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clk_pll1, i32 0, i32 0, i32 0), align 8
  %20 = call i32 @clk_set_parent(i32 %18, %struct.clk* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clk_pll2, i32 0, i32 0, i32 0), align 8
  %25 = call i64 @clk_get_rate(%struct.clk* %24)
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %29 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clk_pll2, i32 0, i32 0, i32 0), align 8
  %32 = call i32 @clk_set_parent(i32 %30, %struct.clk* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %79

34:                                               ; preds = %22
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @clk_pll3, i32 0, i32 0, i32 0), align 8
  %37 = call i64 @clk_get_rate(%struct.clk* %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %41 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @clk_pll3, i32 0, i32 0, i32 0), align 8
  %44 = call i32 @clk_set_parent(i32 %42, %struct.clk* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %79

46:                                               ; preds = %34
  %47 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %48 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.clk* @clk_get_parent(i32 %49)
  store %struct.clk* %50, %struct.clk** %10, align 8
  %51 = load %struct.clk*, %struct.clk** %10, align 8
  %52 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clk_pll1, i32 0, i32 0, i32 0), align 8
  %53 = icmp eq %struct.clk* %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %56 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clk_pll2, i32 0, i32 0, i32 0), align 8
  %59 = call i32 @clk_set_parent(i32 %57, %struct.clk* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @BUG_ON(i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clk_pll1, i32 0, i32 0, i32 0), align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @clk_set_rate(%struct.clk* %63, i64 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %67 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk*, %struct.clk** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clk_pll1, i32 0, i32 0, i32 0), align 8
  %70 = call i32 @clk_set_parent(i32 %68, %struct.clk* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %39, %27, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_set_parent(i32, %struct.clk*) #1

declare dso_local %struct.clk* @clk_get_parent(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
