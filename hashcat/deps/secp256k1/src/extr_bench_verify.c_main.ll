; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_verify.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_bench_verify.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32 }

@SECP256K1_CONTEXT_SIGN = common dso_local global i32 0, align 4
@SECP256K1_CONTEXT_VERIFY = common dso_local global i32 0, align 4
@SECP256K1_EC_COMPRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ecdsa_verify\00", align 1
@benchmark_verify = common dso_local global i32 0, align 4
@NID_secp256k1 = common dso_local global i32 0, align 4
@benchmark_verify_openssl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @SECP256K1_CONTEXT_SIGN, align 4
  %7 = load i32, i32* @SECP256K1_CONTEXT_VERIFY, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @secp256k1_context_create(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32 %9, i32* %10, align 8
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %22, %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 1, %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %11

25:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %37, %25
  %27 = load i32, i32* %2, align 4
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 33, %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %26

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 72, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @secp256k1_ecdsa_sign(i32 %43, i32* %4, i32* %45, i32* %47, i32* null, i32* null)
  %49 = call i32 @CHECK(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %55 = call i32 @secp256k1_ecdsa_signature_serialize_der(i32 %51, i32 %53, i32* %54, i32* %4)
  %56 = call i32 @CHECK(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @secp256k1_ec_pubkey_create(i32 %58, i32* %3, i32* %60)
  %62 = call i32 @CHECK(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 33, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %69 = load i32, i32* @SECP256K1_EC_COMPRESSED, align 4
  %70 = call i32 @secp256k1_ec_pubkey_serialize(i32 %65, i32 %67, i32* %68, i32* %3, i32 %69)
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  %73 = call i32 @CHECK(i32 %72)
  %74 = load i32, i32* @benchmark_verify, align 4
  %75 = call i32 @run_benchmark(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %74, i32* null, i32* null, %struct.TYPE_3__* %5, i32 10, i32 20000)
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @secp256k1_context_destroy(i32 %77)
  ret i32 0
}

declare dso_local i32 @secp256k1_context_create(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_ecdsa_sign(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @secp256k1_ecdsa_signature_serialize_der(i32, i32, i32*, i32*) #1

declare dso_local i32 @secp256k1_ec_pubkey_create(i32, i32*, i32*) #1

declare dso_local i32 @secp256k1_ec_pubkey_serialize(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @run_benchmark(i8*, i32, i32*, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @secp256k1_context_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
