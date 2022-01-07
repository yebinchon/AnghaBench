; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_create.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ec_pubkey_create(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY_CHECK(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ARG_CHECK(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 4)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @secp256k1_ecmult_gen_context_is_built(i32* %23)
  %25 = call i32 @ARG_CHECK(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @ARG_CHECK(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @secp256k1_scalar_set_b32(i32* %9, i8* %30, i32* %10)
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %3
  %35 = call i32 @secp256k1_scalar_is_zero(i32* %9)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %3
  %39 = phi i1 [ false, %3 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @secp256k1_ecmult_gen(i32* %45, i32* %7, i32* %9)
  %47 = call i32 @secp256k1_ge_set_gej(i32* %8, i32* %7)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @secp256k1_pubkey_save(i32* %48, i32* %8)
  br label %50

50:                                               ; preds = %43, %38
  %51 = call i32 @secp256k1_scalar_clear(i32* %9)
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @secp256k1_ecmult_gen_context_is_built(i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i32 @secp256k1_scalar_is_zero(i32*) #1

declare dso_local i32 @secp256k1_ecmult_gen(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ge_set_gej(i32*, i32*) #1

declare dso_local i32 @secp256k1_pubkey_save(i32*, i32*) #1

declare dso_local i32 @secp256k1_scalar_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
