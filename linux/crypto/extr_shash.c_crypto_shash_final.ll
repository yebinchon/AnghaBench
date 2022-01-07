; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.shash_desc*, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_shash_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca %struct.shash_alg*, align 8
  %8 = alloca i64, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %10 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %9, i32 0, i32 0
  %11 = load %struct.crypto_shash*, %struct.crypto_shash** %10, align 8
  store %struct.crypto_shash* %11, %struct.crypto_shash** %6, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %13 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %12)
  store %struct.shash_alg* %13, %struct.shash_alg** %7, align 8
  %14 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %15 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load i64, i64* %8, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @shash_final_unaligned(%struct.shash_desc* %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.shash_alg*, %struct.shash_alg** %7, align 8
  %27 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %26, i32 0, i32 0
  %28 = load i32 (%struct.shash_desc*, i32*)*, i32 (%struct.shash_desc*, i32*)** %27, align 8
  %29 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 %28(%struct.shash_desc* %29, i32* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local i32 @shash_final_unaligned(%struct.shash_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
