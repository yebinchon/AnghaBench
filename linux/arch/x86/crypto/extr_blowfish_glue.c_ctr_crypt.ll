; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_blowfish_glue.c_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.bf_ctx = type { i32 }
%struct.skcipher_walk = type { i32 }

@BF_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.bf_ctx*, align 8
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.bf_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.bf_ctx* %11, %struct.bf_ctx** %4, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %13 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %12, i32 0)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %19, %1
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @BF_BLOCK_SIZE, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.bf_ctx*, %struct.bf_ctx** %4, align 8
  %21 = call i32 @__ctr_crypt(%struct.bf_ctx* %20, %struct.skcipher_walk* %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.bf_ctx*, %struct.bf_ctx** %4, align 8
  %29 = call i32 @ctr_crypt_final(%struct.bf_ctx* %28, %struct.skcipher_walk* %5)
  %30 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 0)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.bf_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @__ctr_crypt(%struct.bf_ctx*, %struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @ctr_crypt_final(%struct.bf_ctx*, %struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
