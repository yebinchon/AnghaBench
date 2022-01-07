; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_cfb_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cfb_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_walk, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %7 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %8 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %7)
  store %struct.crypto_skcipher* %8, %struct.crypto_skcipher** %3, align 8
  %9 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %10 = call i32 @crypto_cfb_bsize(%struct.crypto_skcipher* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %12 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %4, %struct.skcipher_request* %11, i32 0)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %30 = call i32 @crypto_cfb_encrypt_inplace(%struct.skcipher_walk* %4, %struct.crypto_skcipher* %29)
  store i32 %30, i32* %6, align 4
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %33 = call i32 @crypto_cfb_encrypt_segment(%struct.skcipher_walk* %4, %struct.crypto_skcipher* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %4, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %13

37:                                               ; preds = %13
  %38 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %43 = call i32 @crypto_cfb_final(%struct.skcipher_walk* %4, %struct.crypto_skcipher* %42)
  %44 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %4, i32 0)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_cfb_bsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_cfb_encrypt_inplace(%struct.skcipher_walk*, %struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cfb_encrypt_segment(%struct.skcipher_walk*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @crypto_cfb_final(%struct.skcipher_walk*, %struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
