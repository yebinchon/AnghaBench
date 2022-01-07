; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c__qcom_cc_register_board_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c__qcom_cc_register_board_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.clk_fixed_factor = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32*, i64 }
%struct.clk_fixed_rate = type { i64, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [8 x i8] c"/clocks\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clk_fixed_rate_ops = common dso_local global i32 0, align 4
@clk_fixed_factor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*, i64, i32)* @_qcom_cc_register_board_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qcom_cc_register_board_clk(%struct.device* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.clk_fixed_factor*, align 8
  %15 = alloca %struct.clk_fixed_rate*, align 8
  %16 = alloca %struct.clk_init_data, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.device_node* null, %struct.device_node** %12, align 8
  %18 = bitcast %struct.clk_init_data* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 40, i1 false)
  %19 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %13, align 8
  %20 = load %struct.device_node*, %struct.device_node** %13, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.device_node*, %struct.device_node** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %23, i8* %24)
  store %struct.device_node* %25, %struct.device_node** %12, align 8
  %26 = load %struct.device_node*, %struct.device_node** %13, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  br label %28

28:                                               ; preds = %22, %5
  %29 = load %struct.device_node*, %struct.device_node** %12, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %60, label %31

31:                                               ; preds = %28
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @devm_kzalloc(%struct.device* %32, i32 16, i32 %33)
  %35 = bitcast i8* %34 to %struct.clk_fixed_rate*
  store %struct.clk_fixed_rate* %35, %struct.clk_fixed_rate** %15, align 8
  %36 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %15, align 8
  %37 = icmp ne %struct.clk_fixed_rate* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %99

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %15, align 8
  %44 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %15, align 8
  %46 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i32* @clk_fixed_rate_ops, i32** %50, align 8
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %15, align 8
  %53 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %52, i32 0, i32 1
  %54 = call i32 @devm_clk_hw_register(%struct.device* %51, %struct.TYPE_2__* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %6, align 4
  br label %99

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59, %28
  %61 = load %struct.device_node*, %struct.device_node** %12, align 8
  %62 = call i32 @of_node_put(%struct.device_node* %61)
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @devm_kzalloc(%struct.device* %66, i32 16, i32 %67)
  %69 = bitcast i8* %68 to %struct.clk_fixed_factor*
  store %struct.clk_fixed_factor* %69, %struct.clk_fixed_factor** %14, align 8
  %70 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %14, align 8
  %71 = icmp ne %struct.clk_fixed_factor* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %99

75:                                               ; preds = %65
  %76 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %14, align 8
  %77 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %14, align 8
  %79 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %14, align 8
  %81 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %82, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 1
  store i8** %8, i8*** %85, align 8
  %86 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i32* @clk_fixed_factor_ops, i32** %88, align 8
  %89 = load %struct.device*, %struct.device** %7, align 8
  %90 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %14, align 8
  %91 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %90, i32 0, i32 2
  %92 = call i32 @devm_clk_hw_register(%struct.device* %89, %struct.TYPE_2__* %91)
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %6, align 4
  br label %99

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %60
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %95, %72, %57, %38
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #2

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
