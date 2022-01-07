; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_sign.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ecdsa_sign(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i32 (i8*, i8*, i8*, i32*, i8*, i32)* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*, i8*, i32*, i8*, i32)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [32 x i8], align 16
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i8*, i8*, i32*, i8*, i32)* %4, i32 (i8*, i8*, i8*, i32*, i8*, i32)** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY_CHECK(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @secp256k1_ecmult_gen_context_is_built(i32* %27)
  %29 = call i32 @ARG_CHECK(i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ARG_CHECK(i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ARG_CHECK(i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @ARG_CHECK(i32 %40)
  %42 = load i32 (i8*, i8*, i8*, i32*, i8*, i32)*, i32 (i8*, i8*, i8*, i32*, i8*, i32)** %11, align 8
  %43 = icmp eq i32 (i8*, i8*, i8*, i32*, i8*, i32)* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %6
  store i32 (i8*, i8*, i8*, i32*, i8*, i32)* @secp256k1_nonce_function_default, i32 (i8*, i8*, i8*, i32*, i8*, i32)** %11, align 8
  br label %45

45:                                               ; preds = %44, %6
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @secp256k1_scalar_set_b32(i32* %15, i8* %46, i32* %19)
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %91, label %50

50:                                               ; preds = %45
  %51 = call i32 @secp256k1_scalar_is_zero(i32* %15)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %91, label %53

53:                                               ; preds = %50
  store i32 0, i32* %21, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @secp256k1_scalar_set_b32(i32* %17, i8* %54, i32* null)
  br label %56

56:                                               ; preds = %53, %82
  %57 = load i32 (i8*, i8*, i8*, i32*, i8*, i32)*, i32 (i8*, i8*, i8*, i32*, i8*, i32)** %11, align 8
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %21, align 4
  %63 = call i32 %57(i8* %58, i8* %59, i8* %60, i32* null, i8* %61, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %85

67:                                               ; preds = %56
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %69 = call i32 @secp256k1_scalar_set_b32(i32* %16, i8* %68, i32* %19)
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = call i32 @secp256k1_scalar_is_zero(i32* %16)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i64 @secp256k1_ecdsa_sig_sign(i32* %77, i32* %13, i32* %14, i32* %15, i32* %17, i32* %16, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %85

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %72, %67
  %83 = load i32, i32* %21, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %21, align 4
  br label %56

85:                                               ; preds = %80, %66
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %87 = call i32 @memset(i8* %86, i32 0, i32 32)
  %88 = call i32 @secp256k1_scalar_clear(i32* %17)
  %89 = call i32 @secp256k1_scalar_clear(i32* %16)
  %90 = call i32 @secp256k1_scalar_clear(i32* %15)
  br label %91

91:                                               ; preds = %85, %50, %45
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @secp256k1_ecdsa_signature_save(i8* %95, i32* %13, i32* %14)
  br label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @memset(i8* %98, i32 0, i32 1)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %18, align 4
  ret i32 %101
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_is_built(i32*) #1

declare dso_local i32 @secp256k1_nonce_function_default(i8*, i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i64 @secp256k1_ecdsa_sig_sign(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_save(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
