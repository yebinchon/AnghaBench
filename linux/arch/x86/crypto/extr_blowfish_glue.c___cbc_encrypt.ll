; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___cbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c___cbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@BF_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf_ctx*, %struct.skcipher_walk*)* @__cbc_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cbc_encrypt(%struct.bf_ctx* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.bf_ctx*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.bf_ctx* %0, %struct.bf_ctx** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %10 = load i32, i32* @BF_BLOCK_SIZE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %12 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %21 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %49, %2
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %32, %34
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.bf_ctx*, %struct.bf_ctx** %3, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @blowfish_enc_blk(%struct.bf_ctx* %37, i32* %38, i32* %39)
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp uge i32 %50, %51
  br i1 %52, label %30, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %57 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @blowfish_enc_blk(%struct.bf_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
