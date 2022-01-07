; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_tv1.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core_ristretto255.c_tv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tv1.bad_encodings_hex = internal global [29 x i8*] [i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [65 x i8] c"00ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"f3ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"edffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"0100000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"01ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"ed57ffd8c914fb201471d1c3d245ce3c746fcbe63a3679d51b6a516ebebe0e20\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"c34c4e1826e5d403b78e246e88aa051c36ccf0aafebffe137d148a2bf9104562\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"c940e5a4404157cfb1628b108db051a8d439e1a421394ec4ebccb9ec92a8ac78\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"47cfc5497c53dc8e61c91d17fd626ffb1c49e2bca94eed052281b510b1117a24\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"f1c6165d33367351b0da8f6e4511010c68174a03b6581212c71c0e1d026c3c72\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"87260f7a2f12495118360f02c26a470f450dadf34a413d21042b43b9d93e1309\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"26948d35ca62e643e26a83177332e6b6afeb9d08e4268b650f1f5bbd8d81d371\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"4eac077a713c57b4f4397629a4145982c661f48044dd3f96427d40b147d9742f\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"de6a7b00deadc788eb6b6c8d20c0ae96c2f2019078fa604fee5b87d6e989ad7b\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"bcab477be20861e01e4a0e295284146a510150d9817763caf1a6f4b422d67042\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"2a292df7e32cababbd9de088d1d1abec9fc0440f637ed2fba145094dc14bea08\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"f4a9e534fc0d216c44b218fa0c42d99635a0127ee2e53c712f70609649fdff22\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"8268436f8c4126196cf64b3c7ddbda90746a378625f9813dd9b8457077256731\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"2810e5cbc2cc4d4eece54f61c6f69758e289aa7ab440b3cbeaa21995c2f4232b\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"3eb858e78f5a7254d8c9731174a94f76755fd3941c0ac93735c07ba14579630e\00", align 1
@.str.21 = private unnamed_addr constant [65 x i8] c"a45fdc55c76448c049a1ab33f17023edfb2be3581e9c7aade8a6125215e04220\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"d483fe813c6ba647ebbfd3ec41adca1c6130c2beeee9d9bf065c8d151c5f396e\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"8a2e1d30050198c65a54483123960ccc38aef6848e1ec8f5f780e8523769ba32\00", align 1
@.str.24 = private unnamed_addr constant [65 x i8] c"32888462f8b486c68ad7dd9610be5192bbeaf3b443951ac1a8118419d9fa097b\00", align 1
@.str.25 = private unnamed_addr constant [65 x i8] c"227142501b9d4355ccba290404bde41575b037693cef1f438c47f8fbf35d1165\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"5c37cc491da847cfeb9281d407efc41e15144c876e0170b499a96a22ed31e01e\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"445425117cb8c90edcbc7c1cc0e74f747f2c1efa5630a967c64f287792a48a4b\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"ecffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f\00", align 1
@crypto_core_ristretto255_BYTES = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [23 x i8] c"[%s] was not rejected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @crypto_core_ristretto255_BYTES, align 4
  %4 = call i64 @sodium_malloc(i32 %3)
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %1, align 8
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %28, %0
  %7 = load i64, i64* %2, align 8
  %8 = icmp ult i64 %7, 29
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load i8*, i8** %1, align 8
  %11 = load i32, i32* @crypto_core_ristretto255_BYTES, align 4
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds [29 x i8*], [29 x i8*]* @tv1.bad_encodings_hex, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* @crypto_core_ristretto255_BYTES, align 4
  %16 = mul nsw i32 %15, 2
  %17 = add nsw i32 %16, 1
  %18 = call i32 @sodium_hex2bin(i8* %10, i32 %11, i8* %14, i32 %17, i32* null, i32* null, i32* null)
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @crypto_core_ristretto255_is_valid_point(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds [29 x i8*], [29 x i8*]* @tv1.bad_encodings_hex, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %2, align 8
  br label %6

31:                                               ; preds = %6
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @sodium_free(i8* %32)
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @sodium_hex2bin(i8*, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @crypto_core_ristretto255_is_valid_point(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
