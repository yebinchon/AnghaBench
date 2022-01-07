; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_sign_with_k.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/micro-ecc/extr_uECC.c_uECC_sign_with_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@uECC_MAX_WORDS = common dso_local global i32 0, align 4
@g_rng_function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, %struct.TYPE_6__*)* @uECC_sign_with_k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uECC_sign_with_k(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [2 x i32*], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %13, align 8
  %24 = load i32, i32* @uECC_MAX_WORDS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load i32, i32* @uECC_MAX_WORDS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 0
  store i32* %27, i32** %31, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @uECC_MAX_WORDS, align 4
  %34 = mul nsw i32 %33, 2
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %20, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BITS_TO_WORDS(i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %22, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = call i64 @uECC_vli_isZero(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %21, align 4
  %57 = call i32 @uECC_vli_cmp(i32 %54, i32* %55, i32 %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %176

60:                                               ; preds = %51
  %61 = load i32*, i32** %11, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = call i32 @regularize_k(i32* %61, i32* %27, i32* %30, %struct.TYPE_6__* %62)
  store i32 %63, i32* %19, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %22, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %77 = call i32 @EccPoint_mult(i32* %36, i32 %66, i32* %73, i32 0, i32 %75, %struct.TYPE_6__* %76)
  %78 = load i32, i32* %20, align 4
  %79 = call i64 @uECC_vli_isZero(i32* %36, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %176

82:                                               ; preds = %60
  %83 = load i32, i32* @g_rng_function, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @uECC_vli_clear(i32* %27, i32 %86)
  %88 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 1, i32* %88, align 16
  br label %98

89:                                               ; preds = %82
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @uECC_generate_random_int(i32* %27, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %176

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %85
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @uECC_vli_modMult(i32* %99, i32* %100, i32* %27, i32 %103, i32 %104)
  %106 = load i32*, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %21, align 4
  %112 = call i32 @uECC_vli_modInv(i32* %106, i32* %107, i32 %110, i32 %111)
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @uECC_vli_modMult(i32* %113, i32* %114, i32* %27, i32 %117, i32 %118)
  %120 = load i32*, i32** %12, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @uECC_vli_nativeToBytes(i32* %120, i64 %123, i32* %36)
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @BITS_TO_BYTES(i32 %128)
  %130 = call i32 @uECC_vli_bytesToNative(i32* %27, i32* %125, i64 %129)
  %131 = load i32, i32* %21, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %30, i64 %133
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @uECC_vli_set(i32* %30, i32* %36, i32 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @uECC_vli_modMult(i32* %30, i32* %27, i32* %30, i32 %139, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %145 = call i32 @bits2int(i32* %27, i32* %142, i32 %143, %struct.TYPE_6__* %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @uECC_vli_modAdd(i32* %30, i32* %27, i32* %30, i32 %148, i32 %149)
  %151 = load i32*, i32** %11, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @uECC_vli_modMult(i32* %30, i32* %30, i32* %151, i32 %154, i32 %155)
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @uECC_vli_numBits(i32* %30, i32 %157)
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = mul nsw i32 %162, 8
  %164 = icmp sgt i32 %158, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %176

166:                                              ; preds = %98
  %167 = load i32*, i32** %12, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @uECC_vli_nativeToBytes(i32* %171, i64 %174, i32* %30)
  store i32 1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %176

176:                                              ; preds = %166, %165, %96, %81, %59
  %177 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BITS_TO_WORDS(i32) #2

declare dso_local i64 @uECC_vli_isZero(i32*, i32) #2

declare dso_local i32 @uECC_vli_cmp(i32, i32*, i32) #2

declare dso_local i32 @regularize_k(i32*, i32*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @EccPoint_mult(i32*, i32, i32*, i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @uECC_vli_clear(i32*, i32) #2

declare dso_local i32 @uECC_generate_random_int(i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modMult(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_modInv(i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_nativeToBytes(i32*, i64, i32*) #2

declare dso_local i32 @uECC_vli_bytesToNative(i32*, i32*, i64) #2

declare dso_local i64 @BITS_TO_BYTES(i32) #2

declare dso_local i32 @uECC_vli_set(i32*, i32*, i32) #2

declare dso_local i32 @bits2int(i32*, i32*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @uECC_vli_modAdd(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uECC_vli_numBits(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
