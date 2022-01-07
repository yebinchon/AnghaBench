; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___ipmi_bmc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___ipmi_bmc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ipmi_smi = type { i32, i32, i8*, i32, %struct.bmc_device, %struct.bmc_device*, i32, %struct.TYPE_9__*, i32 }
%struct.bmc_device = type { i32, i32, %struct.TYPE_7__, i32, i32, %struct.ipmi_device_id, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32, i32* }
%struct.ipmi_device_id = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ipmidriver_mutex = common dso_local global i32 0, align 4
@ipmidriver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [79 x i8] c"interfacing existing BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cleanup_bmc_work = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPMI_DYN_DEV_ID_EXPIRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ipmi_bmc\00", align 1
@ipmi_bmc_ida = common dso_local global i32 0, align 4
@release_bmc_device = common dso_local global i32 0, align 4
@bmc_device_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to register bmc device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Found new BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bmc\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Unable to create bmc symlink: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ipmi%d\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unable to allocate link from BMC: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Unable to create symlink to bmc: %d\0A\00", align 1
@cleanup_bmc_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_device_id*, i32, i32*, i32)* @__ipmi_bmc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ipmi_bmc_register(%struct.ipmi_smi* %0, %struct.ipmi_device_id* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ipmi_smi*, align 8
  %7 = alloca %struct.ipmi_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bmc_device*, align 8
  %13 = alloca %struct.bmc_device*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %6, align 8
  store %struct.ipmi_device_id* %1, %struct.ipmi_device_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %17 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %16, i32 0, i32 8
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = call i32 @mutex_lock(i32* @ipmidriver_mutex)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.bmc_device* @ipmi_find_bmc_guid(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipmidriver, i32 0, i32 0), i32* %23)
  store %struct.bmc_device* %24, %struct.bmc_device** %13, align 8
  br label %33

25:                                               ; preds = %5
  %26 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %7, align 8
  %27 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.bmc_device* @ipmi_find_bmc_prod_dev_id(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipmidriver, i32 0, i32 0), i32 %28, i32 %31)
  store %struct.bmc_device* %32, %struct.bmc_device** %13, align 8
  br label %33

33:                                               ; preds = %25, %22
  %34 = load %struct.bmc_device*, %struct.bmc_device** %13, align 8
  %35 = icmp ne %struct.bmc_device* %34, null
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load %struct.bmc_device*, %struct.bmc_device** %13, align 8
  store %struct.bmc_device* %37, %struct.bmc_device** %12, align 8
  %38 = load %struct.bmc_device*, %struct.bmc_device** %13, align 8
  %39 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %40 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %39, i32 0, i32 5
  store %struct.bmc_device* %38, %struct.bmc_device** %40, align 8
  %41 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %42 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %41, i32 0, i32 3
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %44, i32 0, i32 6
  %46 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %47 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %46, i32 0, i32 6
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %50 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %49, i32 0, i32 3
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %53 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %52, i32 0, i32 7
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %56 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %60 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %64 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_info(%struct.TYPE_9__* %54, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %62, i32 %66)
  br label %177

68:                                               ; preds = %33
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.bmc_device* @kzalloc(i32 96, i32 %69)
  store %struct.bmc_device* %70, %struct.bmc_device** %12, align 8
  %71 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %72 = icmp ne %struct.bmc_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %250

