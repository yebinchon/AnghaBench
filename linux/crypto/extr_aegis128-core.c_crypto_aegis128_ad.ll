; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_ad.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { i32 }
%union.aegis_block = type { i32 }

@AEGIS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, i32*, i32)* @crypto_aegis128_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_ad(%struct.aegis_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.aegis_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.aegis_block*, align 8
  store %struct.aegis_state* %0, %struct.aegis_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @AEGIS_ALIGNED(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to %union.aegis_block*
  store %union.aegis_block* %13, %union.aegis_block** %7, align 8
  br label %14

14:                                               ; preds = %18, %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %20 = load %union.aegis_block*, %union.aegis_block** %7, align 8
  %21 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %19, %union.aegis_block* %20)
  %22 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %union.aegis_block*, %union.aegis_block** %7, align 8
  %26 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %25, i32 1
  store %union.aegis_block* %26, %union.aegis_block** %7, align 8
  br label %14

27:                                               ; preds = %14
  br label %45

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.aegis_state*, %struct.aegis_state** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @crypto_aegis128_update_u(%struct.aegis_state* %34, i32* %35)
  %37 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %5, align 8
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %27
  ret void
}

declare dso_local i64 @AEGIS_ALIGNED(i32*) #1

declare dso_local i32 @crypto_aegis128_update_a(%struct.aegis_state*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis128_update_u(%struct.aegis_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
