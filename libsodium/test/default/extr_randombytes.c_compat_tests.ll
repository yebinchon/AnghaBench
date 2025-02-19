; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_randombytes.c_compat_tests.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_randombytes.c_compat_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common dso_local global i64* null, align 8
@freq = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"nacl_tests failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @compat_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_tests() #0 {
  %1 = alloca i64, align 8
  %2 = load i64*, i64** @x, align 8
  %3 = call i32 @memset(i64* %2, i32 0, i32 8)
  %4 = load i64*, i64** @x, align 8
  %5 = call i32 @randombytes(i64* %4, i32 8)
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i64, i64* %1, align 8
  %8 = icmp ult i64 %7, 256
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i64*, i64** @freq, align 8
  %11 = load i64, i64* %1, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %1, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %1, align 8
  br label %6

16:                                               ; preds = %6
  store i64 0, i64* %1, align 8
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %1, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i64*, i64** @freq, align 8
  %22 = load i64*, i64** @x, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 255, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %21, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %1, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %1, align 8
  br label %17

35:                                               ; preds = %17
  store i64 0, i64* %1, align 8
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i64, i64* %1, align 8
  %38 = icmp ult i64 %37, 256
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i64*, i64** @freq, align 8
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %1, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %1, align 8
  br label %36

51:                                               ; preds = %36
  ret i32 0
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @randombytes(i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
