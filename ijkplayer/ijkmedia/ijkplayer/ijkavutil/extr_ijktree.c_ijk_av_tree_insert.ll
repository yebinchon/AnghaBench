; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijktree.c_ijk_av_tree_insert.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavutil/extr_ijktree.c_ijk_av_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_5__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ijk_av_tree_insert(%struct.TYPE_5__** %0, i8* %1, i32 (i8*, i8*)* %2, %struct.TYPE_5__** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__**, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store %struct.TYPE_5__** %3, %struct.TYPE_5__*** %9, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %296

21:                                               ; preds = %4
  %22 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 %22(i8* %25, i8* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %86, label %30

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  br label %311

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %45, %38
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 0
  %71 = call i32 @ijk_av_tree_find(%struct.TYPE_5__* %67, i8* %68, i32 (i8*, i8*)* %69, i8** %70)
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %14, i64 0, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store i8* %75, i8** %7, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %84

80:                                               ; preds = %45
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %82, align 8
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %83, align 8
  store i8* null, i8** %5, align 8
  br label %311

84:                                               ; preds = %52
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85, %21
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = lshr i32 %90, 31
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %89, i64 %92
  %94 = load i8*, i8** %7, align 8
  %95 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %97 = call i8* @ijk_av_tree_insert(%struct.TYPE_5__** %93, i8* %94, i32 (i8*, i8*)* %95, %struct.TYPE_5__** %96)
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %294, label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %11, align 4
  %102 = lshr i32 %101, 31
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = xor i32 %102, %108
  store i32 %109, i32* %15, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %114
  store %struct.TYPE_5__** %115, %struct.TYPE_5__*** %16, align 8
  %116 = load i32, i32* %15, align 4
  %117 = mul nsw i32 2, %116
  %118 = sub nsw i32 %117, 1
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 1
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %275, label %128

128:                                              ; preds = %100
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %274

133:                                              ; preds = %128
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %144, label %229

144:                                              ; preds = %133
  %145 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = xor i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %148, i64 %151
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %154, align 8
  %155 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %158, i64 %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = xor i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %166, i64 %169
  store %struct.TYPE_5__* %162, %struct.TYPE_5__** %170, align 8
  %171 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %176, i64 %178
  store %struct.TYPE_5__* %172, %struct.TYPE_5__** %179, align 8
  %180 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = xor i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %183, i64 %186
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  store %struct.TYPE_5__* %188, %struct.TYPE_5__** %189, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %191 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %193, align 8
  %195 = load i32, i32* %15, align 4
  %196 = xor i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %194, i64 %197
  store %struct.TYPE_5__* %190, %struct.TYPE_5__** %198, align 8
  %199 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp sgt i32 %202, 0
  %204 = zext i1 %203 to i32
  %205 = sub nsw i32 0, %204
  %206 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %209, i64 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  store i32 %205, i32* %212, align 8
  %213 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %216, 0
  %218 = zext i1 %217 to i32
  %219 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %222, i64 1
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  store i32 %218, i32* %225, align 8
  %226 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i32 0, i32* %228, align 8
  br label %273

229:                                              ; preds = %133
  %230 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %231, %struct.TYPE_5__** %232, align 8
  %233 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = xor i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %236, i64 %239
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %16, align 8
  store %struct.TYPE_5__* %241, %struct.TYPE_5__** %242, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %244 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %246, align 8
  %248 = load i32, i32* %15, align 4
  %249 = xor i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %247, i64 %250
  store %struct.TYPE_5__* %243, %struct.TYPE_5__** %251, align 8
  %252 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %229
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  store i32 0, i32* %259, align 8
  br label %265

260:                                              ; preds = %229
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = ashr i32 %263, 1
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %260, %257
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 0, %268
  %270 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  store i32 %269, i32* %272, align 8
  br label %273

273:                                              ; preds = %265, %144
  br label %274

274:                                              ; preds = %273, %128
  br label %275

275:                                              ; preds = %274, %100
  %276 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp ne i32 %279, 0
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %283, align 8
  %285 = icmp ne %struct.TYPE_5__* %284, null
  %286 = xor i1 %285, true
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = xor i32 %282, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %275
  %292 = load i8*, i8** %7, align 8
  store i8* %292, i8** %5, align 8
  br label %311

293:                                              ; preds = %275
  br label %294

294:                                              ; preds = %293, %86
  %295 = load i8*, i8** %12, align 8
  store i8* %295, i8** %5, align 8
  br label %311

296:                                              ; preds = %4
  %297 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %297, align 8
  %299 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  store %struct.TYPE_5__* %298, %struct.TYPE_5__** %299, align 8
  %300 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %300, align 8
  %301 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = icmp ne %struct.TYPE_5__* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %296
  %305 = load i8*, i8** %7, align 8
  %306 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  store i8* %305, i8** %308, align 8
  store i8* null, i8** %5, align 8
  br label %311

309:                                              ; preds = %296
  %310 = load i8*, i8** %7, align 8
  store i8* %310, i8** %5, align 8
  br label %311

311:                                              ; preds = %309, %304, %294, %291, %80, %34
  %312 = load i8*, i8** %5, align 8
  ret i8* %312
}

declare dso_local i32 @ijk_av_tree_find(%struct.TYPE_5__*, i8*, i32 (i8*, i8*)*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
