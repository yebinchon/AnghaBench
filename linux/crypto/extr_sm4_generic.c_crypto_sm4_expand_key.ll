; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sm4_generic.c_crypto_sm4_expand_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sm4_generic.c_crypto_sm4_expand_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sm4_ctx = type { i32*, i32* }

@SM4_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@fk = common dso_local global i32* null, align 8
@ck = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sm4_expand_key(%struct.crypto_sm4_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_sm4_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_sm4_ctx* %0, %struct.crypto_sm4_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SM4_KEY_SIZE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %108

19:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @get_unaligned_be32(i32* %27)
  %29 = load i32*, i32** @fk, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %28, %33
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %20

41:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 32
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %49, %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %52, %54
  %56 = load i32*, i32** @ck, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %55, %60
  %62 = call i32 @sm4_key_sub(i32 %61)
  %63 = xor i32 %47, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.crypto_sm4_ctx*, %struct.crypto_sm4_ctx** %5, align 8
  %66 = getelementptr inbounds %struct.crypto_sm4_ctx, %struct.crypto_sm4_ctx* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %72, i32* %73, align 16
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %78, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %45
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %42

85:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 32
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load %struct.crypto_sm4_ctx*, %struct.crypto_sm4_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.crypto_sm4_ctx, %struct.crypto_sm4_ctx* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 31, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.crypto_sm4_ctx*, %struct.crypto_sm4_ctx** %5, align 8
  %99 = getelementptr inbounds %struct.crypto_sm4_ctx, %struct.crypto_sm4_ctx* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %86

107:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %16
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @sm4_key_sub(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
