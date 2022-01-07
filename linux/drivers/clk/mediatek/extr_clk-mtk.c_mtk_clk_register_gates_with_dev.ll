; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_clk_register_gates_with_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-mtk.c_mtk_clk_register_gates_with_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.mtk_gate = type { i64, %struct.device_node*, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.clk_onecell_data = type { %struct.regmap** }
%struct.regmap = type { i32 }
%struct.device = type { i32 }
%struct.clk = type opaque

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register clk %s: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_clk_register_gates_with_dev(%struct.device_node* %0, %struct.mtk_gate* %1, i32 %2, %struct.clk_onecell_data* %3, %struct.device* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mtk_gate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_onecell_data*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca %struct.mtk_gate*, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store %struct.mtk_gate* %1, %struct.mtk_gate** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.clk_onecell_data* %3, %struct.clk_onecell_data** %10, align 8
  store %struct.device* %4, %struct.device** %11, align 8
  %16 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %10, align 8
  %17 = icmp ne %struct.clk_onecell_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %116

21:                                               ; preds = %5
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %22)
  store %struct.regmap* %23, %struct.regmap** %14, align 8
  %24 = load %struct.regmap*, %struct.regmap** %14, align 8
  %25 = call i64 @IS_ERR(%struct.regmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = load %struct.regmap*, %struct.regmap** %14, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %28, i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %14, align 8
  %33 = call i32 @PTR_ERR(%struct.regmap* %32)
  store i32 %33, i32* %6, align 4
  br label %116

34:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %112, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %115

39:                                               ; preds = %35
  %40 = load %struct.mtk_gate*, %struct.mtk_gate** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %40, i64 %42
  store %struct.mtk_gate* %43, %struct.mtk_gate** %15, align 8
  %44 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %10, align 8
  %45 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %44, i32 0, i32 0
  %46 = load %struct.regmap**, %struct.regmap*** %45, align 8
  %47 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %48 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.regmap*, %struct.regmap** %46, i64 %49
  %51 = load %struct.regmap*, %struct.regmap** %50, align 8
  %52 = call i32 @IS_ERR_OR_NULL(%struct.regmap* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  br label %112

55:                                               ; preds = %39
  %56 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %57 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %56, i32 0, i32 1
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  %59 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %60 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.regmap*, %struct.regmap** %14, align 8
  %63 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %64 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %63, i32 0, i32 5
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %69 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %74 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %79 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %82 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %85 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.device*, %struct.device** %11, align 8
  %88 = call %struct.regmap* @mtk_clk_register_gate(%struct.device_node* %58, i32 %61, %struct.regmap* %62, i32 %67, i32 %72, i32 %77, i32 %80, i32 %83, i32 %86, %struct.device* %87)
  %89 = bitcast %struct.regmap* %88 to %struct.clk*
  store %struct.clk* %89, %struct.clk** %13, align 8
  %90 = load %struct.clk*, %struct.clk** %13, align 8
  %91 = bitcast %struct.clk* %90 to %struct.regmap*
  %92 = call i64 @IS_ERR(%struct.regmap* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %55
  %95 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %96 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %95, i32 0, i32 1
  %97 = load %struct.device_node*, %struct.device_node** %96, align 8
  %98 = load %struct.clk*, %struct.clk** %13, align 8
  %99 = bitcast %struct.clk* %98 to %struct.regmap*
  %100 = call i32 @PTR_ERR(%struct.regmap* %99)
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %97, i32 %100)
  br label %112

102:                                              ; preds = %55
  %103 = load %struct.clk*, %struct.clk** %13, align 8
  %104 = bitcast %struct.clk* %103 to %struct.regmap*
  %105 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %10, align 8
  %106 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %105, i32 0, i32 0
  %107 = load %struct.regmap**, %struct.regmap*** %106, align 8
  %108 = load %struct.mtk_gate*, %struct.mtk_gate** %15, align 8
  %109 = getelementptr inbounds %struct.mtk_gate, %struct.mtk_gate* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.regmap*, %struct.regmap** %107, i64 %110
  store %struct.regmap* %104, %struct.regmap** %111, align 8
  br label %112

112:                                              ; preds = %102, %94, %54
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %35

115:                                              ; preds = %35
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %27, %18
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.regmap*) #1

declare dso_local %struct.regmap* @mtk_clk_register_gate(%struct.device_node*, i32, %struct.regmap*, i32, i32, i32, i32, i32, i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
