; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_bitmap.c_bitmap_ctx_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_bitmap.c_bitmap_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@EVENT_BITMAP_FINAL_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_ctx_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %6, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %408

43:                                               ; preds = %1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %408

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %408

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %408

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %408

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %408

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %408

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  store i32 5, i32* %8, align 4
  store i32 13, i32* %9, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  %90 = zext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = call i64 @hcmalloc(i32 %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %12, align 8
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 1, %95
  %97 = zext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i64 @hcmalloc(i32 %99)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 1, %102
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i64 @hcmalloc(i32 %106)
  %108 = inttoptr i64 %107 to i32*
  store i32* %108, i32** %14, align 8
  %109 = load i32, i32* %11, align 4
  %110 = shl i32 1, %109
  %111 = zext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i64 @hcmalloc(i32 %113)
  %115 = inttoptr i64 %114 to i32*
  store i32* %115, i32** %15, align 8
  %116 = load i32, i32* %11, align 4
  %117 = shl i32 1, %116
  %118 = zext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i64 @hcmalloc(i32 %120)
  %122 = inttoptr i64 %121 to i32*
  store i32* %122, i32** %16, align 8
  %123 = load i32, i32* %11, align 4
  %124 = shl i32 1, %123
  %125 = zext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i64 @hcmalloc(i32 %127)
  %129 = inttoptr i64 %128 to i32*
  store i32* %129, i32** %17, align 8
  %130 = load i32, i32* %11, align 4
  %131 = shl i32 1, %130
  %132 = zext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = call i64 @hcmalloc(i32 %134)
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %18, align 8
  %137 = load i32, i32* %11, align 4
  %138 = shl i32 1, %137
  %139 = zext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i64 @hcmalloc(i32 %141)
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %19, align 8
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %241, %79
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %244

149:                                              ; preds = %145
  %150 = load i32, i32* %20, align 4
  %151 = shl i32 1, %150
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = sub i32 %152, 1
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %21, align 4
  %155 = zext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %23, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %22, align 4
  %162 = and i32 %160, %161
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %149
  br label %244

168:                                              ; preds = %149
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load i32*, i32** %14, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = udiv i32 %199, 2
  %201 = call i32 @generate_bitmaps(i32 %171, i32 %174, i32 5, i8* %178, i32 %181, i32 %184, i32 %187, i32 %190, i32 %191, i32 %192, i32* %193, i32* %194, i32* %195, i32* %196, i32 %200)
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %204

203:                                              ; preds = %168
  br label %241

204:                                              ; preds = %168
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* %23, align 4
  %229 = load i32*, i32** %12, align 8
  %230 = load i32*, i32** %13, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = udiv i32 %235, 2
  %237 = call i32 @generate_bitmaps(i32 %207, i32 %210, i32 13, i8* %214, i32 %217, i32 %220, i32 %223, i32 %226, i32 %227, i32 %228, i32* %229, i32* %230, i32* %231, i32* %232, i32 %236)
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %204
  br label %241

240:                                              ; preds = %204
  br label %244

241:                                              ; preds = %239, %203
  %242 = load i32, i32* %20, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %20, align 4
  br label %145

244:                                              ; preds = %240, %167, %145
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i32, i32* @EVENT_BITMAP_FINAL_OVERFLOW, align 4
  %250 = call i32 @EVENT_DATA(i32 %249, i32* null, i32 0)
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i32, i32* %20, align 4
  %253 = shl i32 1, %252
  store i32 %253, i32* %21, align 4
  %254 = load i32, i32* %21, align 4
  %255 = sub i32 %254, 1
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %21, align 4
  %257 = zext i32 %256 to i64
  %258 = mul i64 %257, 4
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %23, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to i8*
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = load i32*, i32** %13, align 8
  %286 = load i32*, i32** %14, align 8
  %287 = load i32*, i32** %15, align 8
  %288 = call i32 @generate_bitmaps(i32 %262, i32 %265, i32 5, i8* %269, i32 %272, i32 %275, i32 %278, i32 %281, i32 %282, i32 %283, i32* %284, i32* %285, i32* %286, i32* %287, i32 -1)
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i8*
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* %22, align 4
  %312 = load i32, i32* %23, align 4
  %313 = load i32*, i32** %16, align 8
  %314 = load i32*, i32** %17, align 8
  %315 = load i32*, i32** %18, align 8
  %316 = load i32*, i32** %19, align 8
  %317 = call i32 @generate_bitmaps(i32 %291, i32 %294, i32 13, i8* %298, i32 %301, i32 %304, i32 %307, i32 %310, i32 %311, i32 %312, i32* %313, i32* %314, i32* %315, i32* %316, i32 -1)
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 4
  %320 = load i32*, i32** %319, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %367

322:                                              ; preds = %251
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to i8*
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* %22, align 4
  %340 = load i32*, i32** %12, align 8
  %341 = load i32*, i32** %13, align 8
  %342 = load i32*, i32** %14, align 8
  %343 = load i32*, i32** %15, align 8
  %344 = call i32 @selftest_to_bitmap(i32 5, i8* %326, i32 %329, i32 %332, i32 %335, i32 %338, i32 %339, i32* %340, i32* %341, i32* %342, i32* %343)
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = inttoptr i64 %347 to i8*
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* %22, align 4
  %362 = load i32*, i32** %16, align 8
  %363 = load i32*, i32** %17, align 8
  %364 = load i32*, i32** %18, align 8
  %365 = load i32*, i32** %19, align 8
  %366 = call i32 @selftest_to_bitmap(i32 13, i8* %348, i32 %351, i32 %354, i32 %357, i32 %360, i32 %361, i32* %362, i32* %363, i32* %364, i32* %365)
  br label %367

367:                                              ; preds = %322, %251
  %368 = load i32, i32* %20, align 4
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  %371 = load i32, i32* %21, align 4
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  store i32 %371, i32* %373, align 8
  %374 = load i32, i32* %23, align 4
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 3
  store i32 %374, i32* %376, align 4
  %377 = load i32, i32* %22, align 4
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 8
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 5
  store i32 5, i32* %381, align 4
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 6
  store i32 13, i32* %383, align 8
  %384 = load i32*, i32** %12, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 7
  store i32* %384, i32** %386, align 8
  %387 = load i32*, i32** %13, align 8
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 8
  store i32* %387, i32** %389, align 8
  %390 = load i32*, i32** %14, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 9
  store i32* %390, i32** %392, align 8
  %393 = load i32*, i32** %15, align 8
  %394 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 10
  store i32* %393, i32** %395, align 8
  %396 = load i32*, i32** %16, align 8
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 11
  store i32* %396, i32** %398, align 8
  %399 = load i32*, i32** %17, align 8
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 12
  store i32* %399, i32** %401, align 8
  %402 = load i32*, i32** %18, align 8
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 13
  store i32* %402, i32** %404, align 8
  %405 = load i32*, i32** %19, align 8
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 14
  store i32* %405, i32** %407, align 8
  store i32 0, i32* %2, align 4
  br label %408

408:                                              ; preds = %367, %78, %72, %66, %60, %54, %48, %42
  %409 = load i32, i32* %2, align 4
  ret i32 %409
}

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @generate_bitmaps(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVENT_DATA(i32, i32*, i32) #1

declare dso_local i32 @selftest_to_bitmap(i32, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
