; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_extractkeys.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_extractkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_authenc_keys = type { i32, i32, i32*, i32* }
%struct.rtattr = type { i64, i64 }
%struct.crypto_authenc_key_param = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_AUTHENC_KEYA_PARAM = common dso_local global i64 0, align 8
@RTA_ALIGNTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_authenc_keys*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtattr*, align 8
  %9 = alloca %struct.crypto_authenc_key_param*, align 8
  store %struct.crypto_authenc_keys* %0, %struct.crypto_authenc_keys** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.rtattr*
  store %struct.rtattr* %11, %struct.rtattr** %8, align 8
  %12 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @RTA_OK(%struct.rtattr* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %89

19:                                               ; preds = %3
  %20 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %21 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CRYPTO_AUTHENC_KEYA_PARAM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %89

28:                                               ; preds = %19
  %29 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %30 = call i32 @RTA_PAYLOAD(%struct.rtattr* %29)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %28
  %37 = load i32, i32* @RTA_ALIGNTO, align 4
  %38 = sext i32 %37 to i64
  %39 = urem i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @BUILD_BUG_ON(i32 %40)
  %42 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %43 = call %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr* %42)
  store %struct.crypto_authenc_key_param* %43, %struct.crypto_authenc_key_param** %9, align 8
  %44 = load %struct.crypto_authenc_key_param*, %struct.crypto_authenc_key_param** %9, align 8
  %45 = getelementptr inbounds %struct.crypto_authenc_key_param, %struct.crypto_authenc_key_param* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %51 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %6, align 8
  %55 = load %struct.rtattr*, %struct.rtattr** %8, align 8
  %56 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %64 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %36
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %36
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %73 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %71, %74
  %76 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %77 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %80 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %83 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load %struct.crypto_authenc_keys*, %struct.crypto_authenc_keys** %5, align 8
  %88 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %70, %67, %33, %25, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @RTA_OK(%struct.rtattr*, i32) #1

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.crypto_authenc_key_param* @RTA_DATA(%struct.rtattr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
