; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_phys.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32, i32, i32, i32 }

@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkcipher_walk_phys(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca %struct.blkcipher_desc*, align 8
  %4 = alloca %struct.blkcipher_walk*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %3, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %4, align 8
  %5 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %6 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %7 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %11 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @crypto_blkcipher_blocksize(i32 %12)
  %14 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %15 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %17 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %22 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @crypto_blkcipher_ivsize(i32 %23)
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %26 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %28 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @crypto_blkcipher_alignmask(i32 %29)
  %31 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %32 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %3, align 8
  %34 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %4, align 8
  %35 = call i32 @blkcipher_walk_first(%struct.blkcipher_desc* %33, %struct.blkcipher_walk* %34)
  ret i32 %35
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
