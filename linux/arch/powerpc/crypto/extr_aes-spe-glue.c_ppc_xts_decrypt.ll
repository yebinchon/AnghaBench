; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_xts_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_xts_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.ppc_xts_ctx = type { i32, i32, i32* }
%struct.blkcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@MAX_BYTES = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ppc_xts_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_xts_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc_xts_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ppc_xts_ctx* @crypto_blkcipher_ctx(i32 %16)
  store %struct.ppc_xts_ctx* %17, %struct.ppc_xts_ctx** %9, align 8
  %18 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %21 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %24, %struct.scatterlist* %25, i32 %26)
  %28 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %29 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %28, %struct.blkcipher_walk* %10)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  br label %33

33:                                               ; preds = %50, %4
  %34 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MAX_BYTES, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MAX_BYTES, align 4
  %44 = sub i32 %42, %43
  br label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi i32 [ %44, %41 ], [ %49, %45 ]
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = call i32 (...) @spe_begin()
  %56 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %9, align 8
  %68 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @ppc_decrypt_xts(i32 %59, i32 %63, i32 %66, i32 %69, i32 %70, i32 %72, i32* %73)
  %75 = call i32 (...) @spe_end()
  store i32* null, i32** %13, align 8
  %76 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %76, %struct.blkcipher_walk* %10, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local %struct.ppc_xts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @spe_begin(...) #1

declare dso_local i32 @ppc_decrypt_xts(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spe_end(...) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
