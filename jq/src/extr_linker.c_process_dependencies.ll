; ModuleID = '/home/carl/AnghaBench/jq/src/extr_linker.c_process_dependencies.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_linker.c_process_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lib_loading_state = type { i64, i32*, i32* }

@.str = private unnamed_addr constant [8 x i8] c"is_data\00", align 1
@JV_KIND_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"relpath\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".json\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".jq\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"jq: error: %s\0A\00", align 1
@OP_IS_CALL_PSEUDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, %struct.lib_loading_state*)* @process_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dependencies(i32* %0, i32 %1, i32 %2, i32* %3, %struct.lib_loading_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lib_loading_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.lib_loading_state* %4, %struct.lib_loading_state** %11, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @block_take_imports(i32* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @jv_copy(i32 %34)
  %36 = call i32 @jv_array_length(i32 %35)
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %244, %130, %5
  %38 = load i32, i32* %15, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %247

40:                                               ; preds = %37
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @jv_copy(i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @jv_array_get(i32 %44, i32 %45)
  store i32 %46, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @jv_copy(i32 %47)
  %49 = call i32 @jv_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @jv_object_get(i32 %48, i32 %49)
  %51 = call i64 @jv_get_kind(i32 %50)
  %52 = load i64, i64* @JV_KIND_TRUE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @jv_copy(i32 %55)
  %57 = call i32 @jv_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @jv_object_get(i32 %56, i32 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i64 @jv_get_kind(i32 %59)
  %61 = load i64, i64* @JV_KIND_TRUE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 1, i32* %19, align 4
  br label %64

64:                                               ; preds = %63, %40
  store i32 0, i32* %21, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @jv_copy(i32 %65)
  %67 = call i32 @jv_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @jv_object_get(i32 %66, i32 %67)
  %69 = call i64 @jv_get_kind(i32 %68)
  %70 = load i64, i64* @JV_KIND_TRUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, i32* %21, align 4
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32, i32* %20, align 4
  %75 = call i32 @jv_free(i32 %74)
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @jv_copy(i32 %76)
  %78 = call i32 @jv_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @jv_object_get(i32 %77, i32 %78)
  %80 = call i32 @validate_relpath(i32 %79)
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @jv_copy(i32 %81)
  %83 = call i32 @jv_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %84 = call i32 @jv_object_get(i32 %82, i32 %83)
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @jv_is_valid(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load i32, i32* %23, align 4
  %90 = call i64 @jv_get_kind(i32 %89)
  %91 = load i64, i64* @JV_KIND_STRING, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %88, %73
  %94 = phi i1 [ true, %73 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i32, i32* %23, align 4
  %98 = call i64 @jv_get_kind(i32 %97)
  %99 = load i64, i64* @JV_KIND_STRING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %23, align 4
  %103 = call i8* @jv_string_value(i32 %102)
  store i8* %103, i8** %17, align 8
  br label %104

104:                                              ; preds = %101, %93
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @jv_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %108 = call i32 @jv_object_get(i32 %106, i32 %107)
  %109 = call i32 @default_search(i32* %105, i32 %108)
  store i32 %109, i32* %24, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @jv_copy(i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @jv_copy(i32 %119)
  %121 = call i32 @find_lib(i32* %110, i32 %111, i32 %112, i8* %116, i32 %118, i32 %120)
  store i32 %121, i32* %25, align 4
  %122 = load i32, i32* %25, align 4
  %123 = call i32 @jv_is_valid(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %149, label %125

125:                                              ; preds = %104
  %126 = load i32, i32* %23, align 4
  %127 = call i32 @jv_free(i32 %126)
  %128 = load i32, i32* %21, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %25, align 4
  %132 = call i32 @jv_free(i32 %131)
  br label %37

133:                                              ; preds = %125
  %134 = load i32, i32* %25, align 4
  %135 = call i32 @jv_invalid_get_msg(i32 %134)
  store i32 %135, i32* %26, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %26, align 4
  %138 = call i8* @jv_string_value(i32 %137)
  %139 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %138)
  %140 = call i32 @jq_report_error(i32* %136, i32 %139)
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @jv_free(i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @jv_free(i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @jv_free(i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @jv_free(i32 %147)
  store i32 1, i32* %6, align 4
  br label %255

149:                                              ; preds = %104
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %149
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i8*, i8** %17, align 8
  %159 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %160 = call i64 @load_library(i32* %153, i32 %154, i32 %155, i32 %156, i32 %157, i8* %158, i32* %27, %struct.lib_loading_state* %159)
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %14, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %152
  %168 = load i32, i32* %27, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %171 = load i8*, i8** %17, align 8
  %172 = call i32 @block_bind_library(i32 %168, i32 %169, i32 %170, i8* %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %176 = call i32 @block_bind_library(i32 %173, i32 %174, i32 %175, i8* null)
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %167, %152
  br label %244

178:                                              ; preds = %149
  store i64 0, i64* %28, align 8
  br label %179

179:                                              ; preds = %198, %178
  %180 = load i64, i64* %28, align 8
  %181 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %182 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %180, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %187 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %28, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %25, align 4
  %193 = call i8* @jv_string_value(i32 %192)
  %194 = call i64 @strcmp(i32 %191, i8* %193)
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %185
  br label %201

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %28, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %28, align 8
  br label %179

201:                                              ; preds = %196, %179
  %202 = load i64, i64* %28, align 8
  %203 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %204 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ult i64 %202, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %201
  %208 = load i32, i32* %25, align 4
  %209 = call i32 @jv_free(i32 %208)
  %210 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %211 = getelementptr inbounds %struct.lib_loading_state, %struct.lib_loading_state* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* %28, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %218 = load i8*, i8** %17, align 8
  %219 = call i32 @block_bind_library(i32 %215, i32 %216, i32 %217, i8* %218)
  store i32 %219, i32* %13, align 4
  br label %243

220:                                              ; preds = %201
  %221 = call i32 (...) @gen_noop()
  store i32 %221, i32* %29, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = load i32, i32* %25, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %21, align 4
  %227 = load i8*, i8** %17, align 8
  %228 = load %struct.lib_loading_state*, %struct.lib_loading_state** %11, align 8
  %229 = call i64 @load_library(i32* %222, i32 %223, i32 %224, i32 %225, i32 %226, i8* %227, i32* %29, %struct.lib_loading_state* %228)
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %229
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %14, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %220
  %237 = load i32, i32* %29, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* @OP_IS_CALL_PSEUDO, align 4
  %240 = load i8*, i8** %17, align 8
  %241 = call i32 @block_bind_library(i32 %237, i32 %238, i32 %239, i8* %240)
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %236, %220
  br label %243

243:                                              ; preds = %242, %207
  br label %244

244:                                              ; preds = %243, %177
  %245 = load i32, i32* %23, align 4
  %246 = call i32 @jv_free(i32 %245)
  br label %37

247:                                              ; preds = %37
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @jv_free(i32 %248)
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @jv_free(i32 %250)
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @jv_free(i32 %252)
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %247, %133
  %256 = load i32, i32* %6, align 4
  ret i32 %256
}

declare dso_local i32 @block_take_imports(i32*) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_object_get(i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @validate_relpath(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @default_search(i32*, i32) #1

declare dso_local i32 @find_lib(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jq_report_error(i32*, i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i8*) #1

declare dso_local i64 @load_library(i32*, i32, i32, i32, i32, i8*, i32*, %struct.lib_loading_state*) #1

declare dso_local i32 @block_bind_library(i32, i32, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @gen_noop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
