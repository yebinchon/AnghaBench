; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_rotate_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_rotate_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_only = common dso_local global i64 0, align 8
@location_buf = common dso_local global i8* null, align 8
@mode = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_rotate_photo(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %37, label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @check_photo_id(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %30
  store i32 0, i32* %4, align 4
  br label %277

38:                                               ; preds = %33
  %39 = load i64, i64* @write_only, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %277

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @user_loaded(i32* %43)
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @user_photo_get_location(i32* %46, i32 %47, i32 0, i32 1, i32* %8)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %277

52:                                               ; preds = %42
  %53 = load i8*, i8** @location_buf, align 8
  store i8* %53, i8** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %156

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %156

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8, i8* @mode, align 1
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 0, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 %71, 16
  %73 = add i64 %72, 1
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 -1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 49
  br i1 %91, label %92, label %120

92:                                               ; preds = %62
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 %96, 51
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 -2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sge i32 %102, 119
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 -2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 122
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 -1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  store i32 %114, i32* %12, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 -1
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** @location_buf, align 8
  %118 = load i8, i8* %117, align 1
  %119 = add i8 %118, 1
  store i8 %119, i8* %117, align 1
  br label %120

120:                                              ; preds = %110, %104, %98, %92, %62
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp slt i32 %124, 119
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 -1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sgt i32 %130, 122
  br i1 %131, label %132, label %138

132:                                              ; preds = %126, %120
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %10, align 8
  store i8 120, i8* %133, align 1
  %135 = load i8*, i8** @location_buf, align 8
  %136 = load i8, i8* %135, align 1
  %137 = add i8 %136, -1
  store i8 %137, i8* %135, align 1
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = srem i32 %142, 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %138
  %146 = load i32, i32* %12, align 4
  %147 = srem i32 %146, 4
  %148 = add nsw i32 48, %147
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %10, align 8
  store i8 %149, i8* %150, align 1
  %152 = load i8*, i8** @location_buf, align 8
  %153 = load i8, i8* %152, align 1
  %154 = add i8 %153, -1
  store i8 %154, i8* %152, align 1
  br label %155

155:                                              ; preds = %145, %138
  br label %156

156:                                              ; preds = %155, %56, %52
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %10, align 8
  store i8* %157, i8** %13, align 8
  store i8 0, i8* %14, align 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8 0, i8* %18, align 1
  %159 = load i8*, i8** %9, align 8
  store i8* %159, i8** %19, align 8
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %244, %156
  %161 = load i32, i32* %15, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %247

163:                                              ; preds = %160
  %164 = load i8*, i8** %19, align 8
  store i8* %164, i8** %9, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i8 0, i8* %24, align 1
  store i64 0, i64* %26, align 8
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %9, align 8
  %170 = load i8, i8* %168, align 1
  %171 = sext i8 %170 to i32
  br label %173

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %167
  %174 = phi i32 [ %171, %167 ], [ 0, %172 ]
  store i32 %174, i32* %23, align 4
  br label %175

175:                                              ; preds = %240, %173
  %176 = load i32, i32* %23, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %243

178:                                              ; preds = %175
  %179 = load i8*, i8** %9, align 8
  %180 = load i8, i8* %24, align 1
  %181 = call i32 @READ_CHAR(i8* %179, i8 signext %180)
  %182 = load i8, i8* %24, align 1
  %183 = sext i8 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load i8, i8* %24, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %178
  %189 = load i8, i8* %24, align 1
  %190 = sext i8 %189 to i32
  %191 = mul nsw i32 %190, -1
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %24, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i8, i8* %25, align 1
  %195 = call i32 @READ_CHAR(i8* %193, i8 signext %194)
  %196 = load i8, i8* %25, align 1
  %197 = sext i8 %196 to i32
  %198 = load i32, i32* %21, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %21, align 4
  br label %207

200:                                              ; preds = %178
  %201 = load i8*, i8** %9, align 8
  %202 = load i32, i32* %20, align 4
  %203 = call i32 @READ_INT(i8* %201, i32 %202)
  %204 = load i8*, i8** %9, align 8
  %205 = load i32, i32* %21, align 4
  %206 = call i32 @READ_INT(i8* %204, i32 %205)
  br label %207

207:                                              ; preds = %200, %188
  %208 = load i8*, i8** %9, align 8
  %209 = load i32, i32* %22, align 4
  %210 = call i32 @READ_INT(i8* %208, i32 %209)
  %211 = load i8*, i8** %9, align 8
  %212 = load i64, i64* %26, align 8
  %213 = call i32 @READ_LONG(i8* %211, i64 %212)
  %214 = load i8, i8* %24, align 1
  %215 = sext i8 %214 to i32
  %216 = ashr i32 %215, 5
  %217 = load i32, i32* %7, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %27, align 4
  %219 = load i32, i32* %27, align 4
  %220 = icmp sge i32 %219, 4
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %15, align 4
  %223 = xor i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %207
  %226 = load i8*, i8** %10, align 8
  %227 = load i32, i32* %27, align 4
  %228 = and i32 %227, 3
  %229 = shl i32 %228, 5
  %230 = load i8, i8* %24, align 1
  %231 = sext i8 %230 to i32
  %232 = and i32 %231, 31
  %233 = add nsw i32 %229, %232
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i64, i64* %26, align 8
  %238 = call i32 @save_location(i8* %226, i32 %233, i32 %234, i32 %235, i32 %236, i64 %237)
  br label %239

239:                                              ; preds = %225, %207
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %23, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %23, align 4
  br label %175

243:                                              ; preds = %175
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  br label %160

247:                                              ; preds = %160
  %248 = load i8, i8* %14, align 1
  %249 = load i8*, i8** %13, align 8
  store i8 %248, i8* %249, align 1
  %250 = load i32, i32* %8, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load i8, i8* %14, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %252, %247
  %257 = load i8*, i8** %19, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = load i8, i8* %14, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %259, %261
  br label %263

263:                                              ; preds = %256, %252
  %264 = phi i1 [ true, %252 ], [ %262, %256 ]
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load i32*, i32** %5, align 8
  %268 = load i32, i32* %6, align 4
  %269 = load i8*, i8** @location_buf, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = load i8*, i8** @location_buf, align 8
  %272 = ptrtoint i8* %270 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = trunc i64 %274 to i32
  %276 = call i32 @user_photo_set_location(i32* %267, i32 %268, i32 0, i8* %269, i32 %275)
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %263, %51, %41, %37
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i8* @user_photo_get_location(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @READ_CHAR(i8*, i8 signext) #1

declare dso_local i32 @READ_INT(i8*, i32) #1

declare dso_local i32 @READ_LONG(i8*, i64) #1

declare dso_local i32 @save_location(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @user_photo_set_location(i32*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
