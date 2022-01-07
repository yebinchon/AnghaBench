; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_gen_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32, i8*, %struct.tl_tree* }
%struct.tl_tree_type = type { i32, i8*, %struct.TYPE_4__, %struct.tl_tree** }
%struct.TYPE_4__ = type { i32 }
%struct.tl_tree_array = type { i32, %struct.tl_tree**, %struct.TYPE_5__, %struct.tl_tree* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.tl_tree*)* }
%struct.tl_tree_var_type = type { i64 }
%struct.tl_tree_var_num = type { i64, i64 }

@FLAG_NOVAR = common dso_local global i32 0, align 4
@tls_push = common dso_local global i8* null, align 8
@tlsub_create_type = common dso_local global i8* null, align 8
@FLAGS_MASK = common dso_local global i32 0, align 4
@tlsub_create_array = common dso_local global i8* null, align 8
@tlsub_push_type_var = common dso_local global i8* null, align 8
@tlsub_push_nat_var = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_create(%struct.tl_tree* %0, i8** %1, i32 %2, i32* %3) #0 {
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
  store %struct.tl_tree* %0, %struct.tl_tree** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %325

19:                                               ; preds = %4
  %20 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %21 = call %struct.TYPE_6__* @TL_TREE_METHODS(%struct.tl_tree* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.tl_tree*)*, i32 (%struct.tl_tree*)** %22, align 8
  %24 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %25 = call i32 %23(%struct.tl_tree* %24)
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %27 = call i32 @TL_IS_NAT_VAR(%struct.tl_tree* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %19
  %30 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %31 = getelementptr inbounds %struct.tl_tree, %struct.tl_tree* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FLAG_NOVAR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load i8*, i8** @tls_push, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %44 = bitcast %struct.tl_tree* %43 to i8*
  %45 = load i8**, i8*** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %44, i8** %49, align 8
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %325

51:                                               ; preds = %29, %19
  %52 = load i32, i32* %10, align 4
  switch i32 %52, label %323 [
    i32 130, label %53
    i32 131, label %125
    i32 132, label %140
    i32 128, label %277
    i32 129, label %295
  ]

53:                                               ; preds = %51
  %54 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %55 = bitcast %struct.tl_tree* %54 to i8*
  %56 = bitcast i8* %55 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %56, %struct.tl_tree_type** %14, align 8
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %87, %53
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %60 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %57
  %64 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %65 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %64, i32 0, i32 3
  %66 = load %struct.tl_tree**, %struct.tl_tree*** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %66, i64 %68
  %70 = load %struct.tl_tree*, %struct.tl_tree** %69, align 8
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @gen_create(%struct.tl_tree* %70, i8** %74, i32 %77, i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %325

83:                                               ; preds = %63
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 10
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  br label %325

96:                                               ; preds = %90
  %97 = load i8*, i8** @tlsub_create_type, align 8
  %98 = load i8**, i8*** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %97, i8** %102, align 8
  %103 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %104 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FLAGS_MASK, align 4
  %108 = and i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8**, i8*** %7, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8*, i8** %111, i64 %114
  store i8* %110, i8** %115, align 8
  %116 = load %struct.tl_tree_type*, %struct.tl_tree_type** %14, align 8
  %117 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  store i8* %118, i8** %123, align 8
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %325

125:                                              ; preds = %51
  %126 = load i8*, i8** @tls_push, align 8
  %127 = load i8**, i8*** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  store i8* %126, i8** %131, align 8
  %132 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %133 = bitcast %struct.tl_tree* %132 to i8*
  %134 = load i8**, i8*** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  store i8* %133, i8** %138, align 8
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %5, align 4
  br label %325

140:                                              ; preds = %51
  %141 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %142 = bitcast %struct.tl_tree* %141 to i8*
  %143 = bitcast i8* %142 to %struct.tl_tree_array*
  store %struct.tl_tree_array* %143, %struct.tl_tree_array** %15, align 8
  %144 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %145 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %144, i32 0, i32 3
  %146 = load %struct.tl_tree*, %struct.tl_tree** %145, align 8
  %147 = call i32 @assert(%struct.tl_tree* %146)
  %148 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %149 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %148, i32 0, i32 3
  %150 = load %struct.tl_tree*, %struct.tl_tree** %149, align 8
  %151 = load i8**, i8*** %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @gen_create(%struct.tl_tree* %150, i8** %154, i32 %157, i32* %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %140
  store i32 -1, i32* %5, align 4
  br label %325

163:                                              ; preds = %140
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %207, %163
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %170 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %167
  %174 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %175 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %174, i32 0, i32 1
  %176 = load %struct.tl_tree**, %struct.tl_tree*** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %176, i64 %178
  %180 = load %struct.tl_tree*, %struct.tl_tree** %179, align 8
  %181 = call i32 @assert(%struct.tl_tree* %180)
  %182 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %183 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %182, i32 0, i32 1
  %184 = load %struct.tl_tree**, %struct.tl_tree*** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %184, i64 %186
  %188 = load %struct.tl_tree*, %struct.tl_tree** %187, align 8
  %189 = getelementptr inbounds %struct.tl_tree, %struct.tl_tree* %188, i32 0, i32 2
  %190 = load %struct.tl_tree*, %struct.tl_tree** %189, align 8
  %191 = load i8**, i8*** %7, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %11, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @gen_create(%struct.tl_tree* %190, i8** %194, i32 %197, i32* %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %173
  store i32 -1, i32* %5, align 4
  br label %325

203:                                              ; preds = %173
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %11, align 4
  br label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %167

210:                                              ; preds = %167
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 10
  %213 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %214 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %212, %215
  %217 = load i32, i32* %8, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i32 -1, i32* %5, align 4
  br label %325

220:                                              ; preds = %210
  %221 = load i8*, i8** @tlsub_create_array, align 8
  %222 = load i8**, i8*** %7, align 8
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8*, i8** %222, i64 %225
  store i8* %221, i8** %226, align 8
  %227 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %228 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @FLAGS_MASK, align 4
  %232 = and i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = load i8**, i8*** %7, align 8
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8*, i8** %235, i64 %238
  store i8* %234, i8** %239, align 8
  %240 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %241 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = load i8**, i8*** %7, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8*, i8** %245, i64 %248
  store i8* %244, i8** %249, align 8
  %250 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %251 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sub nsw i32 %252, 1
  store i32 %253, i32* %12, align 4
  br label %254

254:                                              ; preds = %272, %220
  %255 = load i32, i32* %12, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load %struct.tl_tree_array*, %struct.tl_tree_array** %15, align 8
  %259 = getelementptr inbounds %struct.tl_tree_array, %struct.tl_tree_array* %258, i32 0, i32 1
  %260 = load %struct.tl_tree**, %struct.tl_tree*** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %260, i64 %262
  %264 = load %struct.tl_tree*, %struct.tl_tree** %263, align 8
  %265 = getelementptr inbounds %struct.tl_tree, %struct.tl_tree* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i8**, i8*** %7, align 8
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8*, i8** %267, i64 %270
  store i8* %266, i8** %271, align 8
  br label %272

272:                                              ; preds = %257
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %12, align 4
  br label %254

275:                                              ; preds = %254
  %276 = load i32, i32* %11, align 4
  store i32 %276, i32* %5, align 4
  br label %325

277:                                              ; preds = %51
  %278 = load i8*, i8** @tlsub_push_type_var, align 8
  %279 = load i8**, i8*** %7, align 8
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i8*, i8** %279, i64 %282
  store i8* %278, i8** %283, align 8
  %284 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %285 = bitcast %struct.tl_tree* %284 to %struct.tl_tree_var_type*
  %286 = getelementptr inbounds %struct.tl_tree_var_type, %struct.tl_tree_var_type* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to i8*
  %289 = load i8**, i8*** %7, align 8
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i8*, i8** %289, i64 %292
  store i8* %288, i8** %293, align 8
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %5, align 4
  br label %325

295:                                              ; preds = %51
  %296 = load i8*, i8** @tlsub_push_nat_var, align 8
  %297 = load i8**, i8*** %7, align 8
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %11, align 4
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8*, i8** %297, i64 %300
  store i8* %296, i8** %301, align 8
  %302 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %303 = bitcast %struct.tl_tree* %302 to %struct.tl_tree_var_num*
  %304 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to i8*
  %307 = load i8**, i8*** %7, align 8
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8*, i8** %307, i64 %310
  store i8* %306, i8** %311, align 8
  %312 = load %struct.tl_tree*, %struct.tl_tree** %6, align 8
  %313 = bitcast %struct.tl_tree* %312 to %struct.tl_tree_var_num*
  %314 = getelementptr inbounds %struct.tl_tree_var_num, %struct.tl_tree_var_num* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = inttoptr i64 %315 to i8*
  %317 = load i8**, i8*** %7, align 8
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i8*, i8** %317, i64 %320
  store i8* %316, i8** %321, align 8
  %322 = load i32, i32* %11, align 4
  store i32 %322, i32* %5, align 4
  br label %325

323:                                              ; preds = %51
  %324 = call i32 @assert(%struct.tl_tree* null)
  store i32 -1, i32* %5, align 4
  br label %325

325:                                              ; preds = %323, %295, %277, %275, %219, %202, %162, %125, %96, %95, %82, %36, %18
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

declare dso_local %struct.TYPE_6__* @TL_TREE_METHODS(%struct.tl_tree*) #1

declare dso_local i32 @TL_IS_NAT_VAR(%struct.tl_tree*) #1

declare dso_local i32 @assert(%struct.tl_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