76:                                               ; preds = %68
  %77 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %78 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %77, i32 0, i32 6
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %81 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %80, i32 0, i32 3
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %84 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %83, i32 0, i32 9
  %85 = load i32, i32* @cleanup_bmc_work, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %88 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %87, i32 0, i32 5
  %89 = load %struct.ipmi_device_id*, %struct.ipmi_device_id** %7, align 8
  %90 = bitcast %struct.ipmi_device_id* %88 to i8*
  %91 = bitcast %struct.ipmi_device_id* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 4 %91, i64 12, i1 false)
  %92 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %93 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %96 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %100 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* @jiffies, align 8
  %102 = load i64, i64* @IPMI_DYN_DEV_ID_EXPIRY, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %105 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %104, i32 0, i32 7
  store i64 %103, i64* %105, align 8
  %106 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %107 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %108, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i32 @ida_simple_get(i32* @ipmi_bmc_ida, i32 0, i32 0, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %76
  br label %250

114:                                              ; preds = %76
  %115 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %116 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ipmidriver, i32 0, i32 0), i32** %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %121 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* @release_bmc_device, align 4
  %124 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %125 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i32 %123, i32* %127, align 8
  %128 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %129 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  store i32* @bmc_device_type, i32** %131, align 8
  %132 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %133 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %132, i32 0, i32 4
  %134 = call i32 @kref_init(i32* %133)
  %135 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %136 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %137 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %136, i32 0, i32 5
  store %struct.bmc_device* %135, %struct.bmc_device** %137, align 8
  %138 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %139 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %138, i32 0, i32 3
  %140 = call i32 @mutex_lock(i32* %139)
  %141 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %142 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %141, i32 0, i32 6
  %143 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %144 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %143, i32 0, i32 6
  %145 = call i32 @list_add_tail(i32* %142, i32* %144)
  %146 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %147 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %146, i32 0, i32 3
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %150 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %149, i32 0, i32 2
  %151 = call i32 @platform_device_register(%struct.TYPE_7__* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %114
  %155 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %156 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %155, i32 0, i32 7
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @dev_err(%struct.TYPE_9__* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  br label %289

160:                                              ; preds = %114
  %161 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %162 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %161, i32 0, i32 7
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %165 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %169 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %173 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.ipmi_device_id, %struct.ipmi_device_id* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dev_info(%struct.TYPE_9__* %163, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %167, i32 %171, i32 %175)
  br label %177

177:                                              ; preds = %160, %36
  %178 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %179 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %178, i32 0, i32 7
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %183 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = call i32 @sysfs_create_link(i32* %181, i32* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %177
  %190 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %191 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %190, i32 0, i32 7
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @dev_err(%struct.TYPE_9__* %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %271

195:                                              ; preds = %177
  %196 = load i32, i32* %10, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %200 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %198, %195
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = load i32, i32* %10, align 4
  %205 = call i8* @kasprintf(i32 %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %207 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %209 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %220, label %212

212:                                              ; preds = %202
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %11, align 4
  %215 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %216 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %215, i32 0, i32 7
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @dev_err(%struct.TYPE_9__* %217, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %218)
  br label %265

220:                                              ; preds = %202
  %221 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %222 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %226 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %225, i32 0, i32 7
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %230 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @sysfs_create_link(i32* %224, i32* %228, i8* %231)
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %220
  %236 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %237 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @kfree(i8* %238)
  %240 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %241 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %240, i32 0, i32 2
  store i8* null, i8** %241, align 8
  %242 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %243 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %242, i32 0, i32 7
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @dev_err(%struct.TYPE_9__* %244, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %245)
  br label %258

247:                                              ; preds = %220
  %248 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %249 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %248, i32 0, i32 3
  store i32 1, i32* %249, align 8
  br label %250

250:                                              ; preds = %289, %271, %247, %113, %73
  %251 = call i32 @mutex_unlock(i32* @ipmidriver_mutex)
  %252 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %253 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %252, i32 0, i32 8
  %254 = call i32 @mutex_lock(i32* %253)
  %255 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %256 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %255, i32 0, i32 0
  store i32 0, i32* %256, align 8
  %257 = load i32, i32* %11, align 4
  ret i32 %257

258:                                              ; preds = %235
  %259 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %260 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @kfree(i8* %261)
  %263 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %264 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %263, i32 0, i32 2
  store i8* null, i8** %264, align 8
  br label %265

265:                                              ; preds = %258, %212
  %266 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %267 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %266, i32 0, i32 7
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = call i32 @sysfs_remove_link(i32* %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %271

271:                                              ; preds = %265, %189
  %272 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %273 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %272, i32 0, i32 3
  %274 = call i32 @mutex_lock(i32* %273)
  %275 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %276 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %275, i32 0, i32 6
  %277 = call i32 @list_del(i32* %276)
  %278 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %279 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %278, i32 0, i32 3
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %282 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %281, i32 0, i32 4
  %283 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %284 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %283, i32 0, i32 5
  store %struct.bmc_device* %282, %struct.bmc_device** %284, align 8
  %285 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %286 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %285, i32 0, i32 4
  %287 = load i32, i32* @cleanup_bmc_device, align 4
  %288 = call i32 @kref_put(i32* %286, i32 %287)
  br label %250

289:                                              ; preds = %154
  %290 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %291 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %290, i32 0, i32 3
  %292 = call i32 @mutex_lock(i32* %291)
  %293 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %294 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %293, i32 0, i32 6
  %295 = call i32 @list_del(i32* %294)
  %296 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %297 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %296, i32 0, i32 3
  %298 = call i32 @mutex_unlock(i32* %297)
  %299 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %300 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %299, i32 0, i32 4
  %301 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %302 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %301, i32 0, i32 5
  store %struct.bmc_device* %300, %struct.bmc_device** %302, align 8
  %303 = load %struct.bmc_device*, %struct.bmc_device** %12, align 8
  %304 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 2
  %306 = call i32 @put_device(%struct.TYPE_6__* %305)
  br label %250
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bmc_device* @ipmi_find_bmc_guid(i32*, i32*) #1

declare dso_local %struct.bmc_device* @ipmi_find_bmc_prod_dev_id(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local %struct.bmc_device* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
