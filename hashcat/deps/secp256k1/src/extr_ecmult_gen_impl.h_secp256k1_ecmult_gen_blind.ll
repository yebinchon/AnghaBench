; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen_blind.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_gen_impl.h_secp256k1_ecmult_gen_blind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@secp256k1_ge_const_g = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @secp256k1_ecmult_gen_blind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_ecmult_gen_blind(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = bitcast [64 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @secp256k1_gej_set_ge(i32* %17, i32* @secp256k1_ge_const_g)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @secp256k1_gej_neg(i32* %20, i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @secp256k1_scalar_set_int(i32* %25, i32 1)
  br label %27

27:                                               ; preds = %15, %2
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @secp256k1_scalar_get_b32(i8* %28, i32* %30)
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %34 = call i32 @memcpy(i8* %32, i8* %33, i32 32)
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 32
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @memcpy(i8* %39, i8* %40, i32 32)
  br label %42

42:                                               ; preds = %37, %27
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %44 = load i8*, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 64, i32 32
  %48 = call i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32* %9, i8* %43, i32 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %50 = call i32 @memset(i8* %49, i32 0, i32 64)
  br label %51

51:                                               ; preds = %67, %42
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %9, i8* %52, i32 32)
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %55 = call i32 @secp256k1_fe_set_b32(i32* %7, i8* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %51
  %62 = call i64 @secp256k1_fe_is_zero(i32* %7)
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %61, %51
  %65 = phi i1 [ true, %51 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %51, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @secp256k1_gej_rescale(i32* %72, i32* %7)
  %74 = call i32 @secp256k1_fe_clear(i32* %7)
  br label %75

75:                                               ; preds = %88, %70
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %77 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %9, i8* %76, i32 32)
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %79 = call i32 @secp256k1_scalar_set_b32(i32* %5, i8* %78, i32* %10)
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = call i64 @secp256k1_scalar_is_zero(i32* %5)
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi i1 [ true, %75 ], [ %84, %82 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %75, label %91

91:                                               ; preds = %88
  %92 = call i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32* %9)
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %94 = call i32 @memset(i8* %93, i32 0, i32 32)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = call i32 @secp256k1_ecmult_gen(%struct.TYPE_4__* %95, i32* %6, i32* %5)
  %97 = call i32 @secp256k1_scalar_negate(i32* %5, i32* %5)
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = call i32 @secp256k1_scalar_clear(i32* %5)
  %105 = call i32 @secp256k1_gej_clear(i32* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_gej_set_ge(i32*, i32*) #2

declare dso_local i32 @secp256k1_gej_neg(i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #2

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_generate(i32*, i8*, i32) #2

declare dso_local i32 @secp256k1_fe_set_b32(i32*, i8*) #2

declare dso_local i64 @secp256k1_fe_is_zero(i32*) #2

declare dso_local i32 @secp256k1_gej_rescale(i32*, i32*) #2

declare dso_local i32 @secp256k1_fe_clear(i32*) #2

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #2

declare dso_local i64 @secp256k1_scalar_is_zero(i32*) #2

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32*) #2

declare dso_local i32 @secp256k1_ecmult_gen(%struct.TYPE_4__*, i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_negate(i32*, i32*) #2

declare dso_local i32 @secp256k1_scalar_clear(i32*) #2

declare dso_local i32 @secp256k1_gej_clear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
