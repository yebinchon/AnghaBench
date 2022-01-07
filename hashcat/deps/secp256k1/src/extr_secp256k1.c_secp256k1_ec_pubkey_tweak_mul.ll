; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_tweak_mul.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_secp256k1.c_secp256k1_ec_pubkey_tweak_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @secp256k1_ec_pubkey_tweak_mul(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY_CHECK(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @secp256k1_ecmult_context_is_built(i32* %16)
  %18 = call i32 @ARG_CHECK(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ARG_CHECK(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ARG_CHECK(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @secp256k1_scalar_set_b32(i32* %8, i8* %27, i32* %10)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @secp256k1_pubkey_load(%struct.TYPE_4__* %32, i32* %7, i32* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i1 [ false, %3 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i64 @secp256k1_eckey_pubkey_tweak_mul(i32* %45, i32* %7, i32* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @secp256k1_pubkey_save(i32* %49, i32* %7)
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @ARG_CHECK(i32) #1

declare dso_local i32 @secp256k1_ecmult_context_is_built(i32*) #1

declare dso_local i32 @secp256k1_scalar_set_b32(i32*, i8*, i32*) #1

declare dso_local i64 @secp256k1_pubkey_load(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @secp256k1_eckey_pubkey_tweak_mul(i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_pubkey_save(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
