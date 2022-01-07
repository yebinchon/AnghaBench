; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c_cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c_cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.cast5_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@CAST5_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.cast5_ctx*, align 8
  %6 = alloca %struct.skcipher_walk, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %12 = load i32, i32* @CAST5_BLOCK_SIZE, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %14 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %13)
  store %struct.crypto_skcipher* %14, %struct.crypto_skcipher** %4, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %16 = call %struct.cast5_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %15)
  store %struct.cast5_ctx* %16, %struct.cast5_ctx** %5, align 8
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %18 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %17, i32 0)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %60, %1
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %11, align 8
  br label %37

37:                                               ; preds = %56, %23
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %39, %41
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.cast5_ctx*, %struct.cast5_ctx** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @__cast5_encrypt(%struct.cast5_ctx* %44, i32* %45, i32* %46)
  %48 = load i32*, i32** %10, align 8
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %10, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %37, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %19

68:                                               ; preds = %19
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.cast5_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @__cast5_encrypt(%struct.cast5_ctx*, i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
