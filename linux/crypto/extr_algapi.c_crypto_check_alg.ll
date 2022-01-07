; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_check_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_check_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i64, i32, i64, i32, i32, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_ALGAPI_ALIGNMASK = common dso_local global i32 0, align 4
@MAX_ALGAPI_BLOCKSIZE = common dso_local global i64 0, align 8
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_CIPHER = common dso_local global i32 0, align 4
@MAX_CIPHER_ALIGNMASK = common dso_local global i32 0, align 4
@MAX_CIPHER_BLOCKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*)* @crypto_check_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_check_alg(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %4 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %5 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @crypto_check_module_sig(i32 %6)
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %8, i32 0, i32 7
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %16 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %15, i32 0, i32 6
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %99

24:                                               ; preds = %14
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %24
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %39 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_ALGAPI_ALIGNMASK, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %99

46:                                               ; preds = %37
  %47 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %48 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_ALGAPI_BLOCKSIZE, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %99

55:                                               ; preds = %46
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %55
  %61 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %62 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @CRYPTO_ALG_TYPE_CIPHER, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %70 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX_CIPHER_ALIGNMASK, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %99

77:                                               ; preds = %68
  %78 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %79 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAX_CIPHER_BLOCKSIZE, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %99

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %86, %60, %55
  %88 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %89 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %97 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %96, i32 0, i32 4
  %98 = call i32 @refcount_set(i32* %97, i32 1)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %92, %83, %74, %52, %43, %34, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @crypto_check_module_sig(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
