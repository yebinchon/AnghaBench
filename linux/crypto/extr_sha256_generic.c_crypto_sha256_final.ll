; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sha256_generic.c_crypto_sha256_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sha256_generic.c_crypto_sha256_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }

@SHA224_DIGEST_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @crypto_sha256_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_sha256_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %7 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @crypto_shash_digestsize(i32 %8)
  %10 = load i64, i64* @SHA224_DIGEST_SIZE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = call i32 @shash_desc_ctx(%struct.shash_desc* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @sha224_final(i32 %14, i32* %15)
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %19 = call i32 @shash_desc_ctx(%struct.shash_desc* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @sha256_final(i32 %19, i32* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @sha224_final(i32, i32*) #1

declare dso_local i32 @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @sha256_final(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
