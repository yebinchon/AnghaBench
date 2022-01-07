; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecdh.c_ecdh_set_secret.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecdh.c_ecdh_set_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.ecdh_ctx = type { i32, i32, i32 }
%struct.ecdh = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_kpp*, i8*, i32)* @ecdh_set_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecdh_set_secret(%struct.crypto_kpp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_kpp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecdh_ctx*, align 8
  %9 = alloca %struct.ecdh, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_kpp*, %struct.crypto_kpp** %5, align 8
  %12 = call %struct.ecdh_ctx* @ecdh_get_ctx(%struct.crypto_kpp* %11)
  store %struct.ecdh_ctx* %12, %struct.ecdh_ctx** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @crypto_ecdh_decode_key(i8* %13, i32 %14, %struct.ecdh* %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ecdh_supported_curve(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %81

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ecc_gen_privkey(i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %81

55:                                               ; preds = %40
  %56 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ecc_is_key_valid(i32 %58, i32 %61, i32* %64, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %81

72:                                               ; preds = %55
  %73 = load %struct.ecdh_ctx*, %struct.ecdh_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.ecdh_ctx, %struct.ecdh_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.ecdh, %struct.ecdh* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i32 %75, i64 %77, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %69, %44, %26, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.ecdh_ctx* @ecdh_get_ctx(%struct.crypto_kpp*) #1

declare dso_local i64 @crypto_ecdh_decode_key(i8*, i32, %struct.ecdh*) #1

declare dso_local i32 @ecdh_supported_curve(i32) #1

declare dso_local i32 @ecc_gen_privkey(i32, i32, i32) #1

declare dso_local i64 @ecc_is_key_valid(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
