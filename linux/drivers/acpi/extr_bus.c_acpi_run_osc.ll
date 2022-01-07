; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_run_osc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_run_osc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_osc_context = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.acpi_buffer = type { i32, %union.acpi_object*, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_OSC\00", align 1
@AE_NULL_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"_OSC evaluation returned wrong type\00", align 1
@AE_TYPE = common dso_local global i64 0, align 8
@OSC_REQUEST_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"_OSC request failed\00", align 1
@OSC_INVALID_UUID_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"_OSC invalid UUID\00", align 1
@OSC_INVALID_REVISION_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"_OSC invalid revision\00", align 1
@OSC_CAPABILITIES_MASK_ERROR = common dso_local global i32 0, align 4
@OSC_QUERY_DWORD = common dso_local global i64 0, align 8
@OSC_QUERY_ENABLE = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_run_osc(i32 %0, %struct.acpi_osc_context* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_osc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_object_list, align 8
  %8 = alloca [4 x %union.acpi_object], align 16
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_osc_context* %1, %struct.acpi_osc_context** %5, align 8
  %13 = bitcast %struct.acpi_buffer* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %17 = icmp ne %struct.acpi_osc_context* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @AE_ERROR, align 8
  store i64 %19, i64* %3, align 8
  br label %226

20:                                               ; preds = %2
  %21 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @guid_parse(i32 %23, i32* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @AE_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %226

28:                                               ; preds = %20
  %29 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %30 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %38 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 1
  store %union.acpi_object* %37, %union.acpi_object** %38, align 8
  %39 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %40 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %41 = bitcast %union.acpi_object* %40 to i64*
  store i64 %39, i64* %41, align 16
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_7__*
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 16, i32* %44, align 16
  %45 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_7__*
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32* %10, i32** %47, align 8
  %48 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 1
  %51 = bitcast %union.acpi_object* %50 to i64*
  store i64 %49, i64* %51, align 16
  %52 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 1
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 16
  %58 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 2
  %61 = bitcast %union.acpi_object* %60 to i64*
  store i64 %59, i64* %61, align 16
  %62 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %63 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 2
  %70 = bitcast %union.acpi_object* %69 to %struct.TYPE_5__*
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 16
  %72 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %73 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %74 = bitcast %union.acpi_object* %73 to i64*
  store i64 %72, i64* %74, align 16
  %75 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %80 = bitcast %union.acpi_object* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 16
  %82 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %83 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %87 = bitcast %union.acpi_object* %86 to %struct.TYPE_7__*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32* %85, i32** %88, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @acpi_evaluate_object(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %7, %struct.acpi_buffer* %12)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @ACPI_FAILURE(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %28
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %3, align 8
  br label %226

96:                                               ; preds = %28
  %97 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* @AE_NULL_OBJECT, align 8
  store i64 %101, i64* %3, align 8
  br label %226

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  %104 = load %union.acpi_object*, %union.acpi_object** %103, align 8
  store %union.acpi_object* %104, %union.acpi_object** %9, align 8
  %105 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %106 = bitcast %union.acpi_object* %105 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %120, label %110

110:                                              ; preds = %102
  %111 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %112 = bitcast %union.acpi_object* %111 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %116 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %114, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %110, %102
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %123 = call i32 @acpi_print_osc_error(i32 %121, %struct.acpi_osc_context* %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i64, i64* @AE_TYPE, align 8
  store i64 %124, i64* %6, align 8
  br label %213

125:                                              ; preds = %110
  %126 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %127 = bitcast %union.acpi_object* %126 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, -2
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %182

134:                                              ; preds = %125
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @OSC_REQUEST_ERROR, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %142 = call i32 @acpi_print_osc_error(i32 %140, %struct.acpi_osc_context* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @OSC_INVALID_UUID_ERROR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %151 = call i32 @acpi_print_osc_error(i32 %149, %struct.acpi_osc_context* %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @OSC_INVALID_REVISION_ERROR, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %160 = call i32 @acpi_print_osc_error(i32 %158, %struct.acpi_osc_context* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %152
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @OSC_CAPABILITIES_MASK_ERROR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %168 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @OSC_QUERY_DWORD, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @OSC_QUERY_ENABLE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %166
  br label %183

178:                                              ; preds = %166
  %179 = load i64, i64* @AE_SUPPORT, align 8
  store i64 %179, i64* %6, align 8
  br label %213

180:                                              ; preds = %161
  %181 = load i64, i64* @AE_ERROR, align 8
  store i64 %181, i64* %6, align 8
  br label %213

182:                                              ; preds = %125
  br label %183

183:                                              ; preds = %182, %177
  %184 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %185 = bitcast %union.acpi_object* %184 to %struct.TYPE_7__*
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %189 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %192 = bitcast %union.acpi_object* %191 to %struct.TYPE_7__*
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %196 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @GFP_KERNEL, align 4
  %200 = call i32* @kmemdup(i32* %194, i32 %198, i32 %199)
  %201 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %202 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32* %200, i32** %203, align 8
  %204 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %205 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %183
  %210 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %210, i64* %6, align 8
  br label %213

211:                                              ; preds = %183
  %212 = load i64, i64* @AE_OK, align 8
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %211, %209, %180, %178, %120
  %214 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  %215 = load %union.acpi_object*, %union.acpi_object** %214, align 8
  %216 = call i32 @kfree(%union.acpi_object* %215)
  %217 = load i64, i64* %6, align 8
  %218 = load i64, i64* @AE_OK, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %213
  %221 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %222 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i32* null, i32** %223, align 8
  br label %224

224:                                              ; preds = %220, %213
  %225 = load i64, i64* %6, align 8
  store i64 %225, i64* %3, align 8
  br label %226

226:                                              ; preds = %224, %100, %94, %26, %18
  %227 = load i64, i64* %3, align 8
  ret i64 %227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @guid_parse(i32, i32*) #2

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i64) #2

declare dso_local i32 @acpi_print_osc_error(i32, %struct.acpi_osc_context*, i8*) #2

declare dso_local i32* @kmemdup(i32*, i32, i32) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
