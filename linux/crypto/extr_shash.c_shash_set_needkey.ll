; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_set_needkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_set_needkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_ALG_OPTIONAL_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_NEED_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_shash*, %struct.shash_alg*)* @shash_set_needkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shash_set_needkey(%struct.crypto_shash* %0, %struct.shash_alg* %1) #0 {
  %3 = alloca %struct.crypto_shash*, align 8
  %4 = alloca %struct.shash_alg*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %3, align 8
  store %struct.shash_alg* %1, %struct.shash_alg** %4, align 8
  %5 = load %struct.shash_alg*, %struct.shash_alg** %4, align 8
  %6 = call i64 @crypto_shash_alg_has_setkey(%struct.shash_alg* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load %struct.shash_alg*, %struct.shash_alg** %4, align 8
  %10 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CRYPTO_ALG_OPTIONAL_KEY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %18 = load i32, i32* @CRYPTO_TFM_NEED_KEY, align 4
  %19 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %8, %2
  ret void
}

declare dso_local i64 @crypto_shash_alg_has_setkey(%struct.shash_alg*) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
