; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_kpp.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_kpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_kpp = type { i32 }
%struct.kpp_testvec = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"alg: %s: test failed on vector %d, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_kpp*, i8*, %struct.kpp_testvec*, i32)* @test_kpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_kpp(%struct.crypto_kpp* %0, i8* %1, %struct.kpp_testvec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_kpp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kpp_testvec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_kpp* %0, %struct.crypto_kpp** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.kpp_testvec* %2, %struct.kpp_testvec** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %33, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.crypto_kpp*, %struct.crypto_kpp** %6, align 8
  %18 = load %struct.kpp_testvec*, %struct.kpp_testvec** %8, align 8
  %19 = getelementptr inbounds %struct.kpp_testvec, %struct.kpp_testvec* %18, i32 1
  store %struct.kpp_testvec* %19, %struct.kpp_testvec** %8, align 8
  %20 = ptrtoint %struct.kpp_testvec* %18 to i32
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @do_test_kpp(%struct.crypto_kpp* %17, i32 %20, i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @do_test_kpp(%struct.crypto_kpp*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
