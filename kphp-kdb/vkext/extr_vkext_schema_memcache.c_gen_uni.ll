; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_uni.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }
%struct.tl_tree_type = type { i32, %struct.tl_tree**, i8* }
%struct.tl_tree_array = type { i32, i32*, %struct.tl_tree* }
%struct.TYPE_2__ = type { i32 (%struct.tl_tree*)* }
%struct.tl_tree_var_type = type { i32 }
%struct.tl_tree_var_num = type { i32, i32 }

@tluni_check_type = common dso_local global i8* null, align 8
@tluni_check_nat_const = common dso_local global i8* null, align 8
@tluni_check_array = common dso_local global i8* null, align 8
@tluni_set_type_var = common dso_local global i8* null, align 8
@tluni_check_type_var = common dso_local global i8* null, align 8
@tluni_set_nat_var = common dso_local global i8* null, align 8
@tluni_check_nat_var = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_uni(%struct.tl_tree* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_tree*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tl_tree_type*, align 8
  %15 = alloca %struct.tl_tree_array*, align 8
  %16 = alloca i32, align 4
  store %struct.tl_tree* %0, %struct.tl_tree** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sle i32 %17, 10
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %306

20:                                               ; preds = %4
  %21 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %22 = call i32 @assert(%struct.tl_tree* %21)
  %23 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %24 = call %struct.TYPE_2__* @TL_TREE_METHODS(%struct.tl_tree* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tl_tree*)*, i32 (%struct.tl_tree*)** %25, align 8
  %27 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %28 = call i32 %26(%struct.tl_tree* %27)
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %304 [
    i32 130, label %30
    i32 131, label %84
    i32 132, label %99
    i32 128, label %172
    i32 129, label %228
  ]

30:                                               ; preds = %20
  %31 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %32 = bitcast %struct.tl_tree* %31 to i8*
  %33 = bitcast i8* %32 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %33, %struct.tl_tree_type** %14, align 8
  %34 = load i8*, i8** @tluni_check_type, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %41 = bitcast %struct.tl_tree* %40 to %struct.tl_tree_type*
  %42 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  store i8* %43, i8** %48, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %79, %30
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %52 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %49
  %56 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %57 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %56, i32 0, i32 1
  %58 = load %struct.tl_tree**, %struct.tl_tree*** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %58, i64 %60
  %62 = load %struct.tl_tree*, %struct.tl_tree** %61, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @gen_uni(%struct.tl_tree* %62, i8** %66, i32 %69, i32* %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %306

75:                                               ; preds = %55
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %5, align 4
  br label %306

84:                                               ; preds = %20
  %85 = load i8*, i8** @tluni_check_nat_const, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  store i8* %85, i8** %90, align 8
  %91 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %92 = bitcast %struct.tl_tree* %91 to i8*
  %93 = load i8**, i8*** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  store i8* %92, i8** %97, align 8
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %5, align 4
  br label %306

99:                                               ; preds = %20
  %100 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %101 = bitcast %struct.tl_tree* %100 to i8*
  %102 = bitcast i8* %101 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %102, %struct.tl_tree_array** %15, align 8
  %103 = load i8*, i8** @tluni_check_array, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  store i8* %103, i8** %108, align 8
  %109 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %110 = bitcast %struct.tl_tree* %109 to i8*
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %117 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %116, i32 0, i32 2
  %118 = load %struct.tl_tree*, %struct.tl_tree** %117, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @gen_uni(%struct.tl_tree* %118, i8** %122, i32 %125, i32* %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %99
  store i32 -1, i32* %5, align 4
  br label %306

131:                                              ; preds = %99
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %167, %131
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %138 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %135
  %142 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %143 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i8**, i8*** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %11, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @gen_uni_arg(i32 %148, i8** %152, i32 %155, i32* %156)
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %141
  store i32 -1, i32* %5, align 4
  br label %306

163:                                              ; preds = %141
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %135

170:                                              ; preds = %135
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %5, align 4
  br label %306

172:                                              ; preds = %20
  %173 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %174 = bitcast %struct.tl_tree* %173 to %struct.tl_tree_var_type*
  %175 = getelementptr inbounds %struct.tl_tree_var_type, %struct.tl_tree_var_type* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %12, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %202, label %183

183:                                              ; preds = %172
  %184 = load i8*, i8** @tluni_set_type_var, align 8
  %185 = load i8**, i8*** %7, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8*, i8** %185, i64 %188
  store i8* %184, i8** %189, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load i8**, i8*** %7, align 8
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8*, i8** %193, i64 %196
  store i8* %192, i8** %197, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 1, i32* %201, align 4
  br label %226

202:                                              ; preds = %172
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %224

209:                                              ; preds = %202
  %210 = load i8*, i8** @tluni_check_type_var, align 8
  %211 = load i8**, i8*** %7, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8*, i8** %211, i64 %214
  store i8* %210, i8** %215, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = inttoptr i64 %217 to i8*
  %219 = load i8**, i8*** %7, align 8
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8*, i8** %219, i64 %222
  store i8* %218, i8** %223, align 8
  br label %225

224:                                              ; preds = %202
  store i32 -1, i32* %5, align 4
  br label %306

225:                                              ; preds = %209
  br label %226

226:                                              ; preds = %225, %183
  %227 = load i32, i32* %11, align 4
  store i32 %227, i32* %5, align 4
  br label %306

228:                                              ; preds = %20
  %229 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %230 = bitcast %struct.tl_tree* %229 to %struct.tl_tree_var_num*
  %231 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %12, align 4
  %233 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %234 = bitcast %struct.tl_tree* %233 to %struct.tl_tree_var_num*
  %235 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %13, align 4
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %270, label %243

243:                                              ; preds = %228
  %244 = load i8*, i8** @tluni_set_nat_var, align 8
  %245 = load i8**, i8*** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8*, i8** %245, i64 %248
  store i8* %244, i8** %249, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = inttoptr i64 %251 to i8*
  %253 = load i8**, i8*** %7, align 8
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8*, i8** %253, i64 %256
  store i8* %252, i8** %257, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  %261 = load i8**, i8*** %7, align 8
  %262 = load i32, i32* %11, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %11, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i8*, i8** %261, i64 %264
  store i8* %260, i8** %265, align 8
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 2, i32* %269, align 4
  br label %302

270:                                              ; preds = %228
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %300

277:                                              ; preds = %270
  %278 = load i8*, i8** @tluni_check_nat_var, align 8
  %279 = load i8**, i8*** %7, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8*, i8** %279, i64 %282
  store i8* %278, i8** %283, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i8*
  %287 = load i8**, i8*** %7, align 8
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %11, align 4
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8*, i8** %287, i64 %290
  store i8* %286, i8** %291, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  %295 = load i8**, i8*** %7, align 8
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %11, align 4
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8*, i8** %295, i64 %298
  store i8* %294, i8** %299, align 8
  br label %301

300:                                              ; preds = %270
  store i32 -1, i32* %5, align 4
  br label %306

301:                                              ; preds = %277
  br label %302

302:                                              ; preds = %301, %243
  %303 = load i32, i32* %11, align 4
  store i32 %303, i32* %5, align 4
  br label %306

304:                                              ; preds = %20
  %305 = call i32 @assert(%struct.tl_tree* null)
  store i32 -1, i32* %5, align 4
  br label %306

306:                                              ; preds = %304, %302, %300, %226, %224, %170, %162, %130, %84, %82, %74, %19
  %307 = load i32, i32* %5, align 4
  ret i32 %307
}

declare dso_local i32 @assert(%struct.tl_tree*) #1

declare dso_local %struct.TYPE_2__* @TL_TREE_METHODS(%struct.tl_tree*) #1

declare dso_local i32 @gen_uni_arg(i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
