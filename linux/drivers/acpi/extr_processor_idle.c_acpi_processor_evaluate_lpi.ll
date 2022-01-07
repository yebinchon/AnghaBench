; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_evaluate_lpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_idle.c_acpi_processor_evaluate_lpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_lpi_states_array = type { i32, %struct.acpi_lpi_state* }
%struct.acpi_lpi_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.acpi_power_register = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_LPI\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No _LPI, giving up\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"not enough elements in _LPI\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"count given by _LPI is not valid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@ACPI_CSTATE_FFH = common dso_local global i32 0, align 4
@ACPI_CSTATE_SYSTEMIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_CSTATE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_CX_DESC_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"No min. residency found, assuming 10 us\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"No wakeup residency found, assuming 10 us\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Found %d power states\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_lpi_states_array*)* @acpi_processor_evaluate_lpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_evaluate_lpi(i32 %0, %struct.acpi_lpi_states_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_lpi_states_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca %struct.acpi_lpi_state*, align 8
  %14 = alloca %union.acpi_object*, align 8
  %15 = alloca %union.acpi_object*, align 8
  %16 = alloca %union.acpi_object*, align 8
  %17 = alloca %struct.acpi_power_register*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_lpi_states_array* %1, %struct.acpi_lpi_states_array** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %19 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %union.acpi_object*
  store %union.acpi_object* %21, %union.acpi_object** %18, align 8
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @acpi_evaluate_object(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %11)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @ACPI_DB_INFO, align 4
  %31 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([20 x i8]* @.str.1 to i32))
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %285

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %36 = load %union.acpi_object*, %union.acpi_object** %35, align 8
  store %union.acpi_object* %36, %union.acpi_object** %12, align 8
  %37 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %38 = icmp ne %union.acpi_object* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %41 = bitcast %union.acpi_object* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %55

51:                                               ; preds = %45, %39, %34
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENODATA, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %280

55:                                               ; preds = %45
  %56 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %union.acpi_object*, %union.acpi_object** %58, align 8
  %60 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %59, i64 2
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %69 = bitcast %union.acpi_object* %68 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 3
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66, %55
  %75 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @ENODATA, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %280

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.acpi_lpi_state* @kcalloc(i32 %79, i32 40, i32 %80)
  store %struct.acpi_lpi_state* %81, %struct.acpi_lpi_state** %13, align 8
  %82 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %83 = icmp ne %struct.acpi_lpi_state* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %280

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %90 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %92 = load %struct.acpi_lpi_states_array*, %struct.acpi_lpi_states_array** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_lpi_states_array, %struct.acpi_lpi_states_array* %92, i32 0, i32 1
  store %struct.acpi_lpi_state* %91, %struct.acpi_lpi_state** %93, align 8
  store i32 3, i32* %10, align 4
  br label %94

94:                                               ; preds = %269, %87
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %276

98:                                               ; preds = %94
  %99 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %100 = bitcast %union.acpi_object* %99 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %union.acpi_object*, %union.acpi_object** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %102, i64 %104
  store %union.acpi_object* %105, %union.acpi_object** %14, align 8
  %106 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %107 = bitcast %union.acpi_object* %106 to i64*
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %98
  %112 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %113 = bitcast %union.acpi_object* %112 to %struct.TYPE_5__*
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, 7
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %98
  br label %269

118:                                              ; preds = %111
  %119 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %120 = bitcast %union.acpi_object* %119 to %struct.TYPE_5__*
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load %union.acpi_object*, %union.acpi_object** %121, align 8
  store %union.acpi_object* %122, %union.acpi_object** %15, align 8
  %123 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %124 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %123, i64 6
  store %union.acpi_object* %124, %union.acpi_object** %16, align 8
  %125 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %126 = bitcast %union.acpi_object* %125 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %167

130:                                              ; preds = %118
  %131 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %132 = bitcast %union.acpi_object* %131 to %struct.TYPE_6__*
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.acpi_power_register*
  store %struct.acpi_power_register* %135, %struct.acpi_power_register** %17, align 8
  %136 = load %struct.acpi_power_register*, %struct.acpi_power_register** %17, align 8
  %137 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %130
  %142 = load %struct.acpi_power_register*, %struct.acpi_power_register** %17, align 8
  %143 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %269

