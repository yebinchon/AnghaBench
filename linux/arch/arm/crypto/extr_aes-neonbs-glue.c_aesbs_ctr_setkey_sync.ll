; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_ctr_setkey_sync.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_ctr_setkey_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.aesbs_ctr_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @aesbs_ctr_setkey_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesbs_ctr_setkey_sync(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aesbs_ctr_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.aesbs_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.aesbs_ctr_ctx* %11, %struct.aesbs_ctr_ctx** %8, align 8
  %12 = load %struct.aesbs_ctr_ctx*, %struct.aesbs_ctr_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.aesbs_ctr_ctx, %struct.aesbs_ctr_ctx* %12, i32 0, i32 1
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @aes_expandkey(%struct.TYPE_4__* %13, i32* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = udiv i32 %22, 4
  %24 = add i32 6, %23
  %25 = load %struct.aesbs_ctr_ctx*, %struct.aesbs_ctr_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.aesbs_ctr_ctx, %struct.aesbs_ctr_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = call i32 (...) @kernel_neon_begin()
  %29 = load %struct.aesbs_ctr_ctx*, %struct.aesbs_ctr_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.aesbs_ctr_ctx, %struct.aesbs_ctr_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.aesbs_ctr_ctx*, %struct.aesbs_ctr_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.aesbs_ctr_ctx, %struct.aesbs_ctr_ctx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aesbs_ctr_ctx*, %struct.aesbs_ctr_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.aesbs_ctr_ctx, %struct.aesbs_ctr_ctx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @aesbs_convert_key(i32 %32, i32 %36, i32 %40)
  %42 = call i32 (...) @kernel_neon_end()
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %21, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.aesbs_ctr_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @aes_expandkey(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @aesbs_convert_key(i32, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
