; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_des3_ede_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_des_glue.c_des3_ede_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des3_ede_sparc64_ctx = type { i32*, i32* }

@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des3_ede_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_ede_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.des3_ede_sparc64_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %16 = call %struct.des3_ede_sparc64_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %15)
  store %struct.des3_ede_sparc64_ctx* %16, %struct.des3_ede_sparc64_ctx** %8, align 8
  %17 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %18 = sdiv i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %23 = sdiv i32 %22, 2
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %27 = sdiv i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @crypto_des3_ede_verify_key(%struct.crypto_tfm* %30, i32* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %108

37:                                               ; preds = %3
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @des_sparc64_key_expand(i32* %38, i32* %21)
  %40 = load i32, i32* @DES_KEY_SIZE, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @des_sparc64_key_expand(i32* %44, i32* %25)
  %46 = load i32, i32* @DES_KEY_SIZE, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @des_sparc64_key_expand(i32* %50, i32* %29)
  %52 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = getelementptr inbounds i32, i32* %21, i64 0
  %57 = mul nuw i64 4, %19
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(i32* %55, i32* %56, i32 %58)
  %60 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = getelementptr inbounds i32, i32* %25, i64 0
  %68 = call i32 @encrypt_to_decrypt(i32* %66, i32* %67)
  %69 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %73 = sdiv i32 %72, 2
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = getelementptr inbounds i32, i32* %29, i64 0
  %78 = mul nuw i64 4, %28
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i32* %76, i32* %77, i32 %79)
  %81 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %82 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = getelementptr inbounds i32, i32* %29, i64 0
  %86 = call i32 @encrypt_to_decrypt(i32* %84, i32* %85)
  %87 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = getelementptr inbounds i32, i32* %25, i64 0
  %95 = mul nuw i64 4, %24
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32* %93, i32* %94, i32 %96)
  %98 = load %struct.des3_ede_sparc64_ctx*, %struct.des3_ede_sparc64_ctx** %8, align 8
  %99 = getelementptr inbounds %struct.des3_ede_sparc64_ctx, %struct.des3_ede_sparc64_ctx* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %102 = sdiv i32 %101, 2
  %103 = mul nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = getelementptr inbounds i32, i32* %21, i64 0
  %107 = call i32 @encrypt_to_decrypt(i32* %105, i32* %106)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %37, %35
  %109 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.des3_ede_sparc64_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_des3_ede_verify_key(%struct.crypto_tfm*, i32*) #1

declare dso_local i32 @des_sparc64_key_expand(i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @encrypt_to_decrypt(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
