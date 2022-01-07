; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_crypt_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_crypt_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i64, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.crypto_aes_ctx = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, i32*, i32*, %struct.crypto_aes_ctx*, i32)* @ccm_crypt_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccm_crypt_fallback(%struct.skcipher_walk* %0, i32* %1, i32* %2, %struct.crypto_aes_ctx* %3, i32 %4) #0 {
  %6 = alloca %struct.skcipher_walk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.crypto_aes_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.crypto_aes_ctx* %3, %struct.crypto_aes_ctx** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %126, %5
  %25 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %130

29:                                               ; preds = %24
  %30 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %31 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %39 = srem i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %15, align 8
  %41 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %42 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  %46 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %47 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %17, align 8
  %51 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %52 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %18, align 8
  %55 = load i64, i64* %18, align 8
  %56 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %57 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %29
  %61 = load i64, i64* %15, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %66

66:                                               ; preds = %63, %60, %29
  br label %67

67:                                               ; preds = %122, %66
  %68 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i64, i64* %18, align 8
  store i64 %75, i64* %19, align 8
  br label %76

76:                                               ; preds = %74, %67
  %77 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %78 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %81 = call i32 @crypto_inc(i32* %79, i32 %80)
  %82 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %9, align 8
  %83 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %84 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %82, i32* %23, i32* %85)
  %87 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %9, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %87, i32* %88, i32* %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %76
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i64, i64* %19, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @crypto_xor(i32* %94, i32* %95, i32 %97)
  br label %99

99:                                               ; preds = %93, %76
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = load i64, i64* %19, align 8
  %103 = call i32 @crypto_xor_cpy(i32* %100, i32* %101, i32* %23, i64 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i64, i64* %19, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @crypto_xor(i32* %107, i32* %108, i32 %110)
  br label %112

112:                                              ; preds = %106, %99
  %113 = load i64, i64* %19, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %16, align 8
  %116 = load i64, i64* %19, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 %116
  store i32* %118, i32** %17, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %18, align 8
  %121 = sub nsw i64 %120, %119
  store i64 %121, i64* %18, align 8
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %67, label %126

126:                                              ; preds = %122
  %127 = load %struct.skcipher_walk*, %struct.skcipher_walk** %6, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %127, i64 %128)
  store i32 %129, i32* %13, align 4
  br label %24

130:                                              ; preds = %24
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %9, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %134, i32* %23, i32* %135)
  %137 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %9, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %137, i32* %138, i32* %139)
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %143 = call i32 @crypto_xor(i32* %141, i32* %23, i32 %142)
  br label %144

144:                                              ; preds = %133, %130
  %145 = load i32, i32* %13, align 4
  %146 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %146)
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_inc(i32*, i32) #2

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #2

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #2

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i64) #2

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
