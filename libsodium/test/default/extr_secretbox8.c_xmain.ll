; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_secretbox8.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_secretbox8.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_secretbox_ZEROBYTES = common dso_local global i64 0, align 8
@k = common dso_local global i32 0, align 4
@n = common dso_local global i64* null, align 8
@crypto_secretbox_NONCEBYTES = common dso_local global i64 0, align 8
@m = common dso_local global i64* null, align 8
@c = common dso_local global i64* null, align 8
@m2 = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"forgery\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %84, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ult i64 %6, 1000
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %11 = add i64 %9, %10
  %12 = icmp ult i64 %11, 8
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %87

15:                                               ; preds = %13
  %16 = load i32, i32* @k, align 4
  %17 = call i32 @crypto_secretbox_keygen(i32 %16)
  %18 = load i64*, i64** @n, align 8
  %19 = load i64, i64* @crypto_secretbox_NONCEBYTES, align 8
  %20 = call i32 @randombytes_buf(i64* %18, i64 %19)
  %21 = load i64*, i64** @m, align 8
  %22 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @randombytes_buf(i64* %23, i64 %24)
  %26 = load i64*, i64** @c, align 8
  %27 = load i64*, i64** @m, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %30 = add i64 %28, %29
  %31 = load i64*, i64** @n, align 8
  %32 = load i32, i32* @k, align 4
  %33 = call i32 @crypto_secretbox(i64* %26, i64* %27, i64 %30, i64* %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %82, %15
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %83

37:                                               ; preds = %34
  %38 = call i64 (...) @rand()
  %39 = load i64*, i64** @c, align 8
  %40 = call i64 (...) @rand()
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %43 = add i64 %41, %42
  %44 = urem i64 %40, %43
  %45 = getelementptr inbounds i64, i64* %39, i64 %44
  store i64 %38, i64* %45, align 8
  %46 = load i64*, i64** @m2, align 8
  %47 = load i64*, i64** @c, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %50 = add i64 %48, %49
  %51 = load i64*, i64** @n, align 8
  %52 = load i32, i32* @k, align 4
  %53 = call i64 @crypto_secretbox_open(i64* %46, i64* %47, i64 %50, i64* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %60 = add i64 %58, %59
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load i64*, i64** @m2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** @m, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 100, i32* %1, align 4
  br label %88

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %56

78:                                               ; preds = %56
  br label %82

79:                                               ; preds = %37
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %78
  br label %34

83:                                               ; preds = %34
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %2, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %2, align 8
  br label %5

87:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @crypto_secretbox_keygen(i32) #1

declare dso_local i32 @randombytes_buf(i64*, i64) #1

declare dso_local i32 @crypto_secretbox(i64*, i64*, i64, i64*, i32) #1

declare dso_local i64 @rand(...) #1

declare dso_local i64 @crypto_secretbox_open(i64*, i64*, i64, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
