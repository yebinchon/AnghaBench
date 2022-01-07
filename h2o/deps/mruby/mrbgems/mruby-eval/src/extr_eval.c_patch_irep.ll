; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_patch_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-eval/src/extr_eval.c_patch_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32 }

@mrb_insn_size1 = common dso_local global i32* null, align 8
@mrb_insn_size2 = common dso_local global i32* null, align 8
@mrb_insn_size3 = common dso_local global i32* null, align 8
@mrb_insn_size = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*)* @patch_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_irep(i32* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = call i32 @irep_argc(%struct.TYPE_9__* %24)
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %542, %523, %504, %485, %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %552

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  switch i32 %40, label %542 [
    i32 136, label %41
    i32 131, label %61
    i32 137, label %61
    i32 129, label %92
    i32 130, label %156
    i32 132, label %292
    i32 128, label %384
    i32 135, label %485
    i32 134, label %504
    i32 133, label %523
  ]

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = ptrtoint i32* %48 to i32
  %50 = call i64 @PEEK_S(i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %55
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  call void @patch_irep(i32* %51, %struct.TYPE_9__* %57, i32 %59, %struct.TYPE_9__* %60)
  br label %542

61:                                               ; preds = %32, %32
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = ptrtoint i32* %68 to i32
  %70 = call i8* @PEEK_B(i32 %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %10, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = ptrtoint i32* %78 to i32
  %80 = call i8* @PEEK_B(i32 %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %11, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %85, i64 %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  call void @patch_irep(i32* %82, %struct.TYPE_9__* %88, i32 %90, %struct.TYPE_9__* %91)
  br label %542

92:                                               ; preds = %32
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = ptrtoint i32* %99 to i32
  %101 = call i8* @PEEK_B(i32 %100)
  %102 = ptrtoint i8* %101 to i64
  store i64 %102, i64* %11, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = ptrtoint i32* %109 to i32
  %111 = call i8* @PEEK_B(i32 %110)
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %92
  br label %542

115:                                              ; preds = %92
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @search_variable(i32* %116, i32 %122, i32 %123)
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %115
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 132, i32* %133, align 4
  %134 = load i64, i64* %15, align 8
  %135 = lshr i64 %134, 8
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %136, i32* %143, align 4
  %144 = load i64, i64* %15, align 8
  %145 = and i64 %144, 255
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 3
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %146, i32* %153, align 4
  br label %154

154:                                              ; preds = %127, %115
  br label %155

155:                                              ; preds = %154
  br label %542

156:                                              ; preds = %32
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = ptrtoint i32* %163 to i32
  %165 = call i8* @PEEK_B(i32 %164)
  %166 = ptrtoint i8* %165 to i64
  store i64 %166, i64* %10, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = ptrtoint i32* %173 to i32
  %175 = call i8* @PEEK_B(i32 %174)
  %176 = ptrtoint i8* %175 to i64
  store i64 %176, i64* %11, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @potential_upvar_p(%struct.TYPE_10__* %179, i64 %180, i32 %181, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %229

187:                                              ; preds = %156
  %188 = load i32*, i32** %5, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = sub i64 %192, 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i64 @search_variable(i32* %188, i32 %196, i32 %197)
  store i64 %198, i64* %16, align 8
  %199 = load i64, i64* %16, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %187
  store i32 132, i32* %13, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 132, i32* %207, align 4
  %208 = load i64, i64* %16, align 8
  %209 = lshr i64 %208, 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 2
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 %210, i32* %217, align 4
  %218 = load i64, i64* %16, align 8
  %219 = and i64 %218, 255
  %220 = trunc i64 %219 to i32
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 3
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %220, i32* %227, align 4
  br label %228

228:                                              ; preds = %201, %187
  br label %229

229:                                              ; preds = %228, %156
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @potential_upvar_p(%struct.TYPE_10__* %232, i64 %233, i32 %234, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %291

240:                                              ; preds = %229
  %241 = load i32*, i32** %5, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = sub i64 %245, 1
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i64 @search_variable(i32* %241, i32 %249, i32 %250)
  store i64 %251, i64* %17, align 8
  %252 = load i64, i64* %17, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %290

254:                                              ; preds = %240
  store i32 128, i32* %13, align 4
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 128, i32* %260, align 4
  %261 = load i64, i64* %11, align 8
  %262 = trunc i64 %261 to i32
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 %262, i32* %269, align 4
  %270 = load i64, i64* %17, align 8
  %271 = lshr i64 %270, 8
  %272 = trunc i64 %271 to i32
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = add nsw i32 %276, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  store i32 %272, i32* %279, align 4
  %280 = load i64, i64* %17, align 8
  %281 = and i64 %280, 255
  %282 = trunc i64 %281 to i32
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 3
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  store i32 %282, i32* %289, align 4
  br label %290

290:                                              ; preds = %254, %240
  br label %291

291:                                              ; preds = %290, %229
  br label %542

292:                                              ; preds = %32
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  %300 = ptrtoint i32* %299 to i32
  %301 = call i8* @PEEK_B(i32 %300)
  %302 = ptrtoint i8* %301 to i64
  store i64 %302, i64* %10, align 8
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  %310 = ptrtoint i32* %309 to i32
  %311 = call i8* @PEEK_B(i32 %310)
  %312 = ptrtoint i8* %311 to i64
  store i64 %312, i64* %11, align 8
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = getelementptr inbounds i32, i32* %318, i64 3
  %320 = ptrtoint i32* %319 to i32
  %321 = call i8* @PEEK_B(i32 %320)
  store i8* %321, i8** %12, align 8
  %322 = load i8*, i8** %12, align 8
  %323 = getelementptr i8, i8* %322, i64 1
  %324 = ptrtoint i8* %323 to i32
  store i32 %324, i32* %18, align 4
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %329 = call %struct.TYPE_9__* @search_irep(%struct.TYPE_9__* %325, i32 %326, i32 %327, %struct.TYPE_9__* %328)
  store %struct.TYPE_9__* %329, %struct.TYPE_9__** %19, align 8
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %331, align 8
  %333 = load i64, i64* %11, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %335 = call i32 @irep_argc(%struct.TYPE_9__* %334)
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @potential_upvar_p(%struct.TYPE_10__* %332, i64 %333, i32 %335, i32 %338)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %383

341:                                              ; preds = %292
  %342 = load i32*, i32** %5, align 8
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %344, align 8
  %346 = load i64, i64* %11, align 8
  %347 = sub i64 %346, 1
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %7, align 4
  %352 = call i64 @search_variable(i32* %342, i32 %350, i32 %351)
  store i64 %352, i64* %20, align 8
  %353 = load i64, i64* %20, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %382

355:                                              ; preds = %341
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 132, i32* %361, align 4
  %362 = load i64, i64* %20, align 8
  %363 = lshr i64 %362, 8
  %364 = trunc i64 %363 to i32
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 2
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  store i32 %364, i32* %371, align 4
  %372 = load i64, i64* %20, align 8
  %373 = and i64 %372, 255
  %374 = trunc i64 %373 to i32
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 1
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %378, 3
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  store i32 %374, i32* %381, align 4
  br label %382

382:                                              ; preds = %355, %341
  br label %383

383:                                              ; preds = %382, %292
  br label %542

384:                                              ; preds = %32
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  %392 = ptrtoint i32* %391 to i32
  %393 = call i8* @PEEK_B(i32 %392)
  %394 = ptrtoint i8* %393 to i64
  store i64 %394, i64* %10, align 8
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = getelementptr inbounds i32, i32* %400, i64 2
  %402 = ptrtoint i32* %401 to i32
  %403 = call i8* @PEEK_B(i32 %402)
  %404 = ptrtoint i8* %403 to i64
  store i64 %404, i64* %11, align 8
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 1
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = getelementptr inbounds i32, i32* %410, i64 3
  %412 = ptrtoint i32* %411 to i32
  %413 = call i8* @PEEK_B(i32 %412)
  store i8* %413, i8** %12, align 8
  %414 = load i8*, i8** %12, align 8
  %415 = getelementptr i8, i8* %414, i64 1
  %416 = ptrtoint i8* %415 to i32
  store i32 %416, i32* %21, align 4
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* %21, align 4
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %421 = call %struct.TYPE_9__* @search_irep(%struct.TYPE_9__* %417, i32 %418, i32 %419, %struct.TYPE_9__* %420)
  store %struct.TYPE_9__* %421, %struct.TYPE_9__** %22, align 8
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 2
  %424 = load %struct.TYPE_10__*, %struct.TYPE_10__** %423, align 8
  %425 = load i64, i64* %11, align 8
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %427 = call i32 @irep_argc(%struct.TYPE_9__* %426)
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @potential_upvar_p(%struct.TYPE_10__* %424, i64 %425, i32 %427, i32 %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %484

433:                                              ; preds = %384
  %434 = load i32*, i32** %5, align 8
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 2
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %436, align 8
  %438 = load i64, i64* %11, align 8
  %439 = sub i64 %438, 1
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* %7, align 4
  %444 = call i64 @search_variable(i32* %434, i32 %442, i32 %443)
  store i64 %444, i64* %23, align 8
  %445 = load i64, i64* %23, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %483

447:                                              ; preds = %433
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %9, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  store i32 128, i32* %453, align 4
  %454 = load i64, i64* %10, align 8
  %455 = trunc i64 %454 to i32
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %9, align 4
  %460 = add nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %458, i64 %461
  store i32 %455, i32* %462, align 4
  %463 = load i64, i64* %23, align 8
  %464 = lshr i64 %463, 8
  %465 = trunc i64 %464 to i32
  %466 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 1
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %9, align 4
  %470 = add nsw i32 %469, 2
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %468, i64 %471
  store i32 %465, i32* %472, align 4
  %473 = load i64, i64* %23, align 8
  %474 = and i64 %473, 255
  %475 = trunc i64 %474 to i32
  %476 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 1
  %478 = load i32*, i32** %477, align 8
  %479 = load i32, i32* %9, align 4
  %480 = add nsw i32 %479, 3
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  store i32 %475, i32* %482, align 4
  br label %483

483:                                              ; preds = %447, %433
  br label %484

484:                                              ; preds = %483, %384
  br label %542

485:                                              ; preds = %32
  %486 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 1
  %488 = load i32*, i32** %487, align 8
  %489 = load i32, i32* %9, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = getelementptr inbounds i32, i32* %491, i64 1
  %493 = ptrtoint i32* %492 to i32
  %494 = call i8* @PEEK_B(i32 %493)
  %495 = ptrtoint i8* %494 to i32
  store i32 %495, i32* %13, align 4
  %496 = load i32*, i32** @mrb_insn_size1, align 8
  %497 = load i32, i32* %13, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %496, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = add nsw i32 %500, 1
  %502 = load i32, i32* %9, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* %9, align 4
  br label %26

504:                                              ; preds = %32
  %505 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i32*, i32** %506, align 8
  %508 = load i32, i32* %9, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = getelementptr inbounds i32, i32* %510, i64 1
  %512 = ptrtoint i32* %511 to i32
  %513 = call i8* @PEEK_B(i32 %512)
  %514 = ptrtoint i8* %513 to i32
  store i32 %514, i32* %13, align 4
  %515 = load i32*, i32** @mrb_insn_size2, align 8
  %516 = load i32, i32* %13, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %519, 1
  %521 = load i32, i32* %9, align 4
  %522 = add nsw i32 %521, %520
  store i32 %522, i32* %9, align 4
  br label %26

523:                                              ; preds = %32
  %524 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = load i32, i32* %9, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  %530 = getelementptr inbounds i32, i32* %529, i64 1
  %531 = ptrtoint i32* %530 to i32
  %532 = call i8* @PEEK_B(i32 %531)
  %533 = ptrtoint i8* %532 to i32
  store i32 %533, i32* %13, align 4
  %534 = load i32*, i32** @mrb_insn_size3, align 8
  %535 = load i32, i32* %13, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %534, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %538, 1
  %540 = load i32, i32* %9, align 4
  %541 = add nsw i32 %540, %539
  store i32 %541, i32* %9, align 4
  br label %26

542:                                              ; preds = %32, %484, %383, %291, %155, %114, %61, %41
  %543 = load i64*, i64** @mrb_insn_size, align 8
  %544 = load i32, i32* %13, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i64, i64* %543, i64 %545
  %547 = load i64, i64* %546, align 8
  %548 = load i32, i32* %9, align 4
  %549 = sext i32 %548 to i64
  %550 = add nsw i64 %549, %547
  %551 = trunc i64 %550 to i32
  store i32 %551, i32* %9, align 4
  br label %26

552:                                              ; preds = %26
  ret void
}

declare dso_local i32 @irep_argc(%struct.TYPE_9__*) #1

declare dso_local i64 @PEEK_S(i32) #1

declare dso_local i8* @PEEK_B(i32) #1

declare dso_local i64 @search_variable(i32*, i32, i32) #1

declare dso_local i32 @potential_upvar_p(%struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_9__* @search_irep(%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
