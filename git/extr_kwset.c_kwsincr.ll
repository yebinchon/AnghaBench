; ModuleID = '/home/carl/AnghaBench/git/extr_kwset.c_kwsincr.c'
source_filename = "/home/carl/AnghaBench/git/extr_kwset.c_kwsincr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kwset = type { i8*, i32, i64, i64, i32, %struct.trie* }
%struct.trie = type { i32, i64, i64, i32*, i32*, %struct.trie*, %struct.tree* }
%struct.tree = type { i8, i32, %struct.trie*, %struct.tree*, %struct.tree* }

@DEPTH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kwsincr(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kwset*, align 8
  %9 = alloca %struct.trie*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.tree*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.tree*, align 8
  %17 = alloca %struct.tree*, align 8
  %18 = alloca %struct.tree*, align 8
  %19 = alloca %struct.tree*, align 8
  %20 = alloca %struct.tree*, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load i32, i32* @DEPTH_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca %struct.tree*, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i32, i32* @DEPTH_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %29 = load i64, i64* %5, align 8
  %30 = inttoptr i64 %29 to %struct.kwset*
  store %struct.kwset* %30, %struct.kwset** %8, align 8
  %31 = load %struct.kwset*, %struct.kwset** %8, align 8
  %32 = getelementptr inbounds %struct.kwset, %struct.kwset* %31, i32 0, i32 5
  %33 = load %struct.trie*, %struct.trie** %32, align 8
  store %struct.trie* %33, %struct.trie** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %466, %3
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %7, align 8
  %40 = icmp ne i64 %38, 0
  br i1 %40, label %41, label %470

41:                                               ; preds = %37
  %42 = load %struct.kwset*, %struct.kwset** %8, align 8
  %43 = getelementptr inbounds %struct.kwset, %struct.kwset* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.kwset*, %struct.kwset** %8, align 8
  %48 = getelementptr inbounds %struct.kwset, %struct.kwset* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @U(i8 signext %52)
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  br label %62

57:                                               ; preds = %41
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %57, %46
  %63 = phi i32 [ %56, %46 ], [ %61, %57 ]
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %10, align 1
  %65 = load %struct.trie*, %struct.trie** %9, align 8
  %66 = getelementptr inbounds %struct.trie, %struct.trie* %65, i32 0, i32 6
  %67 = load %struct.tree*, %struct.tree** %66, align 8
  store %struct.tree* %67, %struct.tree** %11, align 8
  %68 = load %struct.trie*, %struct.trie** %9, align 8
  %69 = getelementptr inbounds %struct.trie, %struct.trie* %68, i32 0, i32 6
  %70 = bitcast %struct.tree** %69 to %struct.tree*
  %71 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 0
  store %struct.tree* %70, %struct.tree** %71, align 16
  %72 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 0, i32* %72, align 16
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %114, %62
  %74 = load %struct.tree*, %struct.tree** %11, align 8
  %75 = icmp ne %struct.tree* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = load %struct.tree*, %struct.tree** %11, align 8
  %80 = getelementptr inbounds %struct.tree, %struct.tree* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %78, %82
  br label %84

84:                                               ; preds = %76, %73
  %85 = phi i1 [ false, %73 ], [ %83, %76 ]
  br i1 %85, label %86, label %115

86:                                               ; preds = %84
  %87 = load %struct.tree*, %struct.tree** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %89
  store %struct.tree* %87, %struct.tree** %90, align 8
  %91 = load i8, i8* %10, align 1
  %92 = zext i8 %91 to i32
  %93 = load %struct.tree*, %struct.tree** %11, align 8
  %94 = getelementptr inbounds %struct.tree, %struct.tree* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %86
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %28, i64 %101
  store i32 0, i32* %102, align 4
  %103 = load %struct.tree*, %struct.tree** %11, align 8
  %104 = getelementptr inbounds %struct.tree, %struct.tree* %103, i32 0, i32 4
  %105 = load %struct.tree*, %struct.tree** %104, align 8
  store %struct.tree* %105, %struct.tree** %11, align 8
  br label %114

106:                                              ; preds = %86
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %28, i64 %109
  store i32 1, i32* %110, align 4
  %111 = load %struct.tree*, %struct.tree** %11, align 8
  %112 = getelementptr inbounds %struct.tree, %struct.tree* %111, i32 0, i32 3
  %113 = load %struct.tree*, %struct.tree** %112, align 8
  store %struct.tree* %113, %struct.tree** %11, align 8
  br label %114

114:                                              ; preds = %106, %98
  br label %73

115:                                              ; preds = %84
  %116 = load %struct.tree*, %struct.tree** %11, align 8
  %117 = icmp ne %struct.tree* %116, null
  br i1 %117, label %466, label %118

118:                                              ; preds = %115
  %119 = load %struct.kwset*, %struct.kwset** %8, align 8
  %120 = getelementptr inbounds %struct.kwset, %struct.kwset* %119, i32 0, i32 4
  %121 = call i64 @obstack_alloc(i32* %120, i32 32)
  %122 = inttoptr i64 %121 to %struct.tree*
  store %struct.tree* %122, %struct.tree** %11, align 8
  %123 = load %struct.tree*, %struct.tree** %11, align 8
  %124 = icmp ne %struct.tree* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %516

126:                                              ; preds = %118
  %127 = load %struct.tree*, %struct.tree** %11, align 8
  %128 = getelementptr inbounds %struct.tree, %struct.tree* %127, i32 0, i32 4
  store %struct.tree* null, %struct.tree** %128, align 8
  %129 = load %struct.tree*, %struct.tree** %11, align 8
  %130 = getelementptr inbounds %struct.tree, %struct.tree* %129, i32 0, i32 3
  store %struct.tree* null, %struct.tree** %130, align 8
  %131 = load %struct.kwset*, %struct.kwset** %8, align 8
  %132 = getelementptr inbounds %struct.kwset, %struct.kwset* %131, i32 0, i32 4
  %133 = call i64 @obstack_alloc(i32* %132, i32 56)
  %134 = inttoptr i64 %133 to %struct.trie*
  %135 = load %struct.tree*, %struct.tree** %11, align 8
  %136 = getelementptr inbounds %struct.tree, %struct.tree* %135, i32 0, i32 2
  store %struct.trie* %134, %struct.trie** %136, align 8
  %137 = load %struct.tree*, %struct.tree** %11, align 8
  %138 = getelementptr inbounds %struct.tree, %struct.tree* %137, i32 0, i32 2
  %139 = load %struct.trie*, %struct.trie** %138, align 8
  %140 = icmp ne %struct.trie* %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %126
  %142 = load %struct.kwset*, %struct.kwset** %8, align 8
  %143 = getelementptr inbounds %struct.kwset, %struct.kwset* %142, i32 0, i32 4
  %144 = load %struct.tree*, %struct.tree** %11, align 8
  %145 = call i32 @obstack_free(i32* %143, %struct.tree* %144)
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %516

146:                                              ; preds = %126
  %147 = load %struct.tree*, %struct.tree** %11, align 8
  %148 = getelementptr inbounds %struct.tree, %struct.tree* %147, i32 0, i32 2
  %149 = load %struct.trie*, %struct.trie** %148, align 8
  %150 = getelementptr inbounds %struct.trie, %struct.trie* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  %151 = load %struct.tree*, %struct.tree** %11, align 8
  %152 = getelementptr inbounds %struct.tree, %struct.tree* %151, i32 0, i32 2
  %153 = load %struct.trie*, %struct.trie** %152, align 8
  %154 = getelementptr inbounds %struct.trie, %struct.trie* %153, i32 0, i32 6
  store %struct.tree* null, %struct.tree** %154, align 8
  %155 = load %struct.trie*, %struct.trie** %9, align 8
  %156 = load %struct.tree*, %struct.tree** %11, align 8
  %157 = getelementptr inbounds %struct.tree, %struct.tree* %156, i32 0, i32 2
  %158 = load %struct.trie*, %struct.trie** %157, align 8
  %159 = getelementptr inbounds %struct.trie, %struct.trie* %158, i32 0, i32 5
  store %struct.trie* %155, %struct.trie** %159, align 8
  %160 = load %struct.tree*, %struct.tree** %11, align 8
  %161 = getelementptr inbounds %struct.tree, %struct.tree* %160, i32 0, i32 2
  %162 = load %struct.trie*, %struct.trie** %161, align 8
  %163 = getelementptr inbounds %struct.trie, %struct.trie* %162, i32 0, i32 4
  store i32* null, i32** %163, align 8
  %164 = load %struct.tree*, %struct.tree** %11, align 8
  %165 = getelementptr inbounds %struct.tree, %struct.tree* %164, i32 0, i32 2
  %166 = load %struct.trie*, %struct.trie** %165, align 8
  %167 = getelementptr inbounds %struct.trie, %struct.trie* %166, i32 0, i32 3
  store i32* null, i32** %167, align 8
  %168 = load %struct.trie*, %struct.trie** %9, align 8
  %169 = getelementptr inbounds %struct.trie, %struct.trie* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = load %struct.tree*, %struct.tree** %11, align 8
  %173 = getelementptr inbounds %struct.tree, %struct.tree* %172, i32 0, i32 2
  %174 = load %struct.trie*, %struct.trie** %173, align 8
  %175 = getelementptr inbounds %struct.trie, %struct.trie* %174, i32 0, i32 1
  store i64 %171, i64* %175, align 8
  %176 = load %struct.tree*, %struct.tree** %11, align 8
  %177 = getelementptr inbounds %struct.tree, %struct.tree* %176, i32 0, i32 2
  %178 = load %struct.trie*, %struct.trie** %177, align 8
  %179 = getelementptr inbounds %struct.trie, %struct.trie* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = load i8, i8* %10, align 1
  %181 = load %struct.tree*, %struct.tree** %11, align 8
  %182 = getelementptr inbounds %struct.tree, %struct.tree* %181, i32 0, i32 0
  store i8 %180, i8* %182, align 8
  %183 = load %struct.tree*, %struct.tree** %11, align 8
  %184 = getelementptr inbounds %struct.tree, %struct.tree* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %28, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %146
  %192 = load %struct.tree*, %struct.tree** %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %194
  %196 = load %struct.tree*, %struct.tree** %195, align 8
  %197 = getelementptr inbounds %struct.tree, %struct.tree* %196, i32 0, i32 4
  store %struct.tree* %192, %struct.tree** %197, align 8
  br label %205

198:                                              ; preds = %146
  %199 = load %struct.tree*, %struct.tree** %11, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %201
  %203 = load %struct.tree*, %struct.tree** %202, align 8
  %204 = getelementptr inbounds %struct.tree, %struct.tree* %203, i32 0, i32 3
  store %struct.tree* %199, %struct.tree** %204, align 8
  br label %205

205:                                              ; preds = %198, %191
  br label %206

206:                                              ; preds = %242, %205
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %211
  %213 = load %struct.tree*, %struct.tree** %212, align 8
  %214 = getelementptr inbounds %struct.tree, %struct.tree* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  br label %218

218:                                              ; preds = %209, %206
  %219 = phi i1 [ false, %206 ], [ %217, %209 ]
  br i1 %219, label %220, label %245

220:                                              ; preds = %218
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %28, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %228
  %230 = load %struct.tree*, %struct.tree** %229, align 8
  %231 = getelementptr inbounds %struct.tree, %struct.tree* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %231, align 4
  br label %242

234:                                              ; preds = %220
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %236
  %238 = load %struct.tree*, %struct.tree** %237, align 8
  %239 = getelementptr inbounds %struct.tree, %struct.tree* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %234, %226
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %12, align 4
  br label %206

245:                                              ; preds = %218
  %246 = load i32, i32* %12, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %465

248:                                              ; preds = %245
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %28, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %248
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %256
  %258 = load %struct.tree*, %struct.tree** %257, align 8
  %259 = getelementptr inbounds %struct.tree, %struct.tree* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %259, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %278, label %263

263:                                              ; preds = %254, %248
  %264 = load i32, i32* %12, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %28, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 1
  br i1 %268, label %269, label %465

269:                                              ; preds = %263
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %271
  %273 = load %struct.tree*, %struct.tree** %272, align 8
  %274 = getelementptr inbounds %struct.tree, %struct.tree* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %465

278:                                              ; preds = %269, %254
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %280
  %282 = load %struct.tree*, %struct.tree** %281, align 8
  %283 = getelementptr inbounds %struct.tree, %struct.tree* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  switch i32 %284, label %439 [
    i32 -2, label %285
    i32 2, label %362
  ]

285:                                              ; preds = %278
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %28, i64 %288
  %290 = load i32, i32* %289, align 4
  switch i32 %290, label %359 [
    i32 0, label %291
    i32 1, label %312
  ]

291:                                              ; preds = %285
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %293
  %295 = load %struct.tree*, %struct.tree** %294, align 8
  store %struct.tree* %295, %struct.tree** %17, align 8
  %296 = load %struct.tree*, %struct.tree** %17, align 8
  %297 = getelementptr inbounds %struct.tree, %struct.tree* %296, i32 0, i32 4
  %298 = load %struct.tree*, %struct.tree** %297, align 8
  store %struct.tree* %298, %struct.tree** %16, align 8
  %299 = load %struct.tree*, %struct.tree** %16, align 8
  %300 = getelementptr inbounds %struct.tree, %struct.tree* %299, i32 0, i32 3
  %301 = load %struct.tree*, %struct.tree** %300, align 8
  store %struct.tree* %301, %struct.tree** %19, align 8
  %302 = load %struct.tree*, %struct.tree** %17, align 8
  %303 = load %struct.tree*, %struct.tree** %16, align 8
  %304 = getelementptr inbounds %struct.tree, %struct.tree* %303, i32 0, i32 3
  store %struct.tree* %302, %struct.tree** %304, align 8
  %305 = load %struct.tree*, %struct.tree** %19, align 8
  %306 = load %struct.tree*, %struct.tree** %17, align 8
  %307 = getelementptr inbounds %struct.tree, %struct.tree* %306, i32 0, i32 4
  store %struct.tree* %305, %struct.tree** %307, align 8
  %308 = load %struct.tree*, %struct.tree** %17, align 8
  %309 = getelementptr inbounds %struct.tree, %struct.tree* %308, i32 0, i32 1
  store i32 0, i32* %309, align 4
  %310 = load %struct.tree*, %struct.tree** %16, align 8
  %311 = getelementptr inbounds %struct.tree, %struct.tree* %310, i32 0, i32 1
  store i32 0, i32* %311, align 4
  br label %361

312:                                              ; preds = %285
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %314
  %316 = load %struct.tree*, %struct.tree** %315, align 8
  store %struct.tree* %316, %struct.tree** %17, align 8
  %317 = load %struct.tree*, %struct.tree** %17, align 8
  %318 = getelementptr inbounds %struct.tree, %struct.tree* %317, i32 0, i32 4
  %319 = load %struct.tree*, %struct.tree** %318, align 8
  store %struct.tree* %319, %struct.tree** %18, align 8
  %320 = load %struct.tree*, %struct.tree** %18, align 8
  %321 = getelementptr inbounds %struct.tree, %struct.tree* %320, i32 0, i32 3
  %322 = load %struct.tree*, %struct.tree** %321, align 8
  store %struct.tree* %322, %struct.tree** %16, align 8
  %323 = load %struct.tree*, %struct.tree** %16, align 8
  %324 = getelementptr inbounds %struct.tree, %struct.tree* %323, i32 0, i32 3
  %325 = load %struct.tree*, %struct.tree** %324, align 8
  store %struct.tree* %325, %struct.tree** %19, align 8
  %326 = load %struct.tree*, %struct.tree** %16, align 8
  %327 = getelementptr inbounds %struct.tree, %struct.tree* %326, i32 0, i32 4
  %328 = load %struct.tree*, %struct.tree** %327, align 8
  store %struct.tree* %328, %struct.tree** %20, align 8
  %329 = load %struct.tree*, %struct.tree** %18, align 8
  %330 = load %struct.tree*, %struct.tree** %16, align 8
  %331 = getelementptr inbounds %struct.tree, %struct.tree* %330, i32 0, i32 4
  store %struct.tree* %329, %struct.tree** %331, align 8
  %332 = load %struct.tree*, %struct.tree** %20, align 8
  %333 = load %struct.tree*, %struct.tree** %18, align 8
  %334 = getelementptr inbounds %struct.tree, %struct.tree* %333, i32 0, i32 3
  store %struct.tree* %332, %struct.tree** %334, align 8
  %335 = load %struct.tree*, %struct.tree** %17, align 8
  %336 = load %struct.tree*, %struct.tree** %16, align 8
  %337 = getelementptr inbounds %struct.tree, %struct.tree* %336, i32 0, i32 3
  store %struct.tree* %335, %struct.tree** %337, align 8
  %338 = load %struct.tree*, %struct.tree** %19, align 8
  %339 = load %struct.tree*, %struct.tree** %17, align 8
  %340 = getelementptr inbounds %struct.tree, %struct.tree* %339, i32 0, i32 4
  store %struct.tree* %338, %struct.tree** %340, align 8
  %341 = load %struct.tree*, %struct.tree** %16, align 8
  %342 = getelementptr inbounds %struct.tree, %struct.tree* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 1
  %345 = zext i1 %344 to i64
  %346 = select i1 %344, i32 0, i32 -1
  %347 = load %struct.tree*, %struct.tree** %18, align 8
  %348 = getelementptr inbounds %struct.tree, %struct.tree* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 4
  %349 = load %struct.tree*, %struct.tree** %16, align 8
  %350 = getelementptr inbounds %struct.tree, %struct.tree* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, -1
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 0, i32 1
  %355 = load %struct.tree*, %struct.tree** %17, align 8
  %356 = getelementptr inbounds %struct.tree, %struct.tree* %355, i32 0, i32 1
  store i32 %354, i32* %356, align 4
  %357 = load %struct.tree*, %struct.tree** %16, align 8
  %358 = getelementptr inbounds %struct.tree, %struct.tree* %357, i32 0, i32 1
  store i32 0, i32* %358, align 4
  br label %361

359:                                              ; preds = %285
  %360 = call i32 (...) @abort() #4
  unreachable

361:                                              ; preds = %312, %291
  br label %441

362:                                              ; preds = %278
  %363 = load i32, i32* %12, align 4
  %364 = add nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %28, i64 %365
  %367 = load i32, i32* %366, align 4
  switch i32 %367, label %436 [
    i32 1, label %368
    i32 0, label %389
  ]

368:                                              ; preds = %362
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %370
  %372 = load %struct.tree*, %struct.tree** %371, align 8
  store %struct.tree* %372, %struct.tree** %18, align 8
  %373 = load %struct.tree*, %struct.tree** %18, align 8
  %374 = getelementptr inbounds %struct.tree, %struct.tree* %373, i32 0, i32 3
  %375 = load %struct.tree*, %struct.tree** %374, align 8
  store %struct.tree* %375, %struct.tree** %16, align 8
  %376 = load %struct.tree*, %struct.tree** %16, align 8
  %377 = getelementptr inbounds %struct.tree, %struct.tree* %376, i32 0, i32 4
  %378 = load %struct.tree*, %struct.tree** %377, align 8
  store %struct.tree* %378, %struct.tree** %20, align 8
  %379 = load %struct.tree*, %struct.tree** %18, align 8
  %380 = load %struct.tree*, %struct.tree** %16, align 8
  %381 = getelementptr inbounds %struct.tree, %struct.tree* %380, i32 0, i32 4
  store %struct.tree* %379, %struct.tree** %381, align 8
  %382 = load %struct.tree*, %struct.tree** %20, align 8
  %383 = load %struct.tree*, %struct.tree** %18, align 8
  %384 = getelementptr inbounds %struct.tree, %struct.tree* %383, i32 0, i32 3
  store %struct.tree* %382, %struct.tree** %384, align 8
  %385 = load %struct.tree*, %struct.tree** %18, align 8
  %386 = getelementptr inbounds %struct.tree, %struct.tree* %385, i32 0, i32 1
  store i32 0, i32* %386, align 4
  %387 = load %struct.tree*, %struct.tree** %16, align 8
  %388 = getelementptr inbounds %struct.tree, %struct.tree* %387, i32 0, i32 1
  store i32 0, i32* %388, align 4
  br label %438

389:                                              ; preds = %362
  %390 = load i32, i32* %12, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %391
  %393 = load %struct.tree*, %struct.tree** %392, align 8
  store %struct.tree* %393, %struct.tree** %18, align 8
  %394 = load %struct.tree*, %struct.tree** %18, align 8
  %395 = getelementptr inbounds %struct.tree, %struct.tree* %394, i32 0, i32 3
  %396 = load %struct.tree*, %struct.tree** %395, align 8
  store %struct.tree* %396, %struct.tree** %17, align 8
  %397 = load %struct.tree*, %struct.tree** %17, align 8
  %398 = getelementptr inbounds %struct.tree, %struct.tree* %397, i32 0, i32 4
  %399 = load %struct.tree*, %struct.tree** %398, align 8
  store %struct.tree* %399, %struct.tree** %16, align 8
  %400 = load %struct.tree*, %struct.tree** %16, align 8
  %401 = getelementptr inbounds %struct.tree, %struct.tree* %400, i32 0, i32 4
  %402 = load %struct.tree*, %struct.tree** %401, align 8
  store %struct.tree* %402, %struct.tree** %20, align 8
  %403 = load %struct.tree*, %struct.tree** %16, align 8
  %404 = getelementptr inbounds %struct.tree, %struct.tree* %403, i32 0, i32 3
  %405 = load %struct.tree*, %struct.tree** %404, align 8
  store %struct.tree* %405, %struct.tree** %19, align 8
  %406 = load %struct.tree*, %struct.tree** %18, align 8
  %407 = load %struct.tree*, %struct.tree** %16, align 8
  %408 = getelementptr inbounds %struct.tree, %struct.tree* %407, i32 0, i32 4
  store %struct.tree* %406, %struct.tree** %408, align 8
  %409 = load %struct.tree*, %struct.tree** %20, align 8
  %410 = load %struct.tree*, %struct.tree** %18, align 8
  %411 = getelementptr inbounds %struct.tree, %struct.tree* %410, i32 0, i32 3
  store %struct.tree* %409, %struct.tree** %411, align 8
  %412 = load %struct.tree*, %struct.tree** %17, align 8
  %413 = load %struct.tree*, %struct.tree** %16, align 8
  %414 = getelementptr inbounds %struct.tree, %struct.tree* %413, i32 0, i32 3
  store %struct.tree* %412, %struct.tree** %414, align 8
  %415 = load %struct.tree*, %struct.tree** %19, align 8
  %416 = load %struct.tree*, %struct.tree** %17, align 8
  %417 = getelementptr inbounds %struct.tree, %struct.tree* %416, i32 0, i32 4
  store %struct.tree* %415, %struct.tree** %417, align 8
  %418 = load %struct.tree*, %struct.tree** %16, align 8
  %419 = getelementptr inbounds %struct.tree, %struct.tree* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 1
  %422 = zext i1 %421 to i64
  %423 = select i1 %421, i32 0, i32 -1
  %424 = load %struct.tree*, %struct.tree** %18, align 8
  %425 = getelementptr inbounds %struct.tree, %struct.tree* %424, i32 0, i32 1
  store i32 %423, i32* %425, align 4
  %426 = load %struct.tree*, %struct.tree** %16, align 8
  %427 = getelementptr inbounds %struct.tree, %struct.tree* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, -1
  %430 = zext i1 %429 to i64
  %431 = select i1 %429, i32 0, i32 1
  %432 = load %struct.tree*, %struct.tree** %17, align 8
  %433 = getelementptr inbounds %struct.tree, %struct.tree* %432, i32 0, i32 1
  store i32 %431, i32* %433, align 4
  %434 = load %struct.tree*, %struct.tree** %16, align 8
  %435 = getelementptr inbounds %struct.tree, %struct.tree* %434, i32 0, i32 1
  store i32 0, i32* %435, align 4
  br label %438

436:                                              ; preds = %362
  %437 = call i32 (...) @abort() #4
  unreachable

438:                                              ; preds = %389, %368
  br label %441

439:                                              ; preds = %278
  %440 = call i32 (...) @abort() #4
  unreachable

441:                                              ; preds = %438, %361
  %442 = load i32, i32* %12, align 4
  %443 = sub nsw i32 %442, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %28, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %456

448:                                              ; preds = %441
  %449 = load %struct.tree*, %struct.tree** %16, align 8
  %450 = load i32, i32* %12, align 4
  %451 = sub nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %452
  %454 = load %struct.tree*, %struct.tree** %453, align 8
  %455 = getelementptr inbounds %struct.tree, %struct.tree* %454, i32 0, i32 4
  store %struct.tree* %449, %struct.tree** %455, align 8
  br label %464

456:                                              ; preds = %441
  %457 = load %struct.tree*, %struct.tree** %16, align 8
  %458 = load i32, i32* %12, align 4
  %459 = sub nsw i32 %458, 1
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.tree*, %struct.tree** %25, i64 %460
  %462 = load %struct.tree*, %struct.tree** %461, align 8
  %463 = getelementptr inbounds %struct.tree, %struct.tree* %462, i32 0, i32 3
  store %struct.tree* %457, %struct.tree** %463, align 8
  br label %464

464:                                              ; preds = %456, %448
  br label %465

465:                                              ; preds = %464, %269, %263, %245
  br label %466

466:                                              ; preds = %465, %115
  %467 = load %struct.tree*, %struct.tree** %11, align 8
  %468 = getelementptr inbounds %struct.tree, %struct.tree* %467, i32 0, i32 2
  %469 = load %struct.trie*, %struct.trie** %468, align 8
  store %struct.trie* %469, %struct.trie** %9, align 8
  br label %37

470:                                              ; preds = %37
  %471 = load %struct.trie*, %struct.trie** %9, align 8
  %472 = getelementptr inbounds %struct.trie, %struct.trie* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %483, label %475

475:                                              ; preds = %470
  %476 = load %struct.kwset*, %struct.kwset** %8, align 8
  %477 = getelementptr inbounds %struct.kwset, %struct.kwset* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = mul nsw i32 2, %478
  %480 = add nsw i32 1, %479
  %481 = load %struct.trie*, %struct.trie** %9, align 8
  %482 = getelementptr inbounds %struct.trie, %struct.trie* %481, i32 0, i32 0
  store i32 %480, i32* %482, align 8
  br label %483

483:                                              ; preds = %475, %470
  %484 = load %struct.kwset*, %struct.kwset** %8, align 8
  %485 = getelementptr inbounds %struct.kwset, %struct.kwset* %484, i32 0, i32 1
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %485, align 8
  %488 = load %struct.trie*, %struct.trie** %9, align 8
  %489 = getelementptr inbounds %struct.trie, %struct.trie* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = load %struct.kwset*, %struct.kwset** %8, align 8
  %492 = getelementptr inbounds %struct.kwset, %struct.kwset* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = icmp slt i64 %490, %493
  br i1 %494, label %495, label %501

495:                                              ; preds = %483
  %496 = load %struct.trie*, %struct.trie** %9, align 8
  %497 = getelementptr inbounds %struct.trie, %struct.trie* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.kwset*, %struct.kwset** %8, align 8
  %500 = getelementptr inbounds %struct.kwset, %struct.kwset* %499, i32 0, i32 2
  store i64 %498, i64* %500, align 8
  br label %501

501:                                              ; preds = %495, %483
  %502 = load %struct.trie*, %struct.trie** %9, align 8
  %503 = getelementptr inbounds %struct.trie, %struct.trie* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.kwset*, %struct.kwset** %8, align 8
  %506 = getelementptr inbounds %struct.kwset, %struct.kwset* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = icmp sgt i64 %504, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %501
  %510 = load %struct.trie*, %struct.trie** %9, align 8
  %511 = getelementptr inbounds %struct.trie, %struct.trie* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.kwset*, %struct.kwset** %8, align 8
  %514 = getelementptr inbounds %struct.kwset, %struct.kwset* %513, i32 0, i32 3
  store i64 %512, i64* %514, align 8
  br label %515

515:                                              ; preds = %509, %501
  store i8* null, i8** %4, align 8
  store i32 1, i32* %21, align 4
  br label %516

516:                                              ; preds = %515, %141, %125
  %517 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %517)
  %518 = load i8*, i8** %4, align 8
  ret i8* %518
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @U(i8 signext) #2

declare dso_local i64 @obstack_alloc(i32*, i32) #2

declare dso_local i32 @obstack_free(i32*, %struct.tree*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
