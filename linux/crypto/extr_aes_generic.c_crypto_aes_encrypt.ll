; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aes_generic.c_crypto_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aes_generic.c_crypto_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_aes_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @crypto_aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aes_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aes_ctx*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %13 = call %struct.crypto_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.crypto_aes_ctx* %13, %struct.crypto_aes_ctx** %7, align 8
  %14 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  store i32* %17, i32** %10, align 8
  %18 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @get_unaligned_le32(i32* %26)
  %28 = xor i32 %25, %27
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = call i32 @get_unaligned_le32(i32* %36)
  %38 = xor i32 %34, %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = call i32 @get_unaligned_le32(i32* %46)
  %48 = xor i32 %44, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 12
  %57 = call i32 @get_unaligned_le32(i32* %56)
  %58 = xor i32 %54, %57
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 24
  br i1 %61, label %62, label %71

62:                                               ; preds = %3
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @f_nround(i32* %63, i32* %64, i32* %65)
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @f_nround(i32* %67, i32* %68, i32* %69)
  br label %71

71:                                               ; preds = %62, %3
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 16
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @f_nround(i32* %75, i32* %76, i32* %77)
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @f_nround(i32* %79, i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %74, %71
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @f_nround(i32* %84, i32* %85, i32* %86)
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @f_nround(i32* %88, i32* %89, i32* %90)
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @f_nround(i32* %92, i32* %93, i32* %94)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @f_nround(i32* %96, i32* %97, i32* %98)
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @f_nround(i32* %100, i32* %101, i32* %102)
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @f_nround(i32* %104, i32* %105, i32* %106)
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @f_nround(i32* %108, i32* %109, i32* %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @f_nround(i32* %112, i32* %113, i32* %114)
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @f_nround(i32* %116, i32* %117, i32* %118)
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @f_lround(i32* %120, i32* %121, i32* %122)
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @put_unaligned_le32(i32 %125, i32* %126)
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = call i32 @put_unaligned_le32(i32 %129, i32* %131)
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 8
  %137 = call i32 @put_unaligned_le32(i32 %134, i32* %136)
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 12
  %142 = call i32 @put_unaligned_le32(i32 %139, i32* %141)
  ret void
}

declare dso_local %struct.crypto_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @f_nround(i32*, i32*, i32*) #1

declare dso_local i32 @f_lround(i32*, i32*, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
