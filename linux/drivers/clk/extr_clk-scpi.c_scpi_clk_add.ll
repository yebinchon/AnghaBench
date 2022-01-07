; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_clk_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scpi.c_scpi_clk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type opaque
%struct.of_device_id = type { i32 }
%struct.scpi_clk_data = type { i32, %struct.scpi_clk** }
%struct.scpi_clk = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%pOFn: invalid clock output count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock name @ %pOFn\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"invalid clock index @ %pOFn\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to register clock '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Registered clock '%s'\0A\00", align 1
@scpi_of_clk_src_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.of_device_id*)* @scpi_clk_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_clk_add(%struct.device* %0, %struct.device_node* %1, %struct.of_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scpi_clk_data*, align 8
  %12 = alloca %struct.scpi_clk*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.of_device_id* %2, %struct.of_device_id** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = bitcast %struct.device_node* %15 to i8*
  %17 = call i32 @of_property_count_strings(i8* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = bitcast %struct.device_node* %22 to i8*
  %24 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %129

27:                                               ; preds = %3
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.scpi_clk_data* @devm_kmalloc(%struct.device* %28, i32 16, i32 %29)
  store %struct.scpi_clk_data* %30, %struct.scpi_clk_data** %11, align 8
  %31 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %32 = icmp ne %struct.scpi_clk_data* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %129

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %39 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.scpi_clk** @devm_kcalloc(%struct.device* %40, i32 %41, i32 8, i32 %42)
  %44 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %45 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %44, i32 0, i32 1
  store %struct.scpi_clk** %43, %struct.scpi_clk*** %45, align 8
  %46 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %47 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %46, i32 0, i32 1
  %48 = load %struct.scpi_clk**, %struct.scpi_clk*** %47, align 8
  %49 = icmp ne %struct.scpi_clk** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %129

53:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %120, %53
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %54
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.scpi_clk* @devm_kzalloc(%struct.device* %59, i32 4, i32 %60)
  store %struct.scpi_clk* %61, %struct.scpi_clk** %12, align 8
  %62 = load %struct.scpi_clk*, %struct.scpi_clk** %12, align 8
  %63 = icmp ne %struct.scpi_clk* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %129

67:                                               ; preds = %58
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = bitcast %struct.device_node* %68 to i8*
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @of_property_read_string_index(i8* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70, i8** %13)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = bitcast %struct.device_node* %75 to i8*
  %77 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %129

80:                                               ; preds = %67
  %81 = load %struct.device_node*, %struct.device_node** %6, align 8
  %82 = bitcast %struct.device_node* %81 to i8*
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @of_property_read_u32_index(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32* %14)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = bitcast %struct.device_node* %88 to i8*
  %90 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %129

93:                                               ; preds = %80
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.scpi_clk*, %struct.scpi_clk** %12, align 8
  %96 = getelementptr inbounds %struct.scpi_clk, %struct.scpi_clk* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %99 = load %struct.scpi_clk*, %struct.scpi_clk** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @scpi_clk_ops_init(%struct.device* %97, %struct.of_device_id* %98, %struct.scpi_clk* %99, i8* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %129

109:                                              ; preds = %93
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @dev_dbg(%struct.device* %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  %113 = load %struct.scpi_clk*, %struct.scpi_clk** %12, align 8
  %114 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %115 = getelementptr inbounds %struct.scpi_clk_data, %struct.scpi_clk_data* %114, i32 0, i32 1
  %116 = load %struct.scpi_clk**, %struct.scpi_clk*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.scpi_clk*, %struct.scpi_clk** %116, i64 %118
  store %struct.scpi_clk* %113, %struct.scpi_clk** %119, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %54

123:                                              ; preds = %54
  %124 = load %struct.device_node*, %struct.device_node** %6, align 8
  %125 = bitcast %struct.device_node* %124 to i8*
  %126 = load i32, i32* @scpi_of_clk_src_get, align 4
  %127 = load %struct.scpi_clk_data*, %struct.scpi_clk_data** %11, align 8
  %128 = call i32 @of_clk_add_hw_provider(i8* %125, i32 %126, %struct.scpi_clk_data* %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %123, %104, %86, %73, %64, %50, %33, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @of_property_count_strings(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local %struct.scpi_clk_data* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.scpi_clk** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.scpi_clk* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_property_read_string_index(i8*, i8*, i32, i8**) #1

declare dso_local i64 @of_property_read_u32_index(i8*, i8*, i32, i32*) #1

declare dso_local i32 @scpi_clk_ops_init(%struct.device*, %struct.of_device_id*, %struct.scpi_clk*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @of_clk_add_hw_provider(i8*, i32, %struct.scpi_clk_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
