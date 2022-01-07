; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_done_slow.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_done_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i64, i64 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, i32)* @skcipher_done_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_done_slow(%struct.skcipher_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %7 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %10 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  %13 = call i64 @ALIGN(i64 %8, i64 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32* @skcipher_get_spot(i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %19, i32 0, i32 1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 1
  %30 = call i32 @scatterwalk_copychunks(i32* %18, i32* %20, i32 %21, i32 %29)
  ret i32 0
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32* @skcipher_get_spot(i32*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
