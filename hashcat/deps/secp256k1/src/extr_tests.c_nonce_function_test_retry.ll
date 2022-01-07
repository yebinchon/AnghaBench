; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_nonce_function_test_retry.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_nonce_function_test_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nonce_function_test_retry.order = internal constant [32 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\BA\AE\DC\E6\AFH\A0;\BF\D2^\8C\D06AA", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i32)* @nonce_function_test_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonce_function_test_retry(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %31

16:                                               ; preds = %6
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 255
  %22 = call i32 @memset(i8* %17, i32 %21, i32 32)
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 31
  %28 = load i8, i8* %27, align 1
  %29 = add i8 %28, -1
  store i8 %29, i8* %27, align 1
  br label %30

30:                                               ; preds = %25, %16
  store i32 1, i32* %7, align 4
  br label %58

31:                                               ; preds = %6
  %32 = load i32, i32* %13, align 4
  %33 = icmp ult i32 %32, 5
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @memcpy(i8* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @nonce_function_test_retry.order, i64 0, i64 0), i32 32)
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 31
  %42 = load i8, i8* %41, align 1
  %43 = add i8 %42, 1
  store i8 %43, i8* %41, align 1
  br label %44

44:                                               ; preds = %39, %34
  store i32 1, i32* %7, align 4
  br label %58

45:                                               ; preds = %31
  %46 = load i32, i32* %13, align 4
  %47 = icmp ugt i32 %46, 5
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %58

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sub i32 %55, 5
  %57 = call i32 @nonce_function_rfc6979(i8* %50, i8* %51, i8* %52, i8* %53, i8* %54, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %49, %48, %44, %30
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nonce_function_rfc6979(i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
