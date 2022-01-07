; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_register_muxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mux.c_mtk_clk_register_muxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mux = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_onecell_data = type { %struct.regmap** }
%struct.regmap = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [34 x i8] c"Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register clk %s: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_clk_register_muxes(%struct.mtk_mux* %0, i32 %1, %struct.device_node* %2, i32* %3, %struct.clk_onecell_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_mux*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.clk_onecell_data*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca %struct.clk*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mtk_mux*, align 8
  store %struct.mtk_mux* %0, %struct.mtk_mux** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.device_node* %2, %struct.device_node** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.clk_onecell_data* %4, %struct.clk_onecell_data** %11, align 8
  %16 = load %struct.device_node*, %struct.device_node** %9, align 8
  %17 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %16)
  store %struct.regmap* %17, %struct.regmap** %12, align 8
  %18 = load %struct.regmap*, %struct.regmap** %12, align 8
  %19 = call i64 @IS_ERR(%struct.regmap* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.device_node*, %struct.device_node** %9, align 8
  %23 = load %struct.regmap*, %struct.regmap** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.regmap* %23)
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %22, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.regmap* %26)
  store i32 %27, i32* %6, align 4
  br label %81

28:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %77, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load %struct.mtk_mux*, %struct.mtk_mux** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %34, i64 %36
  store %struct.mtk_mux* %37, %struct.mtk_mux** %15, align 8
  %38 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %11, align 8
  %39 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %38, i32 0, i32 0
  %40 = load %struct.regmap**, %struct.regmap*** %39, align 8
  %41 = load %struct.mtk_mux*, %struct.mtk_mux** %15, align 8
  %42 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.regmap*, %struct.regmap** %40, i64 %43
  %45 = load %struct.regmap*, %struct.regmap** %44, align 8
  %46 = call i64 @IS_ERR_OR_NULL(%struct.regmap* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %33
  %49 = load %struct.mtk_mux*, %struct.mtk_mux** %15, align 8
  %50 = load %struct.regmap*, %struct.regmap** %12, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call %struct.regmap* @mtk_clk_register_mux(%struct.mtk_mux* %49, %struct.regmap* %50, i32* %51)
  %53 = bitcast %struct.regmap* %52 to %struct.clk*
  store %struct.clk* %53, %struct.clk** %13, align 8
  %54 = load %struct.clk*, %struct.clk** %13, align 8
  %55 = bitcast %struct.clk* %54 to %struct.regmap*
  %56 = call i64 @IS_ERR(%struct.regmap* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.mtk_mux*, %struct.mtk_mux** %15, align 8
  %60 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %59, i32 0, i32 1
  %61 = load %struct.device_node*, %struct.device_node** %60, align 8
  %62 = load %struct.clk*, %struct.clk** %13, align 8
  %63 = bitcast %struct.clk* %62 to %struct.regmap*
  %64 = call i32 @PTR_ERR(%struct.regmap* %63)
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %61, i32 %64)
  br label %77

66:                                               ; preds = %48
  %67 = load %struct.clk*, %struct.clk** %13, align 8
  %68 = bitcast %struct.clk* %67 to %struct.regmap*
  %69 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %11, align 8
  %70 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %69, i32 0, i32 0
  %71 = load %struct.regmap**, %struct.regmap*** %70, align 8
  %72 = load %struct.mtk_mux*, %struct.mtk_mux** %15, align 8
  %73 = getelementptr inbounds %struct.mtk_mux, %struct.mtk_mux* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.regmap*, %struct.regmap** %71, i64 %74
  store %struct.regmap* %68, %struct.regmap** %75, align 8
  br label %76

76:                                               ; preds = %66, %33
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %29

80:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.regmap*) #1

declare dso_local %struct.regmap* @mtk_clk_register_mux(%struct.mtk_mux*, %struct.regmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
