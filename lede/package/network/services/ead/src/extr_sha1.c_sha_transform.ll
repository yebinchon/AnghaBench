; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_sha1.c_sha_transform.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_sha1.c_sha_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K1 = common dso_local global i32 0, align 4
@K2 = common dso_local global i32 0, align 4
@K3 = common dso_local global i32 0, align 4
@K4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @sha_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha_transform(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %59, %3
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = load i32, i32* %13, align 4
  %20 = mul nsw i32 4, %19
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 %22, 0
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 24
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 16
  %37 = or i32 %28, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = or i32 %37, %45
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %46, %53
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %18
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %15

62:                                               ; preds = %15
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 64
  br i1 %65, label %66, label %102

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 13
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %72, %78
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %79, %85
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %86, %91
  %93 = call i32 @rol32(i32 %92, i32 1)
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %66
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %63

102:                                              ; preds = %63
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %9, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %10, align 4
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %145, %102
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 20
  br i1 %120, label %121, label %148

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @f1(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* @K1, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @rol32(i32 %128, i32 5)
  %130 = add nsw i32 %127, %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %132, %137
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @rol32(i32 %141, i32 30)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %118

148:                                              ; preds = %118
  br label %149

149:                                              ; preds = %176, %148
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 40
  br i1 %151, label %152, label %179

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @f2(i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* @K2, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @rol32(i32 %159, i32 5)
  %161 = add nsw i32 %158, %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %161, %162
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %163, %168
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @rol32(i32 %172, i32 30)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %152
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %149

179:                                              ; preds = %149
  br label %180

180:                                              ; preds = %207, %179
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %181, 60
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @f3(i32 %184, i32 %185, i32 %186)
  %188 = load i32, i32* @K3, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @rol32(i32 %190, i32 5)
  %192 = add nsw i32 %189, %191
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %194, %199
  store i32 %200, i32* %12, align 4
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @rol32(i32 %203, i32 30)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %183
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %180

210:                                              ; preds = %180
  br label %211

211:                                              ; preds = %238, %210
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %212, 80
  br i1 %213, label %214, label %241

214:                                              ; preds = %211
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @f2(i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* @K4, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @rol32(i32 %221, i32 5)
  %223 = add nsw i32 %220, %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %225, %230
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @rol32(i32 %234, i32 30)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %7, align 4
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %214
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %211

241:                                              ; preds = %211
  %242 = load i32, i32* %7, align 4
  %243 = load i32*, i32** %4, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** %4, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, %252
  store i32 %256, i32* %254, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32*, i32** %4, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, %257
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load i32*, i32** %4, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %262
  store i32 %266, i32* %264, align 4
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @f1(i32, i32, i32) #1

declare dso_local i32 @f2(i32, i32, i32) #1

declare dso_local i32 @f3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
