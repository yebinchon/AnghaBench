; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-master.c_clk_master_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-master.c_clk_master_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_master = type { %struct.clk_master_layout*, i32, %struct.clk_master_characteristics* }
%struct.clk_master_layout = type { i32, i32, i32 }
%struct.clk_master_characteristics = type { i64*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@MASTER_PRES_MASK = common dso_local global i32 0, align 4
@MASTER_DIV_SHIFT = common dso_local global i32 0, align 4
@MASTER_DIV_MASK = common dso_local global i32 0, align 4
@MASTER_PRES_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"master clk is underclocked\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"master clk is overclocked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_master_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_master_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_master*, align 8
  %9 = alloca %struct.clk_master_layout*, align 8
  %10 = alloca %struct.clk_master_characteristics*, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.clk_master* @to_clk_master(%struct.clk_hw* %13)
  store %struct.clk_master* %14, %struct.clk_master** %8, align 8
  %15 = load %struct.clk_master*, %struct.clk_master** %8, align 8
  %16 = getelementptr inbounds %struct.clk_master, %struct.clk_master* %15, i32 0, i32 0
  %17 = load %struct.clk_master_layout*, %struct.clk_master_layout** %16, align 8
  store %struct.clk_master_layout* %17, %struct.clk_master_layout** %9, align 8
  %18 = load %struct.clk_master*, %struct.clk_master** %8, align 8
  %19 = getelementptr inbounds %struct.clk_master, %struct.clk_master* %18, i32 0, i32 2
  %20 = load %struct.clk_master_characteristics*, %struct.clk_master_characteristics** %19, align 8
  store %struct.clk_master_characteristics* %20, %struct.clk_master_characteristics** %10, align 8
  %21 = load %struct.clk_master*, %struct.clk_master** %8, align 8
  %22 = getelementptr inbounds %struct.clk_master, %struct.clk_master* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.clk_master*, %struct.clk_master** %8, align 8
  %25 = getelementptr inbounds %struct.clk_master, %struct.clk_master* %24, i32 0, i32 0
  %26 = load %struct.clk_master_layout*, %struct.clk_master_layout** %25, align 8
  %27 = getelementptr inbounds %struct.clk_master_layout, %struct.clk_master_layout* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %23, i32 %28, i32* %11)
  %30 = load %struct.clk_master_layout*, %struct.clk_master_layout** %9, align 8
  %31 = getelementptr inbounds %struct.clk_master_layout, %struct.clk_master_layout* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.clk_master_layout*, %struct.clk_master_layout** %9, align 8
  %37 = getelementptr inbounds %struct.clk_master_layout, %struct.clk_master_layout* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = lshr i32 %35, %38
  %40 = load i32, i32* @MASTER_PRES_MASK, align 4
  %41 = and i32 %39, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @MASTER_DIV_SHIFT, align 4
  %45 = lshr i32 %43, %44
  %46 = load i32, i32* @MASTER_DIV_MASK, align 4
  %47 = and i32 %45, %46
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  %49 = load %struct.clk_master_characteristics*, %struct.clk_master_characteristics** %10, align 8
  %50 = getelementptr inbounds %struct.clk_master_characteristics, %struct.clk_master_characteristics* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MASTER_PRES_MAX, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = udiv i64 %58, 3
  store i64 %59, i64* %7, align 8
  br label %64

60:                                               ; preds = %53, %2
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = lshr i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.clk_master_characteristics*, %struct.clk_master_characteristics** %10, align 8
  %66 = getelementptr inbounds %struct.clk_master_characteristics, %struct.clk_master_characteristics* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = udiv i64 %71, %70
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.clk_master_characteristics*, %struct.clk_master_characteristics** %10, align 8
  %75 = getelementptr inbounds %struct.clk_master_characteristics, %struct.clk_master_characteristics* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %73, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %91

81:                                               ; preds = %64
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.clk_master_characteristics*, %struct.clk_master_characteristics** %10, align 8
  %84 = getelementptr inbounds %struct.clk_master_characteristics, %struct.clk_master_characteristics* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %82, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %81
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i64, i64* %7, align 8
  ret i64 %92
}

declare dso_local %struct.clk_master* @to_clk_master(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
