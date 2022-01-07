; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead_vec.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testvec_config = type { i32 }
%struct.aead_testvec = type { i64 }
%struct.aead_request = type { i32 }
%struct.cipher_test_sglists = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@default_cipher_testvec_configs = common dso_local global %struct.testvec_config* null, align 8
@TESTVEC_CONFIG_NAMELEN = common dso_local global i32 0, align 4
@fuzz_iterations = common dso_local global i32 0, align 4
@noextratests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.aead_testvec*, i32, %struct.aead_request*, %struct.cipher_test_sglists*)* @test_aead_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_aead_vec(i8* %0, i32 %1, %struct.aead_testvec* %2, i32 %3, %struct.aead_request* %4, %struct.cipher_test_sglists* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aead_testvec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.aead_request*, align 8
  %13 = alloca %struct.cipher_test_sglists*, align 8
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.aead_testvec* %2, %struct.aead_testvec** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.aead_request* %4, %struct.aead_request** %12, align 8
  store %struct.cipher_test_sglists* %5, %struct.cipher_test_sglists** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load %struct.aead_testvec*, %struct.aead_testvec** %10, align 8
  %21 = getelementptr inbounds %struct.aead_testvec, %struct.aead_testvec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %55

25:                                               ; preds = %19, %6
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %51, %25
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.testvec_config*, %struct.testvec_config** @default_cipher_testvec_configs, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.testvec_config* %31)
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.aead_testvec*, %struct.aead_testvec** %10, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %39 = load %struct.testvec_config*, %struct.testvec_config** @default_cipher_testvec_configs, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.testvec_config, %struct.testvec_config* %39, i64 %41
  %43 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  %44 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %13, align 8
  %45 = call i32 @test_aead_vec_cfg(i8* %35, i32 %36, %struct.aead_testvec* %37, i8* %38, %struct.testvec_config* %42, %struct.aead_request* %43, %struct.cipher_test_sglists* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %7, align 4
  br label %55

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %15, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %29

54:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %48, %24
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.testvec_config*) #1

declare dso_local i32 @test_aead_vec_cfg(i8*, i32, %struct.aead_testvec*, i8*, %struct.testvec_config*, %struct.aead_request*, %struct.cipher_test_sglists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
