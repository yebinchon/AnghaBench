; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_clk_register_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_clk_register_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_fixed_factor = type { i64, i32, i32, i32, i32 }
%struct.clk_onecell_data = type { %struct.clk** }
%struct.clk = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to register clk %s: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_clk_register_factors(%struct.mtk_fixed_factor* %0, i32 %1, %struct.clk_onecell_data* %2) #0 {
  %4 = alloca %struct.mtk_fixed_factor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_onecell_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.mtk_fixed_factor*, align 8
  store %struct.mtk_fixed_factor* %0, %struct.mtk_fixed_factor** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.clk_onecell_data* %2, %struct.clk_onecell_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %71, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %15, i64 %17
  store %struct.mtk_fixed_factor* %18, %struct.mtk_fixed_factor** %9, align 8
  %19 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %20 = icmp ne %struct.clk_onecell_data* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %23 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %22, i32 0, i32 0
  %24 = load %struct.clk**, %struct.clk*** %23, align 8
  %25 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %26 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.clk*, %struct.clk** %24, i64 %27
  %29 = load %struct.clk*, %struct.clk** %28, align 8
  %30 = call i32 @IS_ERR_OR_NULL(%struct.clk* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %71

33:                                               ; preds = %21, %14
  %34 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %35 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %38 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %41 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %42 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %45 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.clk* @clk_register_fixed_factor(i32* null, i32 %36, i32 %39, i32 %40, i32 %43, i32 %46)
  store %struct.clk* %47, %struct.clk** %8, align 8
  %48 = load %struct.clk*, %struct.clk** %8, align 8
  %49 = call i64 @IS_ERR(%struct.clk* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %53 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.clk*, %struct.clk** %8, align 8
  %56 = call i32 @PTR_ERR(%struct.clk* %55)
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %56)
  br label %71

58:                                               ; preds = %33
  %59 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %60 = icmp ne %struct.clk_onecell_data* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.clk*, %struct.clk** %8, align 8
  %63 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %6, align 8
  %64 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %63, i32 0, i32 0
  %65 = load %struct.clk**, %struct.clk*** %64, align 8
  %66 = load %struct.mtk_fixed_factor*, %struct.mtk_fixed_factor** %9, align 8
  %67 = getelementptr inbounds %struct.mtk_fixed_factor, %struct.mtk_fixed_factor* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.clk*, %struct.clk** %65, i64 %68
  store %struct.clk* %62, %struct.clk** %69, align 8
  br label %70

70:                                               ; preds = %61, %58
  br label %71

71:                                               ; preds = %70, %51, %32
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %10

74:                                               ; preds = %10
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local %struct.clk* @clk_register_fixed_factor(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
