; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xemit.c_xdl_emit_diff.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xemit.c_xdl_emit_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.func_line = type { i32, i32, i32 }

@XDL_EMIT_FUNCCONTEXT = common dso_local global i32 0, align 4
@XDL_EMIT_FUNCNAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_emit_diff(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.func_line, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i64 -1, i64* %17, align 8
  %24 = bitcast %struct.func_line* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 12, i1 false)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %15, align 8
  br label %26

26:                                               ; preds = %495, %4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %499

29:                                               ; preds = %26
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = call %struct.TYPE_18__* @xdl_get_hunk(%struct.TYPE_18__** %15, %struct.TYPE_17__* %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %16, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %499

35:                                               ; preds = %29
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i64 @XDL_MAX(i64 %42, i32 0)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = call i64 @XDL_MAX(i64 %50, i32 0)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XDL_EMIT_FUNCCONTEXT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %142

58:                                               ; preds = %35
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %20, align 8
  %62 = load i64, i64* %20, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %62, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %58
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %21, align 8
  br label %72

72:                                               ; preds = %87, %68
  %73 = load i64, i64* %21, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = load i64, i64* %21, align 8
  %84 = call i64 @is_func_rec(%struct.TYPE_19__* %81, %struct.TYPE_17__* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %143

87:                                               ; preds = %79
  %88 = load i64, i64* %21, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %21, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %20, align 8
  br label %96

96:                                               ; preds = %90, %58
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = load i64, i64* %20, align 8
  %100 = call i64 @get_func_line(%struct.TYPE_16__* %97, %struct.TYPE_17__* %98, %struct.func_line* null, i64 %99, i64 -1)
  store i64 %100, i64* %19, align 8
  br label %101

101:                                              ; preds = %122, %96
  %102 = load i64, i64* %19, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %19, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i64 @is_empty_rec(%struct.TYPE_19__* %106, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = load i64, i64* %19, align 8
  %116 = sub nsw i64 %115, 1
  %117 = call i64 @is_func_rec(%struct.TYPE_19__* %113, %struct.TYPE_17__* %114, i64 %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %111, %104, %101
  %121 = phi i1 [ false, %104 ], [ false, %101 ], [ %119, %111 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i64, i64* %19, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %19, align 8
  br label %101

125:                                              ; preds = %120
  %126 = load i64, i64* %19, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 0, i64* %19, align 8
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* %19, align 8
  %137 = sub nsw i64 %135, %136
  %138 = sub nsw i64 %134, %137
  %139 = call i64 @XDL_MAX(i64 %138, i32 0)
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %19, align 8
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %133, %129
  br label %142

142:                                              ; preds = %141, %35
  br label %143

143:                                              ; preds = %293, %142, %86
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %154, %158
  %160 = sub nsw i64 %151, %159
  %161 = trunc i64 %160 to i32
  %162 = call i64 @XDL_MIN(i64 %147, i32 %161)
  store i64 %162, i64* %14, align 8
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %170, %174
  %176 = sub nsw i64 %167, %175
  %177 = trunc i64 %176 to i32
  %178 = call i64 @XDL_MIN(i64 %163, i32 %177)
  store i64 %178, i64* %14, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %181, %185
  %187 = load i64, i64* %14, align 8
  %188 = add nsw i64 %186, %187
  store i64 %188, i64* %12, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %191, %195
  %197 = load i64, i64* %14, align 8
  %198 = add nsw i64 %196, %197
  store i64 %198, i64* %13, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @XDL_EMIT_FUNCCONTEXT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %299

205:                                              ; preds = %143
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %210, %214
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @get_func_line(%struct.TYPE_16__* %206, %struct.TYPE_17__* %207, %struct.func_line* null, i64 %215, i64 %219)
  store i64 %220, i64* %22, align 8
  br label %221

221:                                              ; preds = %233, %205
  %222 = load i64, i64* %22, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i64, i64* %22, align 8
  %228 = sub nsw i64 %227, 1
  %229 = call i64 @is_empty_rec(%struct.TYPE_19__* %226, i64 %228)
  %230 = icmp ne i64 %229, 0
  br label %231

231:                                              ; preds = %224, %221
  %232 = phi i1 [ false, %221 ], [ %230, %224 ]
  br i1 %232, label %233, label %236

233:                                              ; preds = %231
  %234 = load i64, i64* %22, align 8
  %235 = add nsw i64 %234, -1
  store i64 %235, i64* %22, align 8
  br label %221

236:                                              ; preds = %231
  %237 = load i64, i64* %22, align 8
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %22, align 8
  br label %244

244:                                              ; preds = %239, %236
  %245 = load i64, i64* %22, align 8
  %246 = load i64, i64* %12, align 8
  %247 = icmp sgt i64 %245, %246
  br i1 %247, label %248, label %261

248:                                              ; preds = %244
  %249 = load i64, i64* %13, align 8
  %250 = load i64, i64* %22, align 8
  %251 = load i64, i64* %12, align 8
  %252 = sub nsw i64 %250, %251
  %253 = add nsw i64 %249, %252
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i64 @XDL_MIN(i64 %253, i32 %258)
  store i64 %259, i64* %13, align 8
  %260 = load i64, i64* %22, align 8
  store i64 %260, i64* %12, align 8
  br label %261

261:                                              ; preds = %248, %244
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = icmp ne %struct.TYPE_18__* %264, null
  br i1 %265, label %266, label %298

266:                                              ; preds = %261
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %275, 1
  %277 = trunc i64 %276 to i32
  %278 = call i64 @XDL_MIN(i64 %271, i32 %277)
  store i64 %278, i64* %23, align 8
  %279 = load i64, i64* %23, align 8
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = sub nsw i64 %279, %282
  %284 = load i64, i64* %12, align 8
  %285 = icmp sle i64 %283, %284
  br i1 %285, label %293, label %286

286:                                              ; preds = %266
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %289 = load i64, i64* %23, align 8
  %290 = load i64, i64* %12, align 8
  %291 = call i64 @get_func_line(%struct.TYPE_16__* %287, %struct.TYPE_17__* %288, %struct.func_line* null, i64 %289, i64 %290)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %286, %266
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 4
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %295, align 8
  store %struct.TYPE_18__* %296, %struct.TYPE_18__** %16, align 8
  br label %143

297:                                              ; preds = %286
  br label %298

298:                                              ; preds = %297, %261
  br label %299

299:                                              ; preds = %298, %143
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @XDL_EMIT_FUNCNAMES, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %299
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %309 = load i64, i64* %10, align 8
  %310 = sub nsw i64 %309, 1
  %311 = load i64, i64* %17, align 8
  %312 = call i64 @get_func_line(%struct.TYPE_16__* %307, %struct.TYPE_17__* %308, %struct.func_line* %18, i64 %310, i64 %311)
  %313 = load i64, i64* %10, align 8
  %314 = sub nsw i64 %313, 1
  store i64 %314, i64* %17, align 8
  br label %315

315:                                              ; preds = %306, %299
  %316 = load i64, i64* %10, align 8
  %317 = add nsw i64 %316, 1
  %318 = load i64, i64* %12, align 8
  %319 = load i64, i64* %10, align 8
  %320 = sub nsw i64 %318, %319
  %321 = load i64, i64* %11, align 8
  %322 = add nsw i64 %321, 1
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* %11, align 8
  %325 = sub nsw i64 %323, %324
  %326 = getelementptr inbounds %struct.func_line, %struct.func_line* %18, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.func_line, %struct.func_line* %18, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = call i64 @xdl_emit_hunk_hdr(i64 %317, i64 %320, i64 %322, i64 %325, i32 %327, i32 %329, i32* %330)
  %332 = icmp slt i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %315
  store i32 -1, i32* %5, align 4
  br label %500

334:                                              ; preds = %315
  br label %335

335:                                              ; preds = %350, %334
  %336 = load i64, i64* %11, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp slt i64 %336, %339
  br i1 %340, label %341, label %353

341:                                              ; preds = %335
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = load i64, i64* %11, align 8
  %345 = load i32*, i32** %8, align 8
  %346 = call i64 @xdl_emit_record(%struct.TYPE_19__* %343, i64 %344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %345)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %341
  store i32 -1, i32* %5, align 4
  br label %500

349:                                              ; preds = %341
  br label %350

350:                                              ; preds = %349
  %351 = load i64, i64* %11, align 8
  %352 = add nsw i64 %351, 1
  store i64 %352, i64* %11, align 8
  br label %335

353:                                              ; preds = %335
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  store i64 %356, i64* %10, align 8
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %11, align 8
  br label %360

360:                                              ; preds = %465, %353
  br label %361

361:                                              ; preds = %384, %360
  %362 = load i64, i64* %10, align 8
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp slt i64 %362, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %361
  %368 = load i64, i64* %11, align 8
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp slt i64 %368, %371
  br label %373

373:                                              ; preds = %367, %361
  %374 = phi i1 [ false, %361 ], [ %372, %367 ]
  br i1 %374, label %375, label %389

375:                                              ; preds = %373
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 0
  %378 = load i64, i64* %11, align 8
  %379 = load i32*, i32** %8, align 8
  %380 = call i64 @xdl_emit_record(%struct.TYPE_19__* %377, i64 %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %379)
  %381 = icmp slt i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %375
  store i32 -1, i32* %5, align 4
  br label %500

383:                                              ; preds = %375
  br label %384

384:                                              ; preds = %383
  %385 = load i64, i64* %10, align 8
  %386 = add nsw i64 %385, 1
  store i64 %386, i64* %10, align 8
  %387 = load i64, i64* %11, align 8
  %388 = add nsw i64 %387, 1
  store i64 %388, i64* %11, align 8
  br label %361

389:                                              ; preds = %373
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %10, align 8
  br label %393

393:                                              ; preds = %413, %389
  %394 = load i64, i64* %10, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %397, %401
  %403 = icmp slt i64 %394, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %393
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  %407 = load i64, i64* %10, align 8
  %408 = load i32*, i32** %8, align 8
  %409 = call i64 @xdl_emit_record(%struct.TYPE_19__* %406, i64 %407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %408)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %404
  store i32 -1, i32* %5, align 4
  br label %500

412:                                              ; preds = %404
  br label %413

413:                                              ; preds = %412
  %414 = load i64, i64* %10, align 8
  %415 = add nsw i64 %414, 1
  store i64 %415, i64* %10, align 8
  br label %393

416:                                              ; preds = %393
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %11, align 8
  br label %420

420:                                              ; preds = %440, %416
  %421 = load i64, i64* %11, align 8
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %424, %428
  %430 = icmp slt i64 %421, %429
  br i1 %430, label %431, label %443

431:                                              ; preds = %420
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 0
  %434 = load i64, i64* %11, align 8
  %435 = load i32*, i32** %8, align 8
  %436 = call i64 @xdl_emit_record(%struct.TYPE_19__* %433, i64 %434, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %435)
  %437 = icmp slt i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %431
  store i32 -1, i32* %5, align 4
  br label %500

439:                                              ; preds = %431
  br label %440

440:                                              ; preds = %439
  %441 = load i64, i64* %11, align 8
  %442 = add nsw i64 %441, 1
  store i64 %442, i64* %11, align 8
  br label %420

443:                                              ; preds = %420
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %446 = icmp eq %struct.TYPE_18__* %444, %445
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  br label %469

448:                                              ; preds = %443
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = add nsw i64 %451, %455
  store i64 %456, i64* %10, align 8
  %457 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  %464 = add nsw i64 %459, %463
  store i64 %464, i64* %11, align 8
  br label %465

465:                                              ; preds = %448
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 4
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %467, align 8
  store %struct.TYPE_18__* %468, %struct.TYPE_18__** %15, align 8
  br label %360

469:                                              ; preds = %447
  %470 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %471 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = add nsw i64 %472, %476
  store i64 %477, i64* %11, align 8
  br label %478

478:                                              ; preds = %491, %469
  %479 = load i64, i64* %11, align 8
  %480 = load i64, i64* %13, align 8
  %481 = icmp slt i64 %479, %480
  br i1 %481, label %482, label %494

482:                                              ; preds = %478
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  %485 = load i64, i64* %11, align 8
  %486 = load i32*, i32** %8, align 8
  %487 = call i64 @xdl_emit_record(%struct.TYPE_19__* %484, i64 %485, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %486)
  %488 = icmp slt i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %482
  store i32 -1, i32* %5, align 4
  br label %500

490:                                              ; preds = %482
  br label %491

491:                                              ; preds = %490
  %492 = load i64, i64* %11, align 8
  %493 = add nsw i64 %492, 1
  store i64 %493, i64* %11, align 8
  br label %478

494:                                              ; preds = %478
  br label %495

495:                                              ; preds = %494
  %496 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 4
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %497, align 8
  store %struct.TYPE_18__* %498, %struct.TYPE_18__** %15, align 8
  br label %26

499:                                              ; preds = %34, %26
  store i32 0, i32* %5, align 4
  br label %500

500:                                              ; preds = %499, %489, %438, %411, %382, %348, %333
  %501 = load i32, i32* %5, align 4
  ret i32 %501
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @xdl_get_hunk(%struct.TYPE_18__**, %struct.TYPE_17__*) #2

declare dso_local i64 @XDL_MAX(i64, i32) #2

declare dso_local i64 @is_func_rec(%struct.TYPE_19__*, %struct.TYPE_17__*, i64) #2

declare dso_local i64 @get_func_line(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.func_line*, i64, i64) #2

declare dso_local i64 @is_empty_rec(%struct.TYPE_19__*, i64) #2

declare dso_local i64 @XDL_MIN(i64, i32) #2

declare dso_local i64 @xdl_emit_hunk_hdr(i64, i64, i64, i64, i32, i32, i32*) #2

declare dso_local i64 @xdl_emit_record(%struct.TYPE_19__*, i64, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
