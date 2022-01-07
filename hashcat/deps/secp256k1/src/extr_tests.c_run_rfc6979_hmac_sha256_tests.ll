; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_rfc6979_hmac_sha256_tests.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_rfc6979_hmac_sha256_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_rfc6979_hmac_sha256_tests.key1 = internal constant [65 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F\00K\F5\12/4ET\C5;\DE.\BB\8C\D2\B7\E3\D1`\0A\D61\C3\85\A5\D7\CC\E2<w\85E\9A\00", align 16
@run_rfc6979_hmac_sha256_tests.out1 = internal constant [3 x [32 x i8]] [[32 x i8] c"O\E2\95%\B2\08h\09\15\9A\CD\F0Pn\FB\86\B0\EC\93,{\A4BV\AB2\1EB\1Eg\E9\FB", [32 x i8] c"+\F0\FF\F1\D3\C3x\A2-\C5\DE\1D\85e\222\\e\B5\04I\1A\0C\BD\01\CB\8F:\A6\7F\FDJ", [32 x i8] c"\F5(\B4\10\CBT\1Fw\00\0Dz\FBl[S\C5\C4q\EA\B4>Fm\9A\C5\19\0C9\C8/\D8."], align 16
@run_rfc6979_hmac_sha256_tests.key2 = internal constant [64 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\E3\B0\C4B\98\FC\1C\14\9A\FB\F4\C8\99o\B9$'\AEA\E4d\9B\93L\A4\95\99\1BxR\B8U", align 16
@run_rfc6979_hmac_sha256_tests.out2 = internal constant [3 x [32 x i8]] [[32 x i8] c"\9C#l\16[\82\AE\0C\D5\90e\9E\10\0Bk\AB06\E7\BA\8B\06t\9B\AFi\81\E1o\1A+\95", [32 x i8] c"\DFG\10ab[\C0\EA\14\B6\82\FE\EE,\9C\02\F25\DA\04 L\1Db\A1Sln\17\AE\D7\A9", [32 x i8] c"u\97\88|\BDv2\1F2\E3\04@g\9A\22\CF\7F\8D\9D.\AC9\0EX\1F\EA\09\1C\E2\02\BA\94"], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_rfc6979_hmac_sha256_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = call i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32* %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @run_rfc6979_hmac_sha256_tests.key1, i64 0, i64 0), i32 64)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %10 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %1, i8* %9, i32 32)
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @run_rfc6979_hmac_sha256_tests.out1, i64 0, i64 %13
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %16 = call i64 @memcmp(i8* %11, i8* %15, i32 32)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @CHECK(i32 %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = call i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32* %1)
  %25 = call i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32* %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @run_rfc6979_hmac_sha256_tests.key1, i64 0, i64 0), i32 65)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %41, %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %31 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %1, i8* %30, i32 32)
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @run_rfc6979_hmac_sha256_tests.out1, i64 0, i64 %34
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %37 = call i64 @memcmp(i8* %32, i8* %36, i32 32)
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @CHECK(i32 %39)
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %26

44:                                               ; preds = %26
  %45 = call i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32* %1)
  %46 = call i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32* %1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @run_rfc6979_hmac_sha256_tests.key2, i64 0, i64 0), i32 64)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %62, %44
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %52 = call i32 @secp256k1_rfc6979_hmac_sha256_generate(i32* %1, i8* %51, i32 32)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x [32 x i8]], [3 x [32 x i8]]* @run_rfc6979_hmac_sha256_tests.out2, i64 0, i64 %55
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %56, i64 0, i64 0
  %58 = call i64 @memcmp(i8* %53, i8* %57, i32 32)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @CHECK(i32 %60)
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %47

65:                                               ; preds = %47
  %66 = call i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32* %1)
  ret void
}

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_initialize(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_generate(i32*, i8*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @secp256k1_rfc6979_hmac_sha256_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
