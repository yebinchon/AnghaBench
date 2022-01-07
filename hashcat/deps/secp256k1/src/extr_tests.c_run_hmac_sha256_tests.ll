; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_hmac_sha256_tests.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_hmac_sha256_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_hmac_sha256_tests.keys = internal global [6 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [21 x i8] c"\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Jefe\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\00", align 1
@.str.4 = private unnamed_addr constant [132 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\00", align 1
@run_hmac_sha256_tests.inputs = internal global [6 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"Hi There\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"what do ya want for nothing?\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\DD\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"Test Using Larger Than Block-Size Key - Hash Key First\00", align 1
@.str.10 = private unnamed_addr constant [153 x i8] c"This is a test using a larger than block-size key and a larger than block-size data. The key needs to be hashed before being used by the HMAC algorithm.\00", align 1
@run_hmac_sha256_tests.outputs = internal constant [6 x [32 x i8]] [[32 x i8] c"\B04La\D8\DB8S\\\A8\AF\CE\AF\0B\F1+\88\1D\C2\00\C9\83=\A7&\E97l.2\CF\F7", [32 x i8] c"[\DC\C1F\BF`uNj\04$&\08\95u\C7Z\00?\08\9D'9\83\9D\ECX\B9d\EC8C", [32 x i8] c"w>\A9\1E6\80\0EF\85M\B8\EB\D0\91\81\A7)Y\09\8B>\F8\C1\22\D9cU\14\CE\D5e\FE", [32 x i8] c"\82U\8A8\9AD<\0E\A4\CC\81\98\99\F2\08:\85\F0\FA\A3\E5x\F8\07z.?\F4g)f[", [32 x i8] c"`\E41Y\1E\E0\B6\7F\0D\8A&\AA\CB\F5\B7\7F\8E\0B\C6!7(\C5\14\05F\04\0F\0E\E3\7FT", [32 x i8] c"\9B\09\FF\A7\1B\94/\CB'c_\BC\D5\B0\E9D\BF\DCcdO\07\13\93\8A\7FQS\\:5\E2"], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_hmac_sha256_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %96, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %99

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.keys, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.keys, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @secp256k1_hmac_sha256_initialize(i32* %2, i8* %12, i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @secp256k1_hmac_sha256_write(i32* %2, i8* %22, i32 %27)
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %30 = call i32 @secp256k1_hmac_sha256_finalize(i32* %2, i8* %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @run_hmac_sha256_tests.outputs, i64 0, i64 %33
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %34, i64 0, i64 0
  %36 = call i64 @memcmp(i8* %31, i8* %35, i32 32)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @CHECK(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @secp256k1_rand_int(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.keys, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.keys, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = call i32 @secp256k1_hmac_sha256_initialize(i32* %2, i8* %56, i32 %61)
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @secp256k1_hmac_sha256_write(i32* %2, i8* %66, i32 %67)
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* @run_hmac_sha256_tests.inputs, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @secp256k1_hmac_sha256_write(i32* %2, i8* %75, i32 %82)
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %85 = call i32 @secp256k1_hmac_sha256_finalize(i32* %2, i8* %84)
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [6 x [32 x i8]], [6 x [32 x i8]]* @run_hmac_sha256_tests.outputs, i64 0, i64 %88
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %89, i64 0, i64 0
  %91 = call i64 @memcmp(i8* %86, i8* %90, i32 32)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @CHECK(i32 %93)
  br label %95

95:                                               ; preds = %46, %8
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %5

99:                                               ; preds = %5
  ret void
}

declare dso_local i32 @secp256k1_hmac_sha256_initialize(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @secp256k1_hmac_sha256_write(i32*, i8*, i32) #1

declare dso_local i32 @secp256k1_hmac_sha256_finalize(i32*, i8*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @secp256k1_rand_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
