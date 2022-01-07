; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_test_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_test_suite = type { i32, i32* }
%struct.aead_request = type { i32 }
%struct.cipher_test_sglists = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.aead_test_suite*, %struct.aead_request*, %struct.cipher_test_sglists*)* @test_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_aead(i8* %0, i32 %1, %struct.aead_test_suite* %2, %struct.aead_request* %3, %struct.cipher_test_sglists* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aead_test_suite*, align 8
  %10 = alloca %struct.aead_request*, align 8
  %11 = alloca %struct.cipher_test_sglists*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.aead_test_suite* %2, %struct.aead_test_suite** %9, align 8
  store %struct.aead_request* %3, %struct.aead_request** %10, align 8
  store %struct.cipher_test_sglists* %4, %struct.cipher_test_sglists** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %39, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.aead_test_suite*, %struct.aead_test_suite** %9, align 8
  %17 = getelementptr inbounds %struct.aead_test_suite, %struct.aead_test_suite* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.aead_test_suite*, %struct.aead_test_suite** %9, align 8
  %24 = getelementptr inbounds %struct.aead_test_suite, %struct.aead_test_suite* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %10, align 8
  %31 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %11, align 8
  %32 = call i32 @test_aead_vec(i8* %21, i32 %22, i32* %28, i32 %29, %struct.aead_request* %30, %struct.cipher_test_sglists* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %20
  %38 = call i32 (...) @cond_resched()
  br label %39

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %14

42:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @test_aead_vec(i8*, i32, i32*, i32, %struct.aead_request*, %struct.cipher_test_sglists*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
