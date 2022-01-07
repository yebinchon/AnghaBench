; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clocks_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clocks_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_device = type { %struct.scmi_handle*, %struct.device }
%struct.scmi_handle = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scmi_handle*)*, %struct.TYPE_4__* (%struct.scmi_handle*, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_hw = type { i32 }
%struct.clk_hw_onecell_data = type { i32, %struct.clk_hw** }
%struct.scmi_clk = type { i32, %struct.clk_hw, %struct.TYPE_4__*, %struct.scmi_handle* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%pOFn: invalid clock output count\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid clock info for idx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Registered clock:%s\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_device*)* @scmi_clocks_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clocks_probe(%struct.scmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_hw**, align 8
  %8 = alloca %struct.clk_hw_onecell_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.scmi_handle*, align 8
  %12 = alloca %struct.scmi_clk*, align 8
  store %struct.scmi_device* %0, %struct.scmi_device** %3, align 8
  %13 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %13, i32 0, i32 1
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.scmi_device*, %struct.scmi_device** %3, align 8
  %19 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %18, i32 0, i32 0
  %20 = load %struct.scmi_handle*, %struct.scmi_handle** %19, align 8
  store %struct.scmi_handle* %20, %struct.scmi_handle** %11, align 8
  %21 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %22 = icmp ne %struct.scmi_handle* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %25 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %148

31:                                               ; preds = %23
  %32 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %33 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.scmi_handle*)*, i32 (%struct.scmi_handle*)** %35, align 8
  %37 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %38 = call i32 %36(%struct.scmi_handle* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load %struct.device_node*, %struct.device_node** %10, align 8
  %44 = ptrtoint %struct.device_node* %43 to i32
  %45 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %148

48:                                               ; preds = %31
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %51 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @struct_size(%struct.clk_hw_onecell_data* %50, %struct.clk_hw** %51, i32 %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @devm_kzalloc(%struct.device* %49, i32 %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.clk_hw_onecell_data*
  store %struct.clk_hw_onecell_data* %56, %struct.clk_hw_onecell_data** %8, align 8
  %57 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %58 = icmp ne %struct.clk_hw_onecell_data* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %148

62:                                               ; preds = %48
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %65 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %67 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %66, i32 0, i32 1
  %68 = load %struct.clk_hw**, %struct.clk_hw*** %67, align 8
  store %struct.clk_hw** %68, %struct.clk_hw*** %7, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %140, %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %143

73:                                               ; preds = %69
  %74 = load %struct.device*, %struct.device** %9, align 8
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @devm_kzalloc(%struct.device* %74, i32 24, i32 %75)
  %77 = bitcast i8* %76 to %struct.scmi_clk*
  store %struct.scmi_clk* %77, %struct.scmi_clk** %12, align 8
  %78 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %79 = icmp ne %struct.scmi_clk* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %148

83:                                               ; preds = %73
  %84 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %85 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__* (%struct.scmi_handle*, i32)*, %struct.TYPE_4__* (%struct.scmi_handle*, i32)** %87, align 8
  %89 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call %struct.TYPE_4__* %88(%struct.scmi_handle* %89, i32 %90)
  %92 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %93 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %92, i32 0, i32 2
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %93, align 8
  %94 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %95 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %83
  %99 = load %struct.device*, %struct.device** %9, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %140

102:                                              ; preds = %83
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %105 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.scmi_handle*, %struct.scmi_handle** %11, align 8
  %107 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %108 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %107, i32 0, i32 3
  store %struct.scmi_handle* %106, %struct.scmi_handle** %108, align 8
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %111 = call i32 @scmi_clk_ops_init(%struct.device* %109, %struct.scmi_clk* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.device*, %struct.device** %9, align 8
  %119 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %120 = call i32 @devm_kfree(%struct.device* %118, %struct.scmi_clk* %119)
  %121 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %121, i64 %123
  store %struct.clk_hw* null, %struct.clk_hw** %124, align 8
  br label %139

125:                                              ; preds = %102
  %126 = load %struct.device*, %struct.device** %9, align 8
  %127 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %128 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dev_dbg(%struct.device* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load %struct.scmi_clk*, %struct.scmi_clk** %12, align 8
  %134 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %133, i32 0, i32 1
  %135 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %135, i64 %137
  store %struct.clk_hw* %134, %struct.clk_hw** %138, align 8
  br label %139

139:                                              ; preds = %125, %114
  br label %140

140:                                              ; preds = %139, %98
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %69

143:                                              ; preds = %69
  %144 = load %struct.device*, %struct.device** %9, align 8
  %145 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %146 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %8, align 8
  %147 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %144, i32 %145, %struct.clk_hw_onecell_data* %146)
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %80, %59, %41, %28
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.clk_hw_onecell_data*, %struct.clk_hw**, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @scmi_clk_ops_init(%struct.device*, %struct.scmi_clk*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.scmi_clk*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.clk_hw_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
