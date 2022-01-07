; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecdh_helper.c_crypto_ecdh_decode_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecdh_helper.c_crypto_ecdh_decode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecdh = type { i8*, %struct.kpp_secret, %struct.kpp_secret }
%struct.kpp_secret = type { i64, i64 }

@ECDH_KPP_SECRET_MIN_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_KPP_SECRET_TYPE_ECDH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_ecdh_decode_key(i8* %0, i32 %1, %struct.ecdh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecdh*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kpp_secret, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ecdh* %2, %struct.ecdh** %7, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ECDH_KPP_SECRET_MIN_SIZE, align 4
  %16 = icmp ult i32 %14, %15
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ true, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @ecdh_unpack_data(%struct.kpp_secret* %9, i8* %26, i32 16)
  store i8* %27, i8** %8, align 8
  %28 = getelementptr inbounds %struct.kpp_secret, %struct.kpp_secret* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CRYPTO_KPP_SECRET_TYPE_ECDH, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %56

35:                                               ; preds = %25
  %36 = load %struct.ecdh*, %struct.ecdh** %7, align 8
  %37 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %36, i32 0, i32 2
  %38 = load i8*, i8** %8, align 8
  %39 = call i8* @ecdh_unpack_data(%struct.kpp_secret* %37, i8* %38, i32 16)
  store i8* %39, i8** %8, align 8
  %40 = load %struct.ecdh*, %struct.ecdh** %7, align 8
  %41 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %40, i32 0, i32 1
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @ecdh_unpack_data(%struct.kpp_secret* %41, i8* %42, i32 16)
  store i8* %43, i8** %8, align 8
  %44 = getelementptr inbounds %struct.kpp_secret, %struct.kpp_secret* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ecdh*, %struct.ecdh** %7, align 8
  %47 = call i64 @crypto_ecdh_key_len(%struct.ecdh* %46)
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %35
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ecdh*, %struct.ecdh** %7, align 8
  %55 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %49, %32, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ecdh_unpack_data(%struct.kpp_secret*, i8*, i32) #1

declare dso_local i64 @crypto_ecdh_key_len(%struct.ecdh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
