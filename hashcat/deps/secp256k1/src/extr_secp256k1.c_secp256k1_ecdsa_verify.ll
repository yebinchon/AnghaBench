; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_verify.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ecdsa_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ecdsa_verify(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @VERIFY_CHECK(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @secp256k1_ecmult_context_is_built(i32* %18)
  %20 = call i32 @ARG_CHECK(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ARG_CHECK(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ARG_CHECK(i32 %27)
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ARG_CHECK(i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @secp256k1_scalar_set_b32(i32* %12, i8* %33, i32* null)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @secp256k1_ecdsa_signature_load(%struct.TYPE_5__* %35, i32* %10, i32* %11, i32* %36)
  %38 = call i32 @secp256k1_scalar_is_high(i32* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @secp256k1_pubkey_load(%struct.TYPE_5__* %41, i32* %9, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i64 @secp256k1_ecdsa_sig_verify(i32* %47, i32* %10, i32* %11, i32* %9, i32* %12)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %40, %4
  %51 = phi i1 [ false, %40 ], [ false, %4 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @secp256k1_ecmult_context_is_built(i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_load(%struct.TYPE_5__*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_is_high(i32*) #1

declare dso_local i64 @secp256k1_pubkey_load(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i64 @secp256k1_ecdsa_sig_verify(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
