; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-neonbs-glue.c_ctr_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-neonbs-glue.c_ctr_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.aesbs_ctx = type { i32, i32 }
%struct.skcipher_walk = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @ctr_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.aesbs_ctx*, align 8
  %5 = alloca %struct.skcipher_walk, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %14 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %13)
  store %struct.crypto_skcipher* %14, %struct.crypto_skcipher** %3, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %16 = call %struct.aesbs_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %15)
  store %struct.aesbs_ctx* %16, %struct.aesbs_ctx** %4, align 8
  %17 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %22 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %21, i32 0)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %105, %1
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %113

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i32* [ %20, %37 ], [ null, %38 ]
  store i32* %40, i32** %10, align 8
  %41 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %51 = sdiv i32 %49, %50
  %52 = call i32 @round_down(i32 %47, i32 %51)
  store i32 %52, i32* %9, align 4
  store i32* null, i32** %10, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = call i32 (...) @kernel_neon_begin()
  %55 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.aesbs_ctx*, %struct.aesbs_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.aesbs_ctx, %struct.aesbs_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aesbs_ctx*, %struct.aesbs_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.aesbs_ctx, %struct.aesbs_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @aesbs_ctr_encrypt(i32* %58, i32* %62, i32 %65, i32 %68, i32 %69, i32 %71, i32* %72)
  %74 = call i32 (...) @kernel_neon_end()
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %84 = mul i32 %82, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  store i32* %86, i32** %11, align 8
  %87 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %93 = mul i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  store i32* %95, i32** %12, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %102 = srem i32 %100, %101
  %103 = call i32 @crypto_xor_cpy(i32* %96, i32* %97, i32* %98, i32 %102)
  %104 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 0)
  store i32 %104, i32* %8, align 4
  br label %113

105:                                              ; preds = %53
  %106 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %110 = mul i32 %108, %109
  %111 = sub i32 %107, %110
  %112 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %23

113:                                              ; preds = %77, %23
  %114 = load i32, i32* %8, align 4
  %115 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %115)
  ret i32 %114
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.aesbs_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @aesbs_ctr_encrypt(i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
