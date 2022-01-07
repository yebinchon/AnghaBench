; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_crypto_ahash_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.crypto_ahash = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ahash_alg = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@ahash_nosetkey = common dso_local global i64 0, align 8
@crypto_ahash_type = common dso_local global i32 0, align 4
@ahash_def_finup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_ahash_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ahash_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.ahash_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %4, align 8
  %8 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %9 = call %struct.ahash_alg* @crypto_ahash_alg(%struct.crypto_ahash* %8)
  store %struct.ahash_alg* %9, %struct.ahash_alg** %5, align 8
  %10 = load i64, i64* @ahash_nosetkey, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @crypto_ahash_type
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %21 = call i32 @crypto_init_shash_ops_async(%struct.crypto_tfm* %20)
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %24 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %27 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %29 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %34 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %39 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @ahash_def_finup, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i64 [ %40, %42 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  %49 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %50 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %52 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %55 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %57 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %60 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %62 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %65 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %67 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %46
  %71 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %72 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %75 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %77 = call i32 @ahash_set_needkey(%struct.crypto_ahash* %76)
  br label %78

78:                                               ; preds = %70, %46
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %19
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.ahash_alg* @crypto_ahash_alg(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_init_shash_ops_async(%struct.crypto_tfm*) #1

declare dso_local i32 @ahash_set_needkey(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
