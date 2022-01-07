; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_MipMapNormalHeight.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_MipMapNormalHeight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i64)* @R_MipMapNormalHeight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_MipMapNormalHeight(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 3, i32 0
  store i32 %20, i32* %14, align 4
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 3
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %234

31:                                               ; preds = %27, %5
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %227, %31
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %234

42:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %219, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %226

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @OffsetByteToFloat(i32 %52)
  %54 = load i64*, i64** %16, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %53, i64* %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @OffsetByteToFloat(i32 %58)
  %60 = load i64*, i64** %16, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 %59, i64* %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @OffsetByteToFloat(i32 %64)
  %66 = load i64*, i64** %16, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  store i64 %65, i64* %67, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @OffsetByteToFloat(i32 %73)
  %75 = load i64*, i64** %16, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @OffsetByteToFloat(i32 %81)
  %83 = load i64*, i64** %16, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @OffsetByteToFloat(i32 %89)
  %91 = load i64*, i64** %16, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @OffsetByteToFloat(i32 %101)
  %103 = load i64*, i64** %16, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @OffsetByteToFloat(i32 %112)
  %114 = load i64*, i64** %16, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @OffsetByteToFloat(i32 %123)
  %125 = load i64*, i64** %16, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %130, %131
  %133 = add nsw i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @OffsetByteToFloat(i32 %136)
  %138 = load i64*, i64** %16, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 5
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @OffsetByteToFloat(i32 %147)
  %149 = load i64*, i64** %16, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %148
  store i64 %152, i64* %150, align 8
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 6
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @OffsetByteToFloat(i32 %158)
  %160 = load i64*, i64** %16, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load i64*, i64** %16, align 8
  %165 = call i32 @VectorNormalizeFast(i64* %164)
  %166 = load i64*, i64** %16, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @FloatToOffsetByte(i64 %168)
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  %174 = load i64*, i64** %16, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @FloatToOffsetByte(i64 %176)
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load i64*, i64** %16, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 2
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @FloatToOffsetByte(i64 %182)
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @MAX(i32 %190, i32 %196)
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %198, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %206, %207
  %209 = add nsw i32 %208, 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %205, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @MAX(i32 %204, i32 %212)
  %214 = call i32 @MAX(i32 %197, i32 %213)
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  br label %219

219:                                              ; preds = %47
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  store i32* %223, i32** %7, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 8
  store i32* %225, i32** %6, align 8
  br label %43

226:                                              ; preds = %43
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32* %233, i32** %6, align 8
  br label %38

234:                                              ; preds = %30, %38
  ret void
}

declare dso_local i64 @OffsetByteToFloat(i32) #1

declare dso_local i32 @VectorNormalizeFast(i64*) #1

declare dso_local i32 @FloatToOffsetByte(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
