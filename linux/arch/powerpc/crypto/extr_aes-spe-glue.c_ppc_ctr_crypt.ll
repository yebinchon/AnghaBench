; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.ppc_aes_ctx = type { i32, i32 }
%struct.blkcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ppc_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_ctr_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ppc_aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ppc_aes_ctx* @crypto_blkcipher_ctx(i32 %16)
  store %struct.ppc_aes_ctx* %17, %struct.ppc_aes_ctx** %9, align 8
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
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %28, %struct.blkcipher_walk* %10, i32 %29)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %56, %4
  %32 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MAX_BYTES, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MAX_BYTES, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  br label %56

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi i32 [ %49, %48 ], [ %55, %50 ]
  store i32 %57, i32* %11, align 4
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %12, align 4
  %62 = call i32 (...) @spe_begin()
  %63 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %9, align 8
  %75 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ppc_crypt_ctr(i32 %66, i32 %70, i32 %73, i32 %76, i32 %77, i32 %79)
  %81 = call i32 (...) @spe_end()
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %85, %struct.blkcipher_walk* %10, i32 %86)
  store i32 %87, i32* %13, align 4
  br label %31

88:                                               ; preds = %31
  %89 = load i32, i32* %13, align 4
  ret i32 %89
}

declare dso_local %struct.ppc_aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @spe_begin(...) #1

declare dso_local i32 @ppc_crypt_ctr(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spe_end(...) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
