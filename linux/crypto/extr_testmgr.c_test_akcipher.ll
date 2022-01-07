; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_akcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_akcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.akcipher_testvec = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"alg: akcipher: test %d failed for %s, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, %struct.akcipher_testvec*, i32)* @test_akcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_akcipher(%struct.crypto_akcipher* %0, i8* %1, %struct.akcipher_testvec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.akcipher_testvec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.akcipher_testvec* %2, %struct.akcipher_testvec** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %14 = call i32 @crypto_akcipher_tfm(%struct.crypto_akcipher* %13)
  %15 = call i8* @crypto_tfm_alg_driver_name(i32 %14)
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %36, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %22 = load %struct.akcipher_testvec*, %struct.akcipher_testvec** %8, align 8
  %23 = getelementptr inbounds %struct.akcipher_testvec, %struct.akcipher_testvec* %22, i32 1
  store %struct.akcipher_testvec* %23, %struct.akcipher_testvec** %8, align 8
  %24 = ptrtoint %struct.akcipher_testvec* %22 to i32
  %25 = call i32 @test_akcipher_one(%struct.crypto_akcipher* %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %16

39:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i8* @crypto_tfm_alg_driver_name(i32) #1

declare dso_local i32 @crypto_akcipher_tfm(%struct.crypto_akcipher*) #1

declare dso_local i32 @test_akcipher_one(%struct.crypto_akcipher*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
