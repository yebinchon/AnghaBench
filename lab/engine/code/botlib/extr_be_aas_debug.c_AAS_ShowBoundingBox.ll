; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowBoundingBox.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_debug.c_AAS_ShowBoundingBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i32, i64*, i64*, i32)* }

@MAX_DEBUGLINES = common dso_local global i32 0, align 4
@debuglines = common dso_local global i32* null, align 8
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@qtrue = common dso_local global i64 0, align 8
@debuglinevisible = common dso_local global i64* null, align 8
@numdebuglines = common dso_local global i32 0, align 4
@LINECOLOR_RED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_ShowBoundingBox(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [8 x i64*], align 16
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 0
  %20 = load i64*, i64** %19, align 16
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %18, i64* %21, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 0
  %30 = load i64*, i64** %29, align 16
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %28, i64* %31, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 0
  %40 = load i64*, i64** %39, align 16
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64 %38, i64* %41, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %48, i64* %51, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 %58, i64* %61, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 1
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  store i64 %68, i64* %71, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 2
  %80 = load i64*, i64** %79, align 16
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %78, i64* %81, align 8
  %82 = load i64*, i64** %4, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 2
  %90 = load i64*, i64** %89, align 16
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  store i64 %88, i64* %91, align 8
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 2
  %100 = load i64*, i64** %99, align 16
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  store i64 %98, i64* %101, align 8
  %102 = load i64*, i64** %4, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 3
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 %108, i64* %111, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %5, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 3
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 %118, i64* %121, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %6, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 3
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  store i64 %128, i64* %131, align 8
  %132 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 4
  %133 = load i64*, i64** %132, align 16
  %134 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 0
  %135 = load i64*, i64** %134, align 16
  %136 = call i32 @Com_Memcpy(i64* %133, i64* %135, i32 32)
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %154, %3
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %157

140:                                              ; preds = %137
  %141 = load i64*, i64** %4, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %5, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 4, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %150
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 2
  store i64 %147, i64* %153, align 8
  br label %154

154:                                              ; preds = %140
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %137

157:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %275, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %278

161:                                              ; preds = %158
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %225, %161
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @MAX_DEBUGLINES, align 4
  %168 = icmp slt i32 %166, %167
  br label %169

169:                                              ; preds = %165, %162
  %170 = phi i1 [ false, %162 ], [ %168, %165 ]
  br i1 %170, label %171, label %228

171:                                              ; preds = %169
  %172 = load i32*, i32** @debuglines, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %201, label %178

178:                                              ; preds = %171
  %179 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %180 = call i32 (...) %179()
  %181 = load i32*, i32** @debuglines, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = load i32*, i32** @debuglines, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %192
  store i32 %189, i32* %193, align 4
  %194 = load i64, i64* @qtrue, align 8
  %195 = load i64*, i64** @debuglinevisible, align 8
  %196 = load i32, i32* %11, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  store i64 %194, i64* %198, align 8
  %199 = load i32, i32* @numdebuglines, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @numdebuglines, align 4
  br label %224

201:                                              ; preds = %171
  %202 = load i64*, i64** @debuglinevisible, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %223, label %208

208:                                              ; preds = %201
  %209 = load i32*, i32** @debuglines, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %216
  store i32 %213, i32* %217, align 4
  %218 = load i64, i64* @qtrue, align 8
  %219 = load i64*, i64** @debuglinevisible, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 %218, i64* %222, align 8
  br label %223

223:                                              ; preds = %208, %201
  br label %224

224:                                              ; preds = %223, %178
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %162

228:                                              ; preds = %169
  %229 = load i32 (i32, i64*, i64*, i32)*, i32 (i32, i64*, i64*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %233
  %235 = load i64*, i64** %234, align 8
  %236 = load i32, i32* %9, align 4
  %237 = add nsw i32 %236, 1
  %238 = and i32 %237, 3
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %239
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* @LINECOLOR_RED, align 4
  %243 = call i32 %229(i32 %231, i64* %235, i64* %241, i32 %242)
  %244 = load i32 (i32, i64*, i64*, i32)*, i32 (i32, i64*, i64*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 4, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %249
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  %254 = and i32 %253, 3
  %255 = add nsw i32 4, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %256
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* @LINECOLOR_RED, align 4
  %260 = call i32 %244(i32 %246, i64* %251, i64* %258, i32 %259)
  %261 = load i32 (i32, i64*, i64*, i32)*, i32 (i32, i64*, i64*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 1), align 8
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %265
  %267 = load i64*, i64** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 4, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [8 x i64*], [8 x i64*]* %7, i64 0, i64 %270
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* @LINECOLOR_RED, align 4
  %274 = call i32 %261(i32 %263, i64* %267, i64* %272, i32 %273)
  br label %275

275:                                              ; preds = %228
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %9, align 4
  br label %158

278:                                              ; preds = %158
  ret void
}

declare dso_local i32 @Com_Memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
