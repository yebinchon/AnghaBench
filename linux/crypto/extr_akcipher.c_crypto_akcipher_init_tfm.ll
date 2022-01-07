; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_crypto_akcipher_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_crypto_akcipher_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_akcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.akcipher_alg = type { i32 (%struct.crypto_akcipher*)*, i64 }

@crypto_akcipher_exit_tfm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_akcipher_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_akcipher_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.akcipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.crypto_akcipher* @__crypto_akcipher_tfm(%struct.crypto_tfm* %6)
  store %struct.crypto_akcipher* %7, %struct.crypto_akcipher** %4, align 8
  %8 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %9 = call %struct.akcipher_alg* @crypto_akcipher_alg(%struct.crypto_akcipher* %8)
  store %struct.akcipher_alg* %9, %struct.akcipher_alg** %5, align 8
  %10 = load %struct.akcipher_alg*, %struct.akcipher_alg** %5, align 8
  %11 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @crypto_akcipher_exit_tfm, align 4
  %16 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_akcipher, %struct.crypto_akcipher* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.akcipher_alg*, %struct.akcipher_alg** %5, align 8
  %21 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %20, i32 0, i32 0
  %22 = load i32 (%struct.crypto_akcipher*)*, i32 (%struct.crypto_akcipher*)** %21, align 8
  %23 = icmp ne i32 (%struct.crypto_akcipher*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.akcipher_alg*, %struct.akcipher_alg** %5, align 8
  %26 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %25, i32 0, i32 0
  %27 = load i32 (%struct.crypto_akcipher*)*, i32 (%struct.crypto_akcipher*)** %26, align 8
  %28 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %29 = call i32 %27(%struct.crypto_akcipher* %28)
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.crypto_akcipher* @__crypto_akcipher_tfm(%struct.crypto_tfm*) #1

declare dso_local %struct.akcipher_alg* @crypto_akcipher_alg(%struct.crypto_akcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
