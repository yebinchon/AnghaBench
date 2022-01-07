; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_secretbox7.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_secretbox7.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_secretbox_ZEROBYTES = common dso_local global i64 0, align 8
@k = common dso_local global i32 0, align 4
@n = common dso_local global i64* null, align 8
@crypto_secretbox_NONCEBYTES = common dso_local global i64 0, align 8
@m = common dso_local global i64* null, align 8
@c = common dso_local global i32 0, align 4
@m2 = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"bad decryption\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ciphertext fails verification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %69, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp ult i64 %5, 1000
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %10 = add i64 %8, %9
  %11 = icmp ult i64 %10, 8
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %72

14:                                               ; preds = %12
  %15 = load i32, i32* @k, align 4
  %16 = call i32 @crypto_secretbox_keygen(i32 %15)
  %17 = load i64*, i64** @n, align 8
  %18 = load i64, i64* @crypto_secretbox_NONCEBYTES, align 8
  %19 = call i32 @randombytes_buf(i64* %17, i64 %18)
  %20 = load i64*, i64** @m, align 8
  %21 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @randombytes_buf(i64* %22, i64 %23)
  %25 = load i32, i32* @c, align 4
  %26 = load i64*, i64** @m, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %29 = add i64 %27, %28
  %30 = load i64*, i64** @n, align 8
  %31 = load i32, i32* @k, align 4
  %32 = call i32 @crypto_secretbox(i32 %25, i64* %26, i64 %29, i64* %30, i32 %31)
  %33 = load i64*, i64** @m2, align 8
  %34 = load i32, i32* @c, align 4
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %37 = add i64 %35, %36
  %38 = load i64*, i64** @n, align 8
  %39 = load i32, i32* @k, align 4
  %40 = call i64 @crypto_secretbox_open(i64* %33, i32 %34, i64 %37, i64* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @crypto_secretbox_ZEROBYTES, align 8
  %47 = add i64 %45, %46
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i64*, i64** @m2, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** @m, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %65

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  br label %43

65:                                               ; preds = %59, %43
  br label %68

66:                                               ; preds = %14
  %67 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %2, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %2, align 8
  br label %4

72:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @crypto_secretbox_keygen(i32) #1

declare dso_local i32 @randombytes_buf(i64*, i64) #1

declare dso_local i32 @crypto_secretbox(i32, i64*, i64, i64*, i32) #1

declare dso_local i64 @crypto_secretbox_open(i64*, i32, i64, i64*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
