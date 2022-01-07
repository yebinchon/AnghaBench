; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/picotlsvs/picotlsvs/extr_picotlsvs.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/picotlsvs/picotlsvs/extr_picotlsvs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nb_test_keys = common dso_local global i64 0, align 8
@test_keys = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"\0AStarting the RSA test with OpenSSL\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"key.pem\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cert.pem\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\0AStarting the P256R1 test with OpenSSL\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ec_key.pem\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ec_cert.pem\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"\0AStarting the P256R1 test with OpenSSL server and Minicrypto client\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\0AStarting the P256R1 test with Minicrypto\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"\0AStarting the P256R1 test with Minicrypto server and OpenSSL client\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @nb_test_keys, align 8
  %10 = icmp ult i64 %8, %9
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load i32*, i32** @test_keys, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @openPemTest(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %3, align 8
  br label %4

22:                                               ; preds = %11
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ptls_memory_loopback_test(i32 1, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @ptls_memory_loopback_test(i32 1, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 @ptls_memory_loopback_test(i32 0, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %45 = call i32 @ptls_memory_loopback_test(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0))
  %51 = call i32 @ptls_memory_loopback_test(i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @openPemTest(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ptls_memory_loopback_test(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
