; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_ecb_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_ecb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.crypto_sparc64_aes_ctx = type { i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32)*, i32 (i32*)* }
%struct.blkcipher_walk = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@AES_BLOCK_MASK = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ecb_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_sparc64_aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.crypto_sparc64_aes_ctx* @crypto_blkcipher_ctx(i32 %16)
  store %struct.crypto_sparc64_aes_ctx* %17, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %18, %struct.scatterlist* %19, i32 %20)
  %22 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %23 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %22, %struct.blkcipher_walk* %10)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %27 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (i32*)*, i32 (i32*)** %33, align 8
  %35 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 %34(i32* %38)
  %40 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %79, %4
  %50 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @AES_BLOCK_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %64, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %13, align 4
  %78 = call i32 %65(i32* %66, i32* %71, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %60, %53
  %80 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %84, %struct.blkcipher_walk* %10, i32 %85)
  store i32 %86, i32* %12, align 4
  br label %49

87:                                               ; preds = %49
  %88 = call i32 @fprs_write(i32 0)
  %89 = load i32, i32* %12, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_sparc64_aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @fprs_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
