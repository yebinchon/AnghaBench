; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_salsa20_generic.c_salsa20_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.salsa20_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @salsa20_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salsa20_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.salsa20_ctx*, align 8
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %3, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %12 = call %struct.salsa20_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.salsa20_ctx* %12, %struct.salsa20_ctx** %4, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %14 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %16 = load %struct.salsa20_ctx*, %struct.salsa20_ctx** %4, align 8
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %18 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @salsa20_init(i32* %15, %struct.salsa20_ctx* %16, i32 %19)
  br label %21

21:                                               ; preds = %37, %1
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @round_down(i32 %33, i32 %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %32, %25
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %39 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @salsa20_docrypt(i32* %38, i32 %42, i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub i32 %50, %51
  %53 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.salsa20_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @salsa20_init(i32*, %struct.salsa20_ctx*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @salsa20_docrypt(i32*, i32, i32, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
