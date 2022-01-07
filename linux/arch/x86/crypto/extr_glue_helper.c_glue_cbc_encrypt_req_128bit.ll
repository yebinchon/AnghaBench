; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_cbc_encrypt_req_128bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_cbc_encrypt_req_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_cbc_encrypt_req_128bit(i32 (i8*, i32*, i32*)* %0, %struct.skcipher_request* %1) #0 {
  %3 = alloca i32 (i8*, i32*, i32*)*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skcipher_walk, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 (i8*, i32*, i32*)* %0, i32 (i8*, i32*, i32*)** %3, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %4, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %14 = call i32 @crypto_skcipher_reqtfm(%struct.skcipher_request* %13)
  %15 = call i8* @crypto_skcipher_ctx(i32 %14)
  store i8* %15, i8** %5, align 8
  store i32 16, i32* %6, align 4
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %17 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %7, %struct.skcipher_request* %16, i32 0)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %56, %2
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %12, align 8
  br label %36

36:                                               ; preds = %53, %22
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @u128_xor(i32* %37, i32* %38, i32* %39)
  %41 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 %41(i8* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %11, align 8
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 %51, 16
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = icmp uge i32 %54, 16
  br i1 %55, label %36, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %62)
  store i32 %63, i32* %9, align 4
  br label %18

64:                                               ; preds = %18
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i8* @crypto_skcipher_ctx(i32) #1

declare dso_local i32 @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @u128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
