; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_compute_value.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_dh.c_dh_compute_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpp_request = type { i64, i32, i32, i32 }
%struct.crypto_kpp = type { i32 }
%struct.dh_ctx = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kpp_request*)* @dh_compute_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_compute_value(%struct.kpp_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kpp_request*, align 8
  %4 = alloca %struct.crypto_kpp*, align 8
  %5 = alloca %struct.dh_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kpp_request* %0, %struct.kpp_request** %3, align 8
  %10 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %11 = call %struct.crypto_kpp* @crypto_kpp_reqtfm(%struct.kpp_request* %10)
  store %struct.crypto_kpp* %11, %struct.crypto_kpp** %4, align 8
  %12 = load %struct.crypto_kpp*, %struct.crypto_kpp** %4, align 8
  %13 = call %struct.dh_ctx* @dh_get_ctx(%struct.crypto_kpp* %12)
  store %struct.dh_ctx* %13, %struct.dh_ctx** %5, align 8
  %14 = call i64 @mpi_alloc(i32 0)
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %102

20:                                               ; preds = %1
  %21 = load %struct.dh_ctx*, %struct.dh_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %98

32:                                               ; preds = %20
  %33 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %34 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %32
  %38 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %39 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %42 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @mpi_read_raw_from_sgl(i64 %40, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %98

50:                                               ; preds = %37
  %51 = load %struct.dh_ctx*, %struct.dh_ctx** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @dh_is_pubkey_valid(%struct.dh_ctx* %51, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %89

57:                                               ; preds = %50
  br label %62

58:                                               ; preds = %32
  %59 = load %struct.dh_ctx*, %struct.dh_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.dh_ctx, %struct.dh_ctx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.dh_ctx*, %struct.dh_ctx** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @_compute_val(%struct.dh_ctx* %63, i64 %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %89

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %73 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %76 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mpi_write_to_sgl(i64 %71, i32 %74, i32 %77, i32* %9)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EBADMSG, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %81, %69, %56
  %90 = load %struct.kpp_request*, %struct.kpp_request** %3, align 8
  %91 = getelementptr inbounds %struct.kpp_request, %struct.kpp_request* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @mpi_free(i64 %95)
  br label %97

97:                                               ; preds = %94, %89
  br label %98

98:                                               ; preds = %97, %47, %29
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @mpi_free(i64 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %17
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.crypto_kpp* @crypto_kpp_reqtfm(%struct.kpp_request*) #1

declare dso_local %struct.dh_ctx* @dh_get_ctx(%struct.crypto_kpp*) #1

declare dso_local i64 @mpi_alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mpi_read_raw_from_sgl(i64, i32) #1

declare dso_local i32 @dh_is_pubkey_valid(%struct.dh_ctx*, i64) #1

declare dso_local i32 @_compute_val(%struct.dh_ctx*, i64, i64) #1

declare dso_local i32 @mpi_write_to_sgl(i64, i32, i32, i32*) #1

declare dso_local i32 @mpi_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
