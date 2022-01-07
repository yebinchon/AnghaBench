; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_dec.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32, i32, i32, i32 }
%struct.crypto_akcipher = type { i32 }
%struct.rsa_mpi_key = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @rsa_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_dec(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.rsa_mpi_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %10 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %11 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %10)
  store %struct.crypto_akcipher* %11, %struct.crypto_akcipher** %4, align 8
  %12 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %13 = call %struct.rsa_mpi_key* @rsa_get_key(%struct.crypto_akcipher* %12)
  store %struct.rsa_mpi_key* %13, %struct.rsa_mpi_key** %5, align 8
  %14 = call i32 @mpi_alloc(i32 0)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  %21 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %5, align 8
  %22 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %5, align 8
  %27 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i1 [ true, %20 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %43 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %46 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mpi_read_raw_from_sgl(i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %82

52:                                               ; preds = %39
  %53 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @_rsa_dec(%struct.rsa_mpi_key* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %79

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %63 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %66 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mpi_write_to_sgl(i32 %61, i32 %64, i32 %67, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  br label %79

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @EBADMSG, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %71, %59
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @mpi_free(i32 %80)
  br label %82

82:                                               ; preds = %79, %51, %36
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @mpi_free(i32 %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.rsa_mpi_key* @rsa_get_key(%struct.crypto_akcipher*) #1

declare dso_local i32 @mpi_alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mpi_read_raw_from_sgl(i32, i32) #1

declare dso_local i32 @_rsa_dec(%struct.rsa_mpi_key*, i32, i32) #1

declare dso_local i32 @mpi_write_to_sgl(i32, i32, i32, i32*) #1

declare dso_local i32 @mpi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
