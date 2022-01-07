; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-cpumux.c_mtk_clk_register_cpumuxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-cpumux.c_mtk_clk_register_cpumuxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.mtk_composite = type { i64, %struct.device_node* }
%struct.clk_onecell_data = type { %struct.regmap** }
%struct.regmap = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [34 x i8] c"Cannot find regmap for %pOF: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register clk %s: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_clk_register_cpumuxes(%struct.device_node* %0, %struct.mtk_composite* %1, i32 %2, %struct.clk_onecell_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.mtk_composite*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_onecell_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca %struct.mtk_composite*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.mtk_composite* %1, %struct.mtk_composite** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.clk_onecell_data* %3, %struct.clk_onecell_data** %9, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %14)
  store %struct.regmap* %15, %struct.regmap** %12, align 8
  %16 = load %struct.regmap*, %struct.regmap** %12, align 8
  %17 = call i64 @IS_ERR(%struct.regmap* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = load %struct.regmap*, %struct.regmap** %12, align 8
  %22 = call i32 @PTR_ERR(%struct.regmap* %21)
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.device_node* %20, i32 %22)
  %24 = load %struct.regmap*, %struct.regmap** %12, align 8
  %25 = call i32 @PTR_ERR(%struct.regmap* %24)
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load %struct.mtk_composite*, %struct.mtk_composite** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %32, i64 %34
  store %struct.mtk_composite* %35, %struct.mtk_composite** %13, align 8
  %36 = load %struct.mtk_composite*, %struct.mtk_composite** %13, align 8
  %37 = load %struct.regmap*, %struct.regmap** %12, align 8
  %38 = call %struct.regmap* @mtk_clk_register_cpumux(%struct.mtk_composite* %36, %struct.regmap* %37)
  %39 = bitcast %struct.regmap* %38 to %struct.clk*
  store %struct.clk* %39, %struct.clk** %11, align 8
  %40 = load %struct.clk*, %struct.clk** %11, align 8
  %41 = bitcast %struct.clk* %40 to %struct.regmap*
  %42 = call i64 @IS_ERR(%struct.regmap* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.mtk_composite*, %struct.mtk_composite** %13, align 8
  %46 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %45, i32 0, i32 1
  %47 = load %struct.device_node*, %struct.device_node** %46, align 8
  %48 = load %struct.clk*, %struct.clk** %11, align 8
  %49 = bitcast %struct.clk* %48 to %struct.regmap*
  %50 = call i32 @PTR_ERR(%struct.regmap* %49)
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %47, i32 %50)
  br label %62

52:                                               ; preds = %31
  %53 = load %struct.clk*, %struct.clk** %11, align 8
  %54 = bitcast %struct.clk* %53 to %struct.regmap*
  %55 = load %struct.clk_onecell_data*, %struct.clk_onecell_data** %9, align 8
  %56 = getelementptr inbounds %struct.clk_onecell_data, %struct.clk_onecell_data* %55, i32 0, i32 0
  %57 = load %struct.regmap**, %struct.regmap*** %56, align 8
  %58 = load %struct.mtk_composite*, %struct.mtk_composite** %13, align 8
  %59 = getelementptr inbounds %struct.mtk_composite, %struct.mtk_composite* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.regmap*, %struct.regmap** %57, i64 %60
  store %struct.regmap* %54, %struct.regmap** %61, align 8
  br label %62

62:                                               ; preds = %52, %44
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %27

65:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %19
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @mtk_clk_register_cpumux(%struct.mtk_composite*, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
