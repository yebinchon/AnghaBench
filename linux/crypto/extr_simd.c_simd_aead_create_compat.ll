; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_create_compat.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_simd.c_simd_aead_create_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simd_aead_alg = type { i8*, %struct.aead_alg }
%struct.aead_alg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32 }

@CRYPTO_ALG_INTERNAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@CRYPTO_MAX_ALG_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@simd_aead_init = common dso_local global i32 0, align 4
@simd_aead_exit = common dso_local global i32 0, align 4
@simd_aead_setkey = common dso_local global i32 0, align 4
@simd_aead_setauthsize = common dso_local global i32 0, align 4
@simd_aead_encrypt = common dso_local global i32 0, align 4
@simd_aead_decrypt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.simd_aead_alg* @simd_aead_create_compat(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.simd_aead_alg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.simd_aead_alg*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca %struct.aead_alg*, align 8
  %11 = alloca %struct.aead_alg*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %15 = load i32, i32* @CRYPTO_ALG_INTERNAL, align 4
  %16 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %13, i32 %14, i32 %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %9, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_aead* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %24 = call %struct.simd_aead_alg* @ERR_CAST(%struct.crypto_aead* %23)
  store %struct.simd_aead_alg* %24, %struct.simd_aead_alg** %4, align 8
  br label %149

25:                                               ; preds = %3
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %27 = call %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead* %26)
  store %struct.aead_alg* %27, %struct.aead_alg** %10, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.simd_aead_alg* @kzalloc(i32 80, i32 %28)
  store %struct.simd_aead_alg* %29, %struct.simd_aead_alg** %8, align 8
  %30 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %8, align 8
  %31 = icmp ne %struct.simd_aead_alg* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.simd_aead_alg* @ERR_PTR(i32 %34)
  store %struct.simd_aead_alg* %35, %struct.simd_aead_alg** %8, align 8
  br label %140

36:                                               ; preds = %25
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %8, align 8
  %39 = getelementptr inbounds %struct.simd_aead_alg, %struct.simd_aead_alg* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %8, align 8
  %41 = getelementptr inbounds %struct.simd_aead_alg, %struct.simd_aead_alg* %40, i32 0, i32 1
  store %struct.aead_alg* %41, %struct.aead_alg** %11, align 8
  %42 = load i32, i32* @ENAMETOOLONG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %45 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @snprintf(i32 %47, i64 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %144

54:                                               ; preds = %36
  %55 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %56 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @snprintf(i32 %58, i64 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load i64, i64* @CRYPTO_MAX_ALG_NAME, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %144

65:                                               ; preds = %54
  %66 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %67 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %68 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %71 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %75 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %74, i32 0, i32 9
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %78 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %77, i32 0, i32 9
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %82 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 4
  %84 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %85 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %89 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %92 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %96 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %99 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 4, i32* %100, align 4
  %101 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %102 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %105 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 4
  %106 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %107 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %110 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.aead_alg*, %struct.aead_alg** %10, align 8
  %112 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %115 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @simd_aead_init, align 4
  %117 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %118 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @simd_aead_exit, align 4
  %120 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %121 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @simd_aead_setkey, align 4
  %123 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %124 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @simd_aead_setauthsize, align 4
  %126 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %127 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @simd_aead_encrypt, align 4
  %129 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %130 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @simd_aead_decrypt, align 4
  %132 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %133 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.aead_alg*, %struct.aead_alg** %11, align 8
  %135 = call i32 @crypto_register_aead(%struct.aead_alg* %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %65
  br label %144

139:                                              ; preds = %65
  br label %140

140:                                              ; preds = %144, %139, %32
  %141 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %142 = call i32 @crypto_free_aead(%struct.crypto_aead* %141)
  %143 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %8, align 8
  store %struct.simd_aead_alg* %143, %struct.simd_aead_alg** %4, align 8
  br label %149

144:                                              ; preds = %138, %64, %53
  %145 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %8, align 8
  %146 = call i32 @kfree(%struct.simd_aead_alg* %145)
  %147 = load i32, i32* %12, align 4
  %148 = call %struct.simd_aead_alg* @ERR_PTR(i32 %147)
  store %struct.simd_aead_alg* %148, %struct.simd_aead_alg** %8, align 8
  br label %140

149:                                              ; preds = %140, %22
  %150 = load %struct.simd_aead_alg*, %struct.simd_aead_alg** %4, align 8
  ret %struct.simd_aead_alg* %150
}

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #1

declare dso_local %struct.simd_aead_alg* @ERR_CAST(%struct.crypto_aead*) #1

declare dso_local %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local %struct.simd_aead_alg* @kzalloc(i32, i32) #1

declare dso_local %struct.simd_aead_alg* @ERR_PTR(i32) #1

declare dso_local i64 @snprintf(i32, i64, i8*, i8*) #1

declare dso_local i32 @crypto_register_aead(%struct.aead_alg*) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_aead*) #1

declare dso_local i32 @kfree(%struct.simd_aead_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