148:                                              ; preds = %141, %130
  %149 = load %struct.acpi_power_register*, %struct.acpi_power_register** %17, align 8
  %150 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %153 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.acpi_power_register*, %struct.acpi_power_register** %17, align 8
  %155 = getelementptr inbounds %struct.acpi_power_register, %struct.acpi_power_register* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %148
  %160 = load i32, i32* @ACPI_CSTATE_FFH, align 4
  br label %163

161:                                              ; preds = %148
  %162 = load i32, i32* @ACPI_CSTATE_SYSTEMIO, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %166 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 4
  br label %185

167:                                              ; preds = %118
  %168 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %169 = bitcast %union.acpi_object* %168 to i64*
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load i32, i32* @ACPI_CSTATE_INTEGER, align 4
  %175 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %176 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %175, i32 0, i32 9
  store i32 %174, i32* %176, align 4
  %177 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %178 = bitcast %union.acpi_object* %177 to %struct.TYPE_7__*
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %182 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 4
  br label %184

183:                                              ; preds = %167
  br label %269

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %163
  %186 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %187 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %186, i64 9
  store %union.acpi_object* %187, %union.acpi_object** %16, align 8
  %188 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %189 = bitcast %union.acpi_object* %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %185
  %194 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %195 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = load %union.acpi_object*, %union.acpi_object** %16, align 8
  %198 = bitcast %union.acpi_object* %197 to %struct.TYPE_8__*
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ACPI_CX_DESC_LEN, align 4
  %202 = call i32 @strlcpy(i32 %196, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %193, %185
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %206 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %208 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %207, i64 0
  %209 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %210 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %209, i32 0, i32 2
  %211 = call i64 @obj_get_integer(%union.acpi_object* %208, i32* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %203
  %214 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %215 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %216 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %215, i32 0, i32 2
  store i32 10, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %203
  %218 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %219 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %218, i64 1
  %220 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %221 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %220, i32 0, i32 3
  %222 = call i64 @obj_get_integer(%union.acpi_object* %219, i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %226 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %227 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %226, i32 0, i32 3
  store i32 10, i32* %227, align 4
  br label %228

228:                                              ; preds = %224, %217
  %229 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %230 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %229, i64 2
  %231 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %232 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %231, i32 0, i32 4
  %233 = call i64 @obj_get_integer(%union.acpi_object* %230, i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %237 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %236, i32 0, i32 4
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %228
  %239 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %240 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %239, i64 3
  %241 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %242 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %241, i32 0, i32 5
  %243 = call i64 @obj_get_integer(%union.acpi_object* %240, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %247 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %246, i32 0, i32 5
  store i32 0, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %238
  %249 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %250 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %249, i64 4
  %251 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %252 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %251, i32 0, i32 6
  %253 = call i64 @obj_get_integer(%union.acpi_object* %250, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %257 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %256, i32 0, i32 6
  store i32 1, i32* %257, align 4
  br label %258

258:                                              ; preds = %255, %248
  %259 = load %union.acpi_object*, %union.acpi_object** %15, align 8
  %260 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %259, i64 5
  %261 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %262 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %261, i32 0, i32 7
  %263 = call i64 @obj_get_integer(%union.acpi_object* %260, i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %258
  %266 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %267 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %266, i32 0, i32 7
  store i32 0, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %258
  br label %269

269:                                              ; preds = %268, %183, %147, %117
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  %274 = load %struct.acpi_lpi_state*, %struct.acpi_lpi_state** %13, align 8
  %275 = getelementptr inbounds %struct.acpi_lpi_state, %struct.acpi_lpi_state* %274, i32 1
  store %struct.acpi_lpi_state* %275, %struct.acpi_lpi_state** %13, align 8
  br label %94

276:                                              ; preds = %94
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @acpi_handle_debug(i32 %277, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %276, %84, %74, %51
  %281 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %282 = load %union.acpi_object*, %union.acpi_object** %281, align 8
  %283 = call i32 @kfree(%union.acpi_object* %282)
  %284 = load i32, i32* %7, align 4
  store i32 %284, i32* %3, align 4
  br label %285

285:                                              ; preds = %280, %29
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.acpi_lpi_state* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @obj_get_integer(%union.acpi_object*, i32*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
