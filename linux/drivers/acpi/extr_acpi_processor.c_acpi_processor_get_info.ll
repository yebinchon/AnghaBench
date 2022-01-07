; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_processor.c_acpi_processor_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_processor.c_acpi_processor_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%struct.acpi_processor = type { i64, i32, i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_processor_get_info.cpu0_initialized = internal global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bus mastering arbitration control present\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"No bus mastering arbitration control\0A\00", align 1
@ACPI_PROCESSOR_OBJECT_HID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to evaluate processor object (0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@METHOD_NAME__UID = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to evaluate processor _UID (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Entry not well-defined, consider updating BIOS\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to get unique processor _UID (0x%x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to get CPU physical ID.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CPU%X\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Processor [%d:%d]\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"No PBLK (NULL address)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Invalid PBLK length [%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_processor_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_info(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %union.acpi_object, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %struct.acpi_processor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %11 = bitcast %union.acpi_object* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store %union.acpi_object* %4, %union.acpi_object** %13, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %14)
  store %struct.acpi_processor* %15, %struct.acpi_processor** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @acpi_processor_errata()
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 3), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @ACPI_DB_INFO, align 4
  %28 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([43 x i8]* @.str to i32))
  br label %32

29:                                               ; preds = %20, %1
  %30 = load i32, i32* @ACPI_DB_INFO, align 4
  %31 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %34 = call i32 @acpi_device_hid(%struct.acpi_device* %33)
  %35 = load i32, i32* @ACPI_PROCESSOR_OBJECT_HID, align 4
  %36 = call i32 @strcmp(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %32
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @acpi_evaluate_object(i32 %41, i32* null, i32* null, %struct.acpi_buffer* %5)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %247

53:                                               ; preds = %38
  %54 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %58 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %79

59:                                               ; preds = %32
  %60 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** @METHOD_NAME__UID, align 8
  %64 = call i32 @acpi_evaluate_integer(i32 %62, i8* %63, i32* null, i64* %9)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %247

75:                                               ; preds = %59
  store i32 1, i32* %7, align 4
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %78 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %53
  %80 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %81 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @acpi_duplicate_processor_id(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %79
  %86 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %87 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 255
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %91, i32 0, i32 0
  %93 = call i32 @dev_info_once(i32* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %102

94:                                               ; preds = %85
  %95 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %96 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %95, i32 0, i32 0
  %97 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %98 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %247

105:                                              ; preds = %79
  %106 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %107 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %111 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @acpi_get_phys_id(i32 %108, i32 %109, i32 %113)
  %115 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %116 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %118 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @invalid_phys_cpuid(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %105
  %123 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %124 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @acpi_handle_debug(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %105
  %128 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %129 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %132 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @acpi_map_cpuid(i32 %130, i32 %134)
  %136 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %137 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @acpi_processor_get_info.cpu0_initialized, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %127
  %141 = call i32 (...) @acpi_has_cpu_in_madt()
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %156, label %143

143:                                              ; preds = %140
  store i32 1, i32* @acpi_processor_get_info.cpu0_initialized, align 4
  %144 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %145 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @invalid_logical_cpuid(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = call i32 (...) @num_online_cpus()
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %154 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %153, i32 0, i32 1
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %149, %143
  br label %156

156:                                              ; preds = %155, %140, %127
  %157 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %158 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @invalid_logical_cpuid(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %164 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @cpu_present(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %162, %156
  %169 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %170 = call i32 @acpi_processor_hotadd_init(%struct.acpi_processor* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %2, align 4
  br label %247

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %162
  %177 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %178 = call i32 @acpi_device_bid(%struct.acpi_device* %177)
  %179 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %180 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @sprintf(i32 %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* @ACPI_DB_INFO, align 4
  %184 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %185 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %188 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @ACPI_DEBUG_PRINT(i32 %190)
  %192 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %176
  %197 = load i32, i32* @ACPI_DB_INFO, align 4
  %198 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([24 x i8]* @.str.9 to i32))
  br label %232

199:                                              ; preds = %176
  %200 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 6
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %206 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %205, i32 0, i32 0
  %207 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @dev_err(i32* %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  br label %231

211:                                              ; preds = %199
  %212 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %216 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  store i64 %214, i64* %217, align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %219 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %220 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %223 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %224 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = bitcast %union.acpi_object* %4 to %struct.TYPE_7__*
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %230 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %211, %204
  br label %232

232:                                              ; preds = %231, %196
  %233 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %234 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @acpi_evaluate_integer(i32 %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* null, i64* %9)
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i64 @ACPI_SUCCESS(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %242 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i64, i64* %9, align 8
  %245 = call i32 @arch_fix_phys_package_id(i32 %243, i64 %244)
  br label %246

246:                                              ; preds = %240, %232
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %173, %102, %68, %46
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #2

declare dso_local i32 @acpi_processor_errata(...) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #2

declare dso_local i32 @acpi_evaluate_object(i32, i32*, i32*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #2

declare dso_local i64 @acpi_duplicate_processor_id(i64) #2

declare dso_local i32 @dev_info_once(i32*, i8*) #2

declare dso_local i32 @acpi_get_phys_id(i32, i32, i32) #2

declare dso_local i64 @invalid_phys_cpuid(i32) #2

declare dso_local i32 @acpi_handle_debug(i32, i8*) #2

declare dso_local i32 @acpi_map_cpuid(i32, i32) #2

declare dso_local i32 @acpi_has_cpu_in_madt(...) #2

declare dso_local i64 @invalid_logical_cpuid(i32) #2

declare dso_local i32 @num_online_cpus(...) #2

declare dso_local i32 @cpu_present(i32) #2

declare dso_local i32 @acpi_processor_hotadd_init(%struct.acpi_processor*) #2

declare dso_local i32 @sprintf(i32, i8*, i32) #2

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i32 @arch_fix_phys_package_id(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
