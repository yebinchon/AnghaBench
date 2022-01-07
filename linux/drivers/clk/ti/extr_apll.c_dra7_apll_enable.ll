; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_dra7_apll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_dra7_apll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@APLL_FORCE_LOCK = common dso_local global i32 0, align 4
@MAX_APLL_WAIT_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"clock: %s failed transition to '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bypassed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"clock: %s transition to '%s' in %d loops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @dra7_apll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7_apll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw_omap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpll_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %11)
  store %struct.clk_hw_omap* %12, %struct.clk_hw_omap** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %13 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %14 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %13, i32 0, i32 1
  %15 = load %struct.dpll_data*, %struct.dpll_data** %14, align 8
  store %struct.dpll_data* %15, %struct.dpll_data** %7, align 8
  %16 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %17 = icmp ne %struct.dpll_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %127

21:                                               ; preds = %1
  %22 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %23 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %22, i32 0, i32 0
  %24 = call i8* @clk_hw_get_name(i32* %23)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %26 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__ffs(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32*)*, i32 (i32*)** %32, align 8
  %34 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 2
  %36 = call i32 %33(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %39 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %127

46:                                               ; preds = %21
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (i32*)*, i32 (i32*)** %48, align 8
  %50 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %51 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %50, i32 0, i32 3
  %52 = call i32 %49(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %54 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @APLL_FORCE_LOCK, align 4
  %60 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %61 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @__ffs(i32 %62)
  %64 = shl i32 %59, %63
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (i32, i32*)*, i32 (i32, i32*)** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %72 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %71, i32 0, i32 3
  %73 = call i32 %69(i32 %70, i32* %72)
  %74 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %75 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @__ffs(i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %46, %100
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32 (i32*)*, i32 (i32*)** %82, align 8
  %84 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %85 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %84, i32 0, i32 2
  %86 = call i32 %83(i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.dpll_data*, %struct.dpll_data** %7, align 8
  %89 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %87, %90
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %104

95:                                               ; preds = %80
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MAX_APLL_WAIT_TRIES, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %104

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = call i32 @udelay(i32 1)
  br label %80

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MAX_APLL_WAIT_TRIES, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %114 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %109, i8* %113)
  %115 = load i32, i32* @EBUSY, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %125

117:                                              ; preds = %104
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %118, i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %108
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %44, %18
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_warn(i8*, i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
