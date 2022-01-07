; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_shash_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_alg = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32* }

@HASH_MAX_DIGESTSIZE = common dso_local global i64 0, align 8
@HASH_MAX_DESCSIZE = common dso_local global i64 0, align 8
@HASH_MAX_STATESIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@crypto_shash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@shash_finup_unaligned = common dso_local global i64 0, align 8
@shash_digest_unaligned = common dso_local global i64 0, align 8
@shash_default_export = common dso_local global i64 0, align 8
@shash_default_import = common dso_local global i64 0, align 8
@shash_no_setkey = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_alg*)* @shash_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_prepare_alg(%struct.shash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shash_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.shash_alg* %0, %struct.shash_alg** %3, align 8
  %5 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %6 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %5, i32 0, i32 8
  store %struct.crypto_alg* %6, %struct.crypto_alg** %4, align 8
  %7 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %8 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HASH_MAX_DIGESTSIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %14 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HASH_MAX_DESCSIZE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %20 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HASH_MAX_STATESIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %12, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %108

27:                                               ; preds = %18
  %28 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %29 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %34 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32, %27
  %38 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %39 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %44 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42, %32
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %108

50:                                               ; preds = %42, %37
  %51 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %52 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %51, i32 0, i32 1
  store i32* @crypto_shash_type, i32** %52, align 8
  %53 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %60 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %61 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %65 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %50
  %69 = load i64, i64* @shash_finup_unaligned, align 8
  %70 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %71 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %70, i32 0, i32 7
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %50
  %73 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %74 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* @shash_digest_unaligned, align 8
  %79 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %80 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %79, i32 0, i32 6
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %83 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @shash_default_export, align 8
  %88 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %89 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* @shash_default_import, align 8
  %91 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %92 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  %93 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %94 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %97 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %86, %81
  %99 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %100 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* @shash_no_setkey, align 8
  %105 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %106 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %98
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %47, %24
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
