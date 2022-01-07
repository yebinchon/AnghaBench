; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_skcipher_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_skcipher_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.crypto_skcipher = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.skcipher_alg = type { i32 (%struct.crypto_skcipher.0*)*, i64, i32, i32, i32, i32 }
%struct.crypto_skcipher.0 = type opaque

@crypto_blkcipher_type = common dso_local global i32 0, align 4
@crypto_ablkcipher_type = common dso_local global i32 0, align 4
@skcipher_setkey = common dso_local global i32 0, align 4
@crypto_skcipher_exit_tfm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_skcipher_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_skcipher_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.skcipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm* %6)
  store %struct.crypto_skcipher* %7, %struct.crypto_skcipher** %4, align 8
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %9 = call %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher* %8)
  store %struct.skcipher_alg* %9, %struct.skcipher_alg** %5, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @crypto_blkcipher_type
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %18 = call i32 @crypto_init_skcipher_ops_blkcipher(%struct.crypto_tfm* %17)
  store i32 %18, i32* %2, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %21 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, @crypto_ablkcipher_type
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %28 = call i32 @crypto_init_skcipher_ops_ablkcipher(%struct.crypto_tfm* %27)
  store i32 %28, i32* %2, align 4
  br label %77

29:                                               ; preds = %19
  %30 = load i32, i32* @skcipher_setkey, align 4
  %31 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %34 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %37 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %39 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %42 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %44 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %49 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %54 = call i32 @skcipher_set_needkey(%struct.crypto_skcipher* %53)
  %55 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %56 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %29
  %60 = load i32, i32* @crypto_skcipher_exit_tfm, align 4
  %61 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %62 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %29
  %65 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %66 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %65, i32 0, i32 0
  %67 = load i32 (%struct.crypto_skcipher.0*)*, i32 (%struct.crypto_skcipher.0*)** %66, align 8
  %68 = icmp ne i32 (%struct.crypto_skcipher.0*)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.skcipher_alg*, %struct.skcipher_alg** %5, align 8
  %71 = getelementptr inbounds %struct.skcipher_alg, %struct.skcipher_alg* %70, i32 0, i32 0
  %72 = load i32 (%struct.crypto_skcipher.0*)*, i32 (%struct.crypto_skcipher.0*)** %71, align 8
  %73 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %74 = bitcast %struct.crypto_skcipher* %73 to %struct.crypto_skcipher.0*
  %75 = call i32 %72(%struct.crypto_skcipher.0* %74)
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %69, %26, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.skcipher_alg* @crypto_skcipher_alg(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_init_skcipher_ops_blkcipher(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_init_skcipher_ops_ablkcipher(%struct.crypto_tfm*) #1

declare dso_local i32 @skcipher_set_needkey(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
