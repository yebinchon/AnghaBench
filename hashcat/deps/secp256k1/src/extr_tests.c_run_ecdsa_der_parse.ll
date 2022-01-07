; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_ecdsa_der_parse.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_ecdsa_der_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Failure %x on \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_ecdsa_der_parse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %68, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @count, align 4
  %12 = mul nsw i32 200, %11
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %9
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %16 = call i32 @random_ber_signature(i8* %15, i64* %4, i32* %5, i32* %6)
  %17 = load i64, i64* %4, align 8
  %18 = icmp ule i64 %17, 2048
  %19 = zext i1 %18 to i32
  %20 = call i32 @CHECK(i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %64, %14
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %67

24:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %29 = call i32 @damage_array(i8* %28, i64* %4)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @test_ecdsa_der_parse(i8* %31, i64 %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %53, %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %42

56:                                               ; preds = %42
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %30
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @CHECK(i32 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  br label %21

67:                                               ; preds = %21
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %9

71:                                               ; preds = %9
  ret void
}

declare dso_local i32 @random_ber_signature(i8*, i64*, i32*, i32*) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @damage_array(i8*, i64*) #1

declare dso_local i32 @test_ecdsa_der_parse(i8*, i64, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
