; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_done_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_done_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_walk = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkcipher_walk*, i32)* @blkcipher_done_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkcipher_done_slow(%struct.blkcipher_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.blkcipher_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.blkcipher_walk* %0, %struct.blkcipher_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %7 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %10 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i64 @ALIGN(i64 %8, i64 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @blkcipher_get_spot(i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @scatterwalk_copychunks(i32* %18, i32* %20, i32 %21, i32 1)
  ret void
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32* @blkcipher_get_spot(i32*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
