; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_cfb_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cfb_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.skcipher_walk, align 4
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

13:                                               ; preds = %18, %1
  %14 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %20 = call i32 @crypto_cfb_decrypt_blocks(%struct.skcipher_walk* %4, %struct.crypto_skcipher* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %4, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %13

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %29 = call i32 @crypto_cfb_final(%struct.skcipher_walk* %4, %struct.crypto_skcipher* %28)
  %30 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %4, i32 0)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_cfb_bsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_cfb_decrypt_blocks(%struct.skcipher_walk*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @crypto_cfb_final(%struct.skcipher_walk*, %struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
