; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_keywrap.c_crypto_kw_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }
%struct.crypto_kw_block = type { i32, i32 }
%struct.scatter_walk = type { i32 }

@SEMIBSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_kw_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_kw_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca %struct.crypto_kw_block, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scatter_walk, align 4
  %12 = alloca %struct.scatter_walk, align 4
  %13 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %15 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %14)
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %4, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %17 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %16)
  store %struct.crypto_cipher* %17, %struct.crypto_cipher** %5, align 8
  store i32 1, i32* %9, align 4
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SEMIBSIZE, align 4
  %22 = mul nsw i32 2, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SEMIBSIZE, align 4
  %29 = srem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %96

34:                                               ; preds = %24
  %35 = call i32 @cpu_to_be64(i32 -1499027802)
  %36 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %38 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %37, i32 0, i32 3
  %39 = load %struct.scatterlist*, %struct.scatterlist** %38, align 8
  store %struct.scatterlist* %39, %struct.scatterlist** %7, align 8
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %40, i32 0, i32 2
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  store %struct.scatterlist* %42, %struct.scatterlist** %8, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %85, %34
  %44 = load i32, i32* %10, align 4
  %45 = icmp ult i32 %44, 6
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %48 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %13, align 4
  %50 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %51 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %50)
  %52 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %53 = call i32 @scatterwalk_start(%struct.scatter_walk* %12, %struct.scatterlist* %52)
  br label %54

54:                                               ; preds = %57, %46
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 1
  %59 = load i32, i32* @SEMIBSIZE, align 4
  %60 = call i32 @scatterwalk_copychunks(i32* %58, %struct.scatter_walk* %11, i32 %59, i32 0)
  %61 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  %62 = bitcast %struct.crypto_kw_block* %6 to i32*
  %63 = bitcast %struct.crypto_kw_block* %6 to i32*
  %64 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %61, i32* %62, i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @cpu_to_be64(i32 %65)
  %67 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 1
  %73 = load i32, i32* @SEMIBSIZE, align 4
  %74 = call i32 @scatterwalk_copychunks(i32* %72, %struct.scatter_walk* %12, i32 %73, i32 1)
  %75 = load i32, i32* @SEMIBSIZE, align 4
  %76 = load i32, i32* %13, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %80 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %79, i32 0, i32 2
  %81 = load %struct.scatterlist*, %struct.scatterlist** %80, align 8
  store %struct.scatterlist* %81, %struct.scatterlist** %7, align 8
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %83 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %82, i32 0, i32 2
  %84 = load %struct.scatterlist*, %struct.scatterlist** %83, align 8
  store %struct.scatterlist* %84, %struct.scatterlist** %8, align 8
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %43

88:                                               ; preds = %43
  %89 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %90 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.crypto_kw_block, %struct.crypto_kw_block* %6, i32 0, i32 0
  %93 = load i32, i32* @SEMIBSIZE, align 4
  %94 = call i32 @memcpy(i32 %91, i32* %92, i32 %93)
  %95 = call i32 @memzero_explicit(%struct.crypto_kw_block* %6, i32 8)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %31
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, %struct.scatter_walk*, i32, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_kw_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
