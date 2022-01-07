; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_ceva.c_ceva_ahci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_ceva.c_ceva_ahci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ahci_host_priv = type { %struct.ceva_ahci_priv* }
%struct.ceva_ahci_priv = type { i32, i32*, i32*, i32*, i32*, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ceva,broken-gen2\00", align 1
@CEVA_FLAG_BROKEN_GEN2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ceva,p0-cominit-params\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"ceva,p0-cominit-params property not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ceva,p1-cominit-params\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"ceva,p1-cominit-params property not defined\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ceva,p0-comwake-params\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ceva,p0-comwake-params property not defined\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ceva,p1-comwake-params\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"ceva,p1-comwake-params property not defined\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ceva,p0-burst-params\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"ceva,p0-burst-params property not defined\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"ceva,p1-burst-params\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"ceva,p1-burst-params property not defined\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"ceva,p0-retry-params\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"ceva,p0-retry-params property not defined\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ceva,p1-retry-params\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"ceva,p1-retry-params property not defined\0A\00", align 1
@DEV_DMA_COHERENT = common dso_local global i32 0, align 4
@ahci_ceva_port_info = common dso_local global i32 0, align 4
@ahci_platform_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ceva_ahci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceva_ahci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca %struct.ceva_ahci_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ceva_ahci_priv* @devm_kzalloc(%struct.device* %16, i32 56, i32 %17)
  store %struct.ceva_ahci_priv* %18, %struct.ceva_ahci_priv** %7, align 8
  %19 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %20 = icmp ne %struct.ceva_ahci_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %180

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %27 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %26, i32 0, i32 6
  store %struct.platform_device* %25, %struct.platform_device** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device* %28, i32 0)
  store %struct.ahci_host_priv* %29, %struct.ahci_host_priv** %6, align 8
  %30 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %31 = call i64 @IS_ERR(%struct.ahci_host_priv* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.ahci_host_priv* %34)
  store i32 %35, i32* %2, align 4
  br label %180

36:                                               ; preds = %24
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %38 = call i32 @ahci_platform_enable_resources(%struct.ahci_host_priv* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %180

43:                                               ; preds = %36
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i64 @of_property_read_bool(%struct.device_node* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @CEVA_FLAG_BROKEN_GEN2, align 4
  %49 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %50 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %54 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = call i64 @of_property_read_u8_array(%struct.device_node* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %56, i32 4)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_warn(%struct.device* %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %180

64:                                               ; preds = %51
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %67 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = call i64 @of_property_read_u8_array(%struct.device_node* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %69, i32 4)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_warn(%struct.device* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %180

77:                                               ; preds = %64
  %78 = load %struct.device_node*, %struct.device_node** %4, align 8
  %79 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %80 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i64 @of_property_read_u8_array(%struct.device_node* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32* %82, i32 4)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %180

90:                                               ; preds = %77
  %91 = load %struct.device_node*, %struct.device_node** %4, align 8
  %92 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %93 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i64 @of_property_read_u8_array(%struct.device_node* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %95, i32 4)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = call i32 @dev_warn(%struct.device* %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %180

103:                                              ; preds = %90
  %104 = load %struct.device_node*, %struct.device_node** %4, align 8
  %105 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %106 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i64 @of_property_read_u8_array(%struct.device_node* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %108, i32 4)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @dev_warn(%struct.device* %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %180

116:                                              ; preds = %103
  %117 = load %struct.device_node*, %struct.device_node** %4, align 8
  %118 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %119 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i64 @of_property_read_u8_array(%struct.device_node* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32* %121, i32 4)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.device*, %struct.device** %5, align 8
  %126 = call i32 @dev_warn(%struct.device* %125, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %180

129:                                              ; preds = %116
  %130 = load %struct.device_node*, %struct.device_node** %4, align 8
  %131 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %132 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = call i64 @of_property_read_u16_array(%struct.device_node* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32* %134, i32 2)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_warn(%struct.device* %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %180

142:                                              ; preds = %129
  %143 = load %struct.device_node*, %struct.device_node** %4, align 8
  %144 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %145 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = call i64 @of_property_read_u16_array(%struct.device_node* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32* %147, i32 2)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i32 @dev_warn(%struct.device* %151, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %180

155:                                              ; preds = %142
  %156 = load %struct.device*, %struct.device** %5, align 8
  %157 = call i32 @device_get_dma_attr(%struct.device* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @DEV_DMA_COHERENT, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %163 = getelementptr inbounds %struct.ceva_ahci_priv, %struct.ceva_ahci_priv* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ceva_ahci_priv*, %struct.ceva_ahci_priv** %7, align 8
  %165 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %166 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %165, i32 0, i32 0
  store %struct.ceva_ahci_priv* %164, %struct.ceva_ahci_priv** %166, align 8
  %167 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %168 = call i32 @ahci_ceva_setup(%struct.ahci_host_priv* %167)
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %171 = call i32 @ahci_platform_init_host(%struct.platform_device* %169, %struct.ahci_host_priv* %170, i32* @ahci_ceva_port_info, i32* @ahci_platform_sht)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %155
  br label %176

175:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %180

176:                                              ; preds = %174
  %177 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %178 = call i32 @ahci_platform_disable_resources(%struct.ahci_host_priv* %177)
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %176, %175, %150, %137, %124, %111, %98, %85, %72, %59, %41, %33, %21
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

declare dso_local %struct.ceva_ahci_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.ahci_host_priv* @ahci_platform_get_resources(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @PTR_ERR(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_enable_resources(%struct.ahci_host_priv*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u8_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u16_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @device_get_dma_attr(%struct.device*) #1

declare dso_local i32 @ahci_ceva_setup(%struct.ahci_host_priv*) #1

declare dso_local i32 @ahci_platform_init_host(%struct.platform_device*, %struct.ahci_host_priv*, i32*, i32*) #1

declare dso_local i32 @ahci_platform_disable_resources(%struct.ahci_host_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
