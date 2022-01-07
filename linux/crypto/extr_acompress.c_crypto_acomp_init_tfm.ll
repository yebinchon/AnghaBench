; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_acompress.c_crypto_acomp_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_acompress.c_crypto_acomp_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.crypto_acomp = type { %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.acomp_alg = type { i32 (%struct.crypto_acomp*)*, i64, i32, i32, i32, i32 }

@crypto_acomp_type = common dso_local global i32 0, align 4
@crypto_acomp_exit_tfm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_acomp_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_acomp_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_acomp*, align 8
  %5 = alloca %struct.acomp_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.crypto_acomp* @__crypto_acomp_tfm(%struct.crypto_tfm* %6)
  store %struct.crypto_acomp* %7, %struct.crypto_acomp** %4, align 8
  %8 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %9 = call %struct.acomp_alg* @crypto_acomp_alg(%struct.crypto_acomp* %8)
  store %struct.acomp_alg* %9, %struct.acomp_alg** %5, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @crypto_acomp_type
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %18 = call i32 @crypto_init_scomp_ops_async(%struct.crypto_tfm* %17)
  store i32 %18, i32* %2, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %21 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %24 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %26 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %29 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %31 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %36 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %39 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %41 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %19
  %45 = load i32, i32* @crypto_acomp_exit_tfm, align 4
  %46 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %47 = getelementptr inbounds %struct.crypto_acomp, %struct.crypto_acomp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %19
  %50 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %51 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %50, i32 0, i32 0
  %52 = load i32 (%struct.crypto_acomp*)*, i32 (%struct.crypto_acomp*)** %51, align 8
  %53 = icmp ne i32 (%struct.crypto_acomp*)* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.acomp_alg*, %struct.acomp_alg** %5, align 8
  %56 = getelementptr inbounds %struct.acomp_alg, %struct.acomp_alg* %55, i32 0, i32 0
  %57 = load i32 (%struct.crypto_acomp*)*, i32 (%struct.crypto_acomp*)** %56, align 8
  %58 = load %struct.crypto_acomp*, %struct.crypto_acomp** %4, align 8
  %59 = call i32 %57(%struct.crypto_acomp* %58)
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %54, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.crypto_acomp* @__crypto_acomp_tfm(%struct.crypto_tfm*) #1

declare dso_local %struct.acomp_alg* @crypto_acomp_alg(%struct.crypto_acomp*) #1

declare dso_local i32 @crypto_init_scomp_ops_async(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
