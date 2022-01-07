; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_set_pub_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_set_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.rsa_mpi_key = type { i8*, i8* }
%struct.rsa_key = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32)* @rsa_set_pub_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_set_pub_key(%struct.crypto_akcipher* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsa_mpi_key*, align 8
  %9 = alloca %struct.rsa_key, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %12 = call %struct.rsa_mpi_key* @akcipher_tfm_ctx(%struct.crypto_akcipher* %11)
  store %struct.rsa_mpi_key* %12, %struct.rsa_mpi_key** %8, align 8
  %13 = bitcast %struct.rsa_key* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 20, i1 false)
  %14 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %15 = call i32 @rsa_free_mpi_key(%struct.rsa_mpi_key* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rsa_parse_pub_key(%struct.rsa_key* %9, i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @mpi_read_raw_data(i32 %25, i32 %27)
  %29 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %30 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %32 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %63

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @mpi_read_raw_data(i32 %38, i32 %40)
  %42 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %43 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %45 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %63

49:                                               ; preds = %36
  %50 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %51 = getelementptr inbounds %struct.rsa_mpi_key, %struct.rsa_mpi_key* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @mpi_get_size(i8* %52)
  %54 = shl i32 %53, 3
  %55 = call i64 @rsa_check_key_length(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %59 = call i32 @rsa_free_mpi_key(%struct.rsa_mpi_key* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %68

62:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %68

63:                                               ; preds = %48, %35
  %64 = load %struct.rsa_mpi_key*, %struct.rsa_mpi_key** %8, align 8
  %65 = call i32 @rsa_free_mpi_key(%struct.rsa_mpi_key* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %62, %57, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.rsa_mpi_key* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rsa_free_mpi_key(%struct.rsa_mpi_key*) #1

declare dso_local i32 @rsa_parse_pub_key(%struct.rsa_key*, i8*, i32) #1

declare dso_local i8* @mpi_read_raw_data(i32, i32) #1

declare dso_local i64 @rsa_check_key_length(i32) #1

declare dso_local i32 @mpi_get_size(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
