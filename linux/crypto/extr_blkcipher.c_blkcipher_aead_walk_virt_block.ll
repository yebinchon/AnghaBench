; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_aead_walk_virt_block.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_aead_walk_virt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }

@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_aead_walk_virt_block(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, %struct.crypto_aead* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %6, align 8
  store %struct.crypto_aead* %2, %struct.crypto_aead** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %12 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %17 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %19 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %18)
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %23 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %22)
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %27 = call i32 @crypto_aead_alignmask(%struct.crypto_aead* %26)
  %28 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %29 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %31 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %32 = call i32 @blkcipher_walk_first(%struct.blkcipher_desc* %30, %struct.blkcipher_walk* %31)
  ret i32 %32
}

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @blkcipher_walk_first(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
