; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_pick_one_utf8_char.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_pick_one_utf8_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8**, i64*)* @pick_one_utf8_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pick_one_utf8_char(i8** %0, i64* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i64 [ %16, %14 ], [ 999, %17 ]
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %253

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %7, align 1
  store i64 1, i64* %9, align 8
  br label %258

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 224
  %37 = icmp eq i32 %36, 192
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %39, 2
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 192
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 254
  %54 = icmp eq i32 %53, 192
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %41, %38
  br label %253

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 31
  %62 = shl i32 %61, 6
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = and i32 %66, 63
  %68 = or i32 %62, %67
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %7, align 1
  store i64 2, i64* %9, align 8
  br label %257

70:                                               ; preds = %31
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 240
  %76 = icmp eq i32 %75, 224
  br i1 %76, label %77, label %161

77:                                               ; preds = %70
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %78, 3
  br i1 %79, label %139, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 192
  %86 = icmp ne i32 %85, 128
  br i1 %86, label %139, label %87

87:                                               ; preds = %80
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 192
  %93 = icmp ne i32 %92, 128
  br i1 %93, label %139, label %94

94:                                               ; preds = %87
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 224
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 224
  %106 = icmp eq i32 %105, 128
  br i1 %106, label %139, label %107

107:                                              ; preds = %100, %94
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 237
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 224
  %119 = icmp eq i32 %118, 160
  br i1 %119, label %139, label %120

120:                                              ; preds = %113, %107
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %124, 239
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 191
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 254
  %138 = icmp eq i32 %137, 190
  br i1 %138, label %139, label %140

139:                                              ; preds = %132, %113, %100, %87, %80, %77
  br label %253

140:                                              ; preds = %132, %126, %120
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 15
  %146 = shl i32 %145, 12
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 63
  %152 = shl i32 %151, 6
  %153 = or i32 %146, %152
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 63
  %159 = or i32 %153, %158
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %7, align 1
  store i64 3, i64* %9, align 8
  br label %256

161:                                              ; preds = %70
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 248
  %167 = icmp eq i32 %166, 240
  br i1 %167, label %168, label %252

168:                                              ; preds = %161
  %169 = load i64, i64* %8, align 8
  %170 = icmp ult i64 %169, 4
  br i1 %170, label %223, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 192
  %177 = icmp ne i32 %176, 128
  br i1 %177, label %223, label %178

178:                                              ; preds = %171
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 192
  %184 = icmp ne i32 %183, 128
  br i1 %184, label %223, label %185

185:                                              ; preds = %178
  %186 = load i8*, i8** %6, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 3
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, 192
  %191 = icmp ne i32 %190, 128
  br i1 %191, label %223, label %192

192:                                              ; preds = %185
  %193 = load i8*, i8** %6, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %196, 240
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = and i32 %202, 240
  %204 = icmp eq i32 %203, 128
  br i1 %204, label %223, label %205

205:                                              ; preds = %198, %192
  %206 = load i8*, i8** %6, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp eq i32 %209, 244
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load i8*, i8** %6, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp sgt i32 %215, 143
  br i1 %216, label %223, label %217

217:                                              ; preds = %211, %205
  %218 = load i8*, i8** %6, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp sgt i32 %221, 244
  br i1 %222, label %223, label %224

223:                                              ; preds = %217, %211, %198, %185, %178, %171, %168
  br label %253

224:                                              ; preds = %217
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = and i32 %228, 7
  %230 = shl i32 %229, 18
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 63
  %236 = shl i32 %235, 12
  %237 = or i32 %230, %236
  %238 = load i8*, i8** %6, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %241, 63
  %243 = shl i32 %242, 6
  %244 = or i32 %237, %243
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 3
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %248, 63
  %250 = or i32 %244, %249
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %7, align 1
  store i64 4, i64* %9, align 8
  br label %255

252:                                              ; preds = %161
  br label %253

253:                                              ; preds = %252, %223, %139, %55, %22
  %254 = load i8**, i8*** %4, align 8
  store i8* null, i8** %254, align 8
  store i8 0, i8* %3, align 1
  br label %273

255:                                              ; preds = %224
  br label %256

256:                                              ; preds = %255, %140
  br label %257

257:                                              ; preds = %256, %56
  br label %258

258:                                              ; preds = %257, %28
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %9, align 8
  %261 = load i8**, i8*** %4, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 %260
  store i8* %263, i8** %261, align 8
  %264 = load i64*, i64** %5, align 8
  %265 = icmp ne i64* %264, null
  br i1 %265, label %266, label %271

266:                                              ; preds = %259
  %267 = load i64, i64* %8, align 8
  %268 = load i64, i64* %9, align 8
  %269 = sub i64 %267, %268
  %270 = load i64*, i64** %5, align 8
  store i64 %269, i64* %270, align 8
  br label %271

271:                                              ; preds = %266, %259
  %272 = load i8, i8* %7, align 1
  store i8 %272, i8* %3, align 1
  br label %273

273:                                              ; preds = %271, %253
  %274 = load i8, i8* %3, align 1
  ret i8 %274
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
