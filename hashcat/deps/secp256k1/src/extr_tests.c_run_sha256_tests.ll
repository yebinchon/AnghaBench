; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_sha256_tests.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_sha256_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_sha256_tests.inputs = internal global [8 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"message digest\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"secure hash algorithm\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"SHA256 is considered to be safe\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"For this sample, this 63-byte string will be used as input data\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"This is exactly 64 bytes long, not counting the terminating byte\00", align 1
@run_sha256_tests.outputs = internal constant [8 x [32 x i8]] [[32 x i8] c"\E3\B0\C4B\98\FC\1C\14\9A\FB\F4\C8\99o\B9$'\AEA\E4d\9B\93L\A4\95\99\1BxR\B8U", [32 x i8] c"\BAx\16\BF\8F\01\CF\EAAA@\DE]\AE\22#\B0\03a\A3\96\17z\9C\B4\10\FFa\F2\00\15\AD", [32 x i8] c"\F7\84oU\CF#\E1N\EB\EA\B5\B4\E1U\0C\AD[P\9E3H\FB\C4\EF\A3\A1A=9<\B6P", [32 x i8] c"\F3\0C\EB+\B2\82\9Ey\E4\CA\97S\D3Z\8E\CC\00&-\16L\C0w\08\02\958\1C\BDd?\0D", [32 x i8] c"h\19\D9\15\C7?M\1Ew\E4\E1\B5-\1F\A0\F9\CF\9B\EA\EA\D3\93\9F\15\87K\D9\88\E2\A260", [32 x i8] c"$\8Dja\D2\068\B8\E5\C0&\93\0C>`9\A3<\E4Yd\FF!g\F6\EC\ED\D4\19\DB\06\C1", [32 x i8] c"\F0\8Ax\CB\BA\EE\08+\05*\E0p\8F2\FA\1EP\C5\C4!\AAw+\A5\DB\B4\06\A2\EAk\E3B", [32 x i8] c"\ABd\EF\F7\E8\8E.F\16^)\F2\BC\E4\18&\BDL{5R\F6\B3\82\A9\E7\D3\AFG\C2E\F8"], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_sha256_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %78, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %81

8:                                                ; preds = %5
  %9 = call i32 @secp256k1_sha256_initialize(i32* %3)
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @secp256k1_sha256_write(i32* %3, i8* %13, i32 %18)
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %21 = call i32 @secp256k1_sha256_finalize(i32* %3, i8* %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x [32 x i8]], [8 x [32 x i8]]* @run_sha256_tests.outputs, i64 0, i64 %24
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %25, i64 0, i64 0
  %27 = call i64 @memcmp(i8* %22, i8* %26, i32 32)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @CHECK(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %77

37:                                               ; preds = %8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @secp256k1_rand_int(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = call i32 @secp256k1_sha256_initialize(i32* %3)
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @secp256k1_sha256_write(i32* %3, i8* %48, i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8*], [8 x i8*]* @run_sha256_tests.inputs, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @secp256k1_sha256_write(i32* %3, i8* %57, i32 %64)
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %67 = call i32 @secp256k1_sha256_finalize(i32* %3, i8* %66)
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x [32 x i8]], [8 x [32 x i8]]* @run_sha256_tests.outputs, i64 0, i64 %70
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %71, i64 0, i64 0
  %73 = call i64 @memcmp(i8* %68, i8* %72, i32 32)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @CHECK(i32 %75)
  br label %77

77:                                               ; preds = %37, %8
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %5

81:                                               ; preds = %5
  ret void
}

declare dso_local i32 @secp256k1_sha256_initialize(i32*) #1

declare dso_local i32 @secp256k1_sha256_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @secp256k1_sha256_finalize(i32*, i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @secp256k1_rand_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
