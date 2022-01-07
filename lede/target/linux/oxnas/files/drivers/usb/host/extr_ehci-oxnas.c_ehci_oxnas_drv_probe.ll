; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_ehci_oxnas_drv_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_ehci_oxnas_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.usb_hcd = type { i32, %struct.reset_control*, i32, i32 }
%struct.reset_control = type { i32 }
%struct.ehci_hcd = type { %struct.reset_control*, i64 }
%struct.resource = type { i32 }
%struct.oxnas_hcd = type { %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, i8*, %struct.reset_control*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@oxnas_hc_driver = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"devm_ioremap_resource failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"oxsemi,ehci_use_pllb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"oxsemi,ehci_use_phya\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"oxsemi,sys-ctrl\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"refsrc\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"phyref\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"phya\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"phyb\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"irq_of_parse_and_map failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_oxnas_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_oxnas_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.ehci_hcd*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca %struct.oxnas_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.reset_control*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = call i64 (...) @usb_disabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %284

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i64* %30, i64** %33, align 8
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = call i64 @DMA_BIT_MASK(i32 32)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_name(%struct.TYPE_6__* %49)
  %51 = call %struct.usb_hcd* @usb_create_hcd(i32* @oxnas_hc_driver, %struct.TYPE_6__* %47, i32 %50)
  store %struct.usb_hcd* %51, %struct.usb_hcd** %5, align 8
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %53 = icmp ne %struct.usb_hcd* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %284

57:                                               ; preds = %45
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i32 @of_address_to_resource(%struct.device_node* %58, i32 0, %struct.resource* %7)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %280

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = call i32 @resource_size(%struct.resource* %7)
  %69 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %70 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_6__* %72, %struct.resource* %7)
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %74, i32 0, i32 1
  store %struct.reset_control* %73, %struct.reset_control** %75, align 8
  %76 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %77 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %76, i32 0, i32 1
  %78 = load %struct.reset_control*, %struct.reset_control** %77, align 8
  %79 = call i64 @IS_ERR(%struct.reset_control* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %63
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @dev_err(%struct.TYPE_6__* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %86 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %85, i32 0, i32 1
  %87 = load %struct.reset_control*, %struct.reset_control** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.reset_control* %87)
  store i32 %88, i32* %10, align 4
  br label %279

89:                                               ; preds = %63
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %91 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %90)
  %92 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.oxnas_hcd*
  store %struct.oxnas_hcd* %94, %struct.oxnas_hcd** %8, align 8
  %95 = load %struct.device_node*, %struct.device_node** %4, align 8
  %96 = call i8* @of_property_read_bool(%struct.device_node* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %98 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = call i8* @of_property_read_bool(%struct.device_node* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %102 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call %struct.reset_control* @syscon_regmap_lookup_by_phandle(%struct.device_node* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %106 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %105, i32 0, i32 7
  store %struct.reset_control* %104, %struct.reset_control** %106, align 8
  %107 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %108 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %107, i32 0, i32 7
  %109 = load %struct.reset_control*, %struct.reset_control** %108, align 8
  %110 = call i64 @IS_ERR(%struct.reset_control* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %114 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %113, i32 0, i32 7
  %115 = load %struct.reset_control*, %struct.reset_control** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.reset_control* %115)
  store i32 %116, i32* %10, align 4
  br label %277

117:                                              ; preds = %89
  %118 = load %struct.device_node*, %struct.device_node** %4, align 8
  %119 = call i8* @of_clk_get_by_name(%struct.device_node* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %120 = bitcast i8* %119 to %struct.reset_control*
  %121 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %122 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %121, i32 0, i32 0
  store %struct.reset_control* %120, %struct.reset_control** %122, align 8
  %123 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %124 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %123, i32 0, i32 0
  %125 = load %struct.reset_control*, %struct.reset_control** %124, align 8
  %126 = call i64 @IS_ERR(%struct.reset_control* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %130 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %129, i32 0, i32 0
  %131 = load %struct.reset_control*, %struct.reset_control** %130, align 8
  %132 = call i32 @PTR_ERR(%struct.reset_control* %131)
  store i32 %132, i32* %10, align 4
  br label %278

133:                                              ; preds = %117
  %134 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %135 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %134, i32 0, i32 6
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %171

138:                                              ; preds = %133
  %139 = load %struct.device_node*, %struct.device_node** %4, align 8
  %140 = call i8* @of_clk_get_by_name(%struct.device_node* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %141 = bitcast i8* %140 to %struct.reset_control*
  %142 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %143 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %142, i32 0, i32 1
  store %struct.reset_control* %141, %struct.reset_control** %143, align 8
  %144 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %145 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %144, i32 0, i32 1
  %146 = load %struct.reset_control*, %struct.reset_control** %145, align 8
  %147 = call i64 @IS_ERR(%struct.reset_control* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %151 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %150, i32 0, i32 1
  %152 = load %struct.reset_control*, %struct.reset_control** %151, align 8
  %153 = call i32 @PTR_ERR(%struct.reset_control* %152)
  store i32 %153, i32* %10, align 4
  br label %272

154:                                              ; preds = %138
  %155 = load %struct.device_node*, %struct.device_node** %4, align 8
  %156 = call i8* @of_clk_get_by_name(%struct.device_node* %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %157 = bitcast i8* %156 to %struct.reset_control*
  %158 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %159 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %158, i32 0, i32 2
  store %struct.reset_control* %157, %struct.reset_control** %159, align 8
  %160 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %161 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %160, i32 0, i32 1
  %162 = load %struct.reset_control*, %struct.reset_control** %161, align 8
  %163 = call i64 @IS_ERR(%struct.reset_control* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %167 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %166, i32 0, i32 1
  %168 = load %struct.reset_control*, %struct.reset_control** %167, align 8
  %169 = call i32 @PTR_ERR(%struct.reset_control* %168)
  store i32 %169, i32* %10, align 4
  br label %261

170:                                              ; preds = %154
  br label %176

171:                                              ; preds = %133
  %172 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %173 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %172, i32 0, i32 1
  store %struct.reset_control* null, %struct.reset_control** %173, align 8
  %174 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %175 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %174, i32 0, i32 2
  store %struct.reset_control* null, %struct.reset_control** %175, align 8
  br label %176

176:                                              ; preds = %171, %170
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_6__* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.reset_control* %179, %struct.reset_control** %11, align 8
  %180 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %181 = call i64 @IS_ERR(%struct.reset_control* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %185 = call i32 @PTR_ERR(%struct.reset_control* %184)
  store i32 %185, i32* %10, align 4
  br label %250

186:                                              ; preds = %176
  %187 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %188 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %189 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %188, i32 0, i32 5
  store %struct.reset_control* %187, %struct.reset_control** %189, align 8
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_6__* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.reset_control* %192, %struct.reset_control** %11, align 8
  %193 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %194 = call i64 @IS_ERR(%struct.reset_control* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %198 = call i32 @PTR_ERR(%struct.reset_control* %197)
  store i32 %198, i32* %10, align 4
  br label %250

199:                                              ; preds = %186
  %200 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %201 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %202 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %201, i32 0, i32 4
  store %struct.reset_control* %200, %struct.reset_control** %202, align 8
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_6__* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store %struct.reset_control* %205, %struct.reset_control** %11, align 8
  %206 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %207 = call i64 @IS_ERR(%struct.reset_control* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %211 = call i32 @PTR_ERR(%struct.reset_control* %210)
  store i32 %211, i32* %10, align 4
  br label %250

212:                                              ; preds = %199
  %213 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %214 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %215 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %214, i32 0, i32 3
  store %struct.reset_control* %213, %struct.reset_control** %215, align 8
  %216 = load %struct.device_node*, %struct.device_node** %4, align 8
  %217 = call i32 @irq_of_parse_and_map(%struct.device_node* %216, i32 0)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %212
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @dev_err(%struct.TYPE_6__* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %224 = load i32, i32* @EBUSY, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %10, align 4
  br label %249

226:                                              ; preds = %212
  %227 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %228 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %230 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %229)
  store %struct.ehci_hcd* %230, %struct.ehci_hcd** %6, align 8
  %231 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %232 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %231, i32 0, i32 1
  %233 = load %struct.reset_control*, %struct.reset_control** %232, align 8
  %234 = load %struct.ehci_hcd*, %struct.ehci_hcd** %6, align 8
  %235 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %234, i32 0, i32 0
  store %struct.reset_control* %233, %struct.reset_control** %235, align 8
  %236 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %237 = call i32 @start_oxnas_usb_ehci(%struct.oxnas_hcd* %236)
  %238 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* @IRQF_SHARED, align 4
  %241 = call i32 @usb_add_hcd(%struct.usb_hcd* %238, i32 %239, i32 %240)
  store i32 %241, i32* %10, align 4
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %226
  br label %246

245:                                              ; preds = %226
  store i32 0, i32* %2, align 4
  br label %284

246:                                              ; preds = %244
  %247 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %248 = call i32 @stop_oxnas_usb_ehci(%struct.oxnas_hcd* %247)
  br label %249

249:                                              ; preds = %246, %220
  br label %250

250:                                              ; preds = %249, %209, %196, %183
  %251 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %252 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %251, i32 0, i32 2
  %253 = load %struct.reset_control*, %struct.reset_control** %252, align 8
  %254 = icmp ne %struct.reset_control* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %257 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %256, i32 0, i32 2
  %258 = load %struct.reset_control*, %struct.reset_control** %257, align 8
  %259 = call i32 @clk_put(%struct.reset_control* %258)
  br label %260

260:                                              ; preds = %255, %250
  br label %261

261:                                              ; preds = %260, %165
  %262 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %263 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %262, i32 0, i32 1
  %264 = load %struct.reset_control*, %struct.reset_control** %263, align 8
  %265 = icmp ne %struct.reset_control* %264, null
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %268 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %267, i32 0, i32 1
  %269 = load %struct.reset_control*, %struct.reset_control** %268, align 8
  %270 = call i32 @clk_put(%struct.reset_control* %269)
  br label %271

271:                                              ; preds = %266, %261
  br label %272

272:                                              ; preds = %271, %149
  %273 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %8, align 8
  %274 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %273, i32 0, i32 0
  %275 = load %struct.reset_control*, %struct.reset_control** %274, align 8
  %276 = call i32 @clk_put(%struct.reset_control* %275)
  br label %277

277:                                              ; preds = %272, %112
  br label %278

278:                                              ; preds = %277, %128
  br label %279

279:                                              ; preds = %278, %81
  br label %280

280:                                              ; preds = %279, %62
  %281 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %282 = call i32 @usb_put_hcd(%struct.usb_hcd* %281)
  %283 = load i32, i32* %10, align 4
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %280, %245, %54, %18
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.reset_control* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i8* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @start_oxnas_usb_ehci(%struct.oxnas_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @stop_oxnas_usb_ehci(%struct.oxnas_hcd*) #1

declare dso_local i32 @clk_put(%struct.reset_control*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
