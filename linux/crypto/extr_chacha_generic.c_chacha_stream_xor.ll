; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha_generic.c_chacha_stream_xor.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha_generic.c_chacha_stream_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.chacha_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHACHA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.chacha_ctx*, i32*)* @chacha_stream_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_stream_xor(%struct.skcipher_request* %0, %struct.chacha_ctx* %1, i32* %2) #0 {
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

17:                                               ; preds = %32, %3
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %31 = call i32 @round_down(i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.chacha_ctx, %struct.chacha_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @chacha_docrypt(i32* %33, i32 %37, i32 %41, i32 %42, i32 %45)
  %47 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %48, %49
  %51 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_chacha_init(i32*, %struct.chacha_ctx*, i32*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @chacha_docrypt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
