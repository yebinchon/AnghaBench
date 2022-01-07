; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_verify.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests_exhaustive.c_test_exhaustive_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_exhaustive_verify(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [32 x i8], align 16
  %23 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %110, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %113

28:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %29

29:                                               ; preds = %106, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %102, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %105

38:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %101

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @secp256k1_scalar_set_int(i64* %17, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @secp256k1_scalar_set_int(i64* %16, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @secp256k1_scalar_set_int(i64* %15, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @secp256k1_scalar_set_int(i64* %14, i32 %50)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %73, %43
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @r_from_k(i64* %23, i32* %57, i32 %58)
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %23, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @secp256k1_scalar_set_int(i64* %18, i32 %64)
  %66 = call i32 @secp256k1_scalar_mul(i64* %18, i64* %18, i64* %17)
  %67 = call i32 @secp256k1_scalar_mul(i64* %19, i64* %16, i64* %14)
  %68 = call i32 @secp256k1_scalar_add(i64* %19, i64* %19, i64* %15)
  %69 = call i32 @secp256k1_scalar_eq(i64* %18, i64* %19)
  %70 = load i32, i32* %21, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %21, align 4
  br label %72

72:                                               ; preds = %63, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %20, align 4
  br label %52

76:                                               ; preds = %52
  %77 = call i32 @secp256k1_scalar_is_high(i64* %17)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %21, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %21, align 4
  %83 = call i32 @secp256k1_ecdsa_signature_save(i32* %12, i64* %16, i64* %17)
  %84 = load i32*, i32** %5, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = call i32 @memcpy(i32* %11, i32* %86, i32 4)
  %88 = call i32 @secp256k1_pubkey_save(i32* %13, i32* %11)
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %90 = call i32 @secp256k1_scalar_get_b32(i8* %89, i64* %15)
  %91 = load i32, i32* %21, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %94 = call i32 @secp256k1_ecdsa_verify(i32* %92, i32* %12, i8* %93, i32* %13)
  %95 = icmp eq i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @CHECK(i32 %96)
  br label %98

98:                                               ; preds = %76
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %39

101:                                              ; preds = %39
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %34

105:                                              ; preds = %34
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %29

109:                                              ; preds = %29
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %24

113:                                              ; preds = %24
  ret void
}

declare dso_local i32 @secp256k1_scalar_set_int(i64*, i32) #1

declare dso_local i32 @r_from_k(i64*, i32*, i32) #1

declare dso_local i32 @secp256k1_scalar_mul(i64*, i64*, i64*) #1

declare dso_local i32 @secp256k1_scalar_add(i64*, i64*, i64*) #1

declare dso_local i32 @secp256k1_scalar_eq(i64*, i64*) #1

declare dso_local i32 @secp256k1_scalar_is_high(i64*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_save(i32*, i64*, i64*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @secp256k1_pubkey_save(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_get_b32(i8*, i64*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ecdsa_verify(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
