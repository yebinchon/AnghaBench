; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_post_response.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_http_request.c_post_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_mruby_http_request_context_t = type { %struct.TYPE_22__*, %struct.TYPE_27__, i32, %struct.TYPE_25__ }
%struct.TYPE_22__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_23__, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@H2O_MRUBY_HTTP_INPUT_STREAM_CLASS = common dso_local global i32 0, align 4
@input_stream_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"_set_response\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"_set_response failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_mruby_http_request_context_t*, i32, %struct.TYPE_29__*, i64, i32)* @post_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_response(%struct.st_h2o_mruby_http_request_context_t* %0, i32 %1, %struct.TYPE_29__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.st_h2o_mruby_http_request_context_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.st_h2o_mruby_http_request_context_t* %0, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %20 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %19, i32 0, i32 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %11, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %27 = call i32 @mrb_gc_arena_save(%struct.TYPE_28__* %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %29 = call i32 @mrb_ary_new_capa(%struct.TYPE_28__* %28, i32 3)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mrb_fixnum_value(i32 %32)
  %34 = call i32 @mrb_ary_set(%struct.TYPE_28__* %30, i32 %31, i32 0, i32 %33)
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @mrb_hash_new_capa(%struct.TYPE_28__* %35, i32 %37)
  store i32 %38, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %39

39:                                               ; preds = %211, %5
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %214

43:                                               ; preds = %39
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %57 = call i64 (%struct.TYPE_24__*, i32, i32, ...) @h2o_memis(%struct.TYPE_24__* %48, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %73 = call i64 (%struct.TYPE_24__*, i32, i32, ...) @h2o_memis(%struct.TYPE_24__* %64, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59, %43
  br label %211

76:                                               ; preds = %59
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %76
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %82 = load i64, i64* %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @h2o_mruby_new_str(%struct.TYPE_28__* %80, i32 %87, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @h2o_mruby_new_str(%struct.TYPE_28__* %96, i32 %102, i32 %108)
  store i32 %109, i32* %17, align 4
  br label %141

110:                                              ; preds = %76
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @h2o_mruby_new_str_static(%struct.TYPE_28__* %111, i32 %118, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @h2o_mruby_new_str_static(%struct.TYPE_28__* %127, i32 %133, i32 %139)
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %110, %79
  br label %142

142:                                              ; preds = %184, %141
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 1
  %145 = load i64, i64* %9, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %182

147:                                              ; preds = %142
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %149 = load i64, i64* %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to %struct.TYPE_24__*
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %158 = load i64, i64* %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, 1
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %173 = load i64, i64* %13, align 8
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 (%struct.TYPE_24__*, i32, i32, ...) @h2o_memis(%struct.TYPE_24__* %156, i32 %163, i32 %171, i32 %179)
  %181 = icmp ne i64 %180, 0
  br label %182

182:                                              ; preds = %147, %142
  %183 = phi i1 [ false, %142 ], [ %181, %147 ]
  br i1 %183, label %184, label %205

184:                                              ; preds = %182
  %185 = load i64, i64* %13, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %13, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %188 = load i32, i32* %17, align 4
  %189 = call i32 @mrb_str_cat_lit(%struct.TYPE_28__* %187, i32 %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %189, i32* %17, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %193 = load i64, i64* %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @mrb_str_cat(%struct.TYPE_28__* %190, i32 %191, i32 %197, i32 %203)
  store i32 %204, i32* %17, align 4
  br label %142

205:                                              ; preds = %182
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @mrb_hash_set(%struct.TYPE_28__* %206, i32 %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %205, %75
  %212 = load i64, i64* %13, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %13, align 8
  br label %39

214:                                              ; preds = %39
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %216 = load i32, i32* %14, align 4
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @mrb_ary_set(%struct.TYPE_28__* %215, i32 %216, i32 1, i32 %217)
  %219 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %220 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @mrb_nil_p(i32 %222)
  %224 = call i32 @assert(i64 %223)
  %225 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %226 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %214
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 101
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, 204
  br i1 %235, label %239, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %7, align 4
  %238 = icmp eq i32 %237, 304
  br i1 %238, label %239, label %249

239:                                              ; preds = %236, %233, %230, %214
  %240 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %241 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %240, i32 0, i32 0
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS, align 4
  %248 = call i32 @mrb_ary_entry(i32 %246, i32 %247)
  store i32 %248, i32* %18, align 4
  br label %259

249:                                              ; preds = %236
  %250 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %251 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %250, i32 0, i32 0
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @H2O_MRUBY_HTTP_INPUT_STREAM_CLASS, align 4
  %258 = call i32 @mrb_ary_entry(i32 %256, i32 %257)
  store i32 %258, i32* %18, align 4
  br label %259

259:                                              ; preds = %249, %239
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %261 = load i32, i32* %18, align 4
  %262 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %263 = call i32 @h2o_mruby_create_data_instance(%struct.TYPE_28__* %260, i32 %261, %struct.st_h2o_mruby_http_request_context_t* %262, i32* @input_stream_type)
  %264 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %265 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %270 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @mrb_ary_set(%struct.TYPE_28__* %267, i32 %268, i32 2, i32 %272)
  %274 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %275 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i64 @mrb_nil_p(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %294

279:                                              ; preds = %259
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %281 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %282 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = call i32 @mrb_funcall(%struct.TYPE_28__* %280, i32 %284, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %285)
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %279
  %292 = call i32 @h2o_fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %279
  br label %302

294:                                              ; preds = %259
  %295 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %296 = getelementptr inbounds %struct.st_h2o_mruby_http_request_context_t, %struct.st_h2o_mruby_http_request_context_t* %295, i32 0, i32 0
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %296, align 8
  %298 = load %struct.st_h2o_mruby_http_request_context_t*, %struct.st_h2o_mruby_http_request_context_t** %6, align 8
  %299 = call i32 @detach_receiver(%struct.st_h2o_mruby_http_request_context_t* %298)
  %300 = load i32, i32* %14, align 4
  %301 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_22__* %297, i32 %299, i32 %300, i32* null)
  br label %302

302:                                              ; preds = %294, %293
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %304 = load i32, i32* %12, align 4
  %305 = call i32 @mrb_gc_arena_restore(%struct.TYPE_28__* %303, i32 %304)
  ret void
}

declare dso_local i32 @mrb_gc_arena_save(%struct.TYPE_28__*) #1

declare dso_local i32 @mrb_ary_new_capa(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @mrb_ary_set(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_hash_new_capa(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @h2o_memis(%struct.TYPE_24__*, i32, i32, ...) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_mruby_new_str(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @h2o_mruby_new_str_static(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @mrb_str_cat_lit(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @mrb_hash_set(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @h2o_mruby_create_data_instance(%struct.TYPE_28__*, i32, %struct.st_h2o_mruby_http_request_context_t*, i32*) #1

declare dso_local i32 @mrb_funcall(%struct.TYPE_28__*, i32, i8*, i32, i32) #1

declare dso_local i32 @h2o_fatal(i8*) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_22__*, i32, i32, i32*) #1

declare dso_local i32 @detach_receiver(%struct.st_h2o_mruby_http_request_context_t*) #1

declare dso_local i32 @mrb_gc_arena_restore(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
