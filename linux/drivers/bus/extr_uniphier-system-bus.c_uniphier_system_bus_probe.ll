; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_uniphier-system-bus.c_uniphier_system_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_system_bus_priv = type { %struct.device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get #address-cells\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"#address-cells must be 2\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get #size-cells\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"#size-cells must be 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get ranges property\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_system_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_system_bus_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_system_bus_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.uniphier_system_bus_priv* @devm_kzalloc(%struct.device* %18, i32 16, i32 %19)
  store %struct.uniphier_system_bus_priv* %20, %struct.uniphier_system_bus_priv** %5, align 8
  %21 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %22 = icmp ne %struct.uniphier_system_bus_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %173

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %27, i32 0)
  %29 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %30 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %38 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %173

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %44 = getelementptr inbounds %struct.uniphier_system_bus_priv, %struct.uniphier_system_bus_priv* %43, i32 0, i32 0
  store %struct.device* %42, %struct.device** %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @of_n_addr_cells(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @of_property_read_u32(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %2, align 4
  br label %173

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %173

67:                                               ; preds = %59
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @of_property_read_u32(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %2, align 4
  br label %173

78:                                               ; preds = %67
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %173

86:                                               ; preds = %78
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = getelementptr inbounds %struct.device, %struct.device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @of_get_property(i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  store i32* %90, i32** %6, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %173

98:                                               ; preds = %86
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = udiv i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %149, %98
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %153

109:                                              ; preds = %105
  %110 = load i32*, i32** %6, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %6, align 8
  %112 = ptrtoint i32* %110 to i32
  %113 = call i32 @be32_to_cpup(i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  %116 = ptrtoint i32* %114 to i32
  %117 = call i32 @be32_to_cpup(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = getelementptr inbounds %struct.device, %struct.device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = call i64 @of_translate_address(i32 %120, i32* %121)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @OF_BAD_ADDR, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %109
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %173

129:                                              ; preds = %109
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %6, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %6, align 8
  %136 = ptrtoint i32* %134 to i32
  %137 = call i32 @be32_to_cpup(i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @uniphier_system_bus_add_bank(%struct.uniphier_system_bus_priv* %138, i32 %139, i32 %140, i64 %141, i32 %142)
  store i32 %143, i32* %15, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %2, align 4
  br label %173

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %13, align 4
  br label %105

153:                                              ; preds = %105
  %154 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %155 = call i32 @uniphier_system_bus_check_overlap(%struct.uniphier_system_bus_priv* %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %2, align 4
  br label %173

160:                                              ; preds = %153
  %161 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %162 = call i32 @uniphier_system_bus_check_boot_swap(%struct.uniphier_system_bus_priv* %161)
  %163 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %164 = call i32 @uniphier_system_bus_set_reg(%struct.uniphier_system_bus_priv* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load %struct.uniphier_system_bus_priv*, %struct.uniphier_system_bus_priv** %5, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %165, %struct.uniphier_system_bus_priv* %166)
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = getelementptr inbounds %struct.device, %struct.device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = call i32 @of_platform_default_populate(i32 %170, i32* null, %struct.device* %171)
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %160, %158, %146, %126, %93, %81, %74, %62, %55, %36, %23
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.uniphier_system_bus_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_n_addr_cells(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i64 @of_translate_address(i32, i32*) #1

declare dso_local i32 @uniphier_system_bus_add_bank(%struct.uniphier_system_bus_priv*, i32, i32, i64, i32) #1

declare dso_local i32 @uniphier_system_bus_check_overlap(%struct.uniphier_system_bus_priv*) #1

declare dso_local i32 @uniphier_system_bus_check_boot_swap(%struct.uniphier_system_bus_priv*) #1

declare dso_local i32 @uniphier_system_bus_set_reg(%struct.uniphier_system_bus_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_system_bus_priv*) #1

declare dso_local i32 @of_platform_default_populate(i32, i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
