; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_virt_block.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_virt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, i32, i32 }

@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1, i32 %2) #0 {
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %10 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %15 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %17 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_blkcipher_blocksize(i32 %18)
  %20 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %21 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %23 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @crypto_blkcipher_ivsize(i32 %24)
  %26 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %29 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @crypto_blkcipher_alignmask(i32 %30)
  %32 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %33 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %35 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %36 = call i32 @blkcipher_walk_first(%struct.blkcipher_desc* %34, %struct.blkcipher_walk* %35)
  ret i32 %36
}

declare dso_local i32 @crypto_blkcipher_blocksize(i32) #1

declare dso_local i32 @crypto_blkcipher_ivsize(i32) #1

declare dso_local i32 @crypto_blkcipher_alignmask(i32) #1

declare dso_local i32 @blkcipher_walk_first(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
