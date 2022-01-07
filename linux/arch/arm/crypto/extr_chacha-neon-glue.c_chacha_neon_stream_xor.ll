; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_neon_stream_xor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_chacha-neon-glue.c_chacha_neon_stream_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.chacha_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.chacha_ctx*, i32*)* @chacha_neon_stream_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_neon_stream_xor(%struct.skcipher_request* %0, %struct.chacha_ctx* %1, i32* %2) #0 {
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.chacha_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.skcipher_walk, align 4
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.chacha_ctx* %1, %struct.chacha_ctx** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %12 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %7, %struct.skcipher_request* %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %14 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @crypto_chacha_init(i32* %13, %struct.chacha_ctx* %14, i32* %15)
  br label %17

17:                                               ; preds = %33, %3
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @round_down(i32 %29, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = call i32 (...) @kernel_neon_begin()
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @chacha_doneon(i32* %35, i32 %39, i32 %43, i32 %44, i32 %47)
  %49 = call i32 (...) @kernel_neon_end()
  %50 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub i32 %51, %52
  %54 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_chacha_init(i32*, %struct.chacha_ctx*, i32*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @chacha_doneon(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
