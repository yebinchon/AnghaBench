; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_get_expected_type_and_length.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_get_expected_type_and_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Unexpected type\00", align 1
@PTLS_ERROR_INCORRECT_ASN1_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Incorrect length for DER\00", align 1
@PTLS_ERROR_DER_INDEFINITE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_asn1_get_expected_type_and_length(i64* %0, i64 %1, i64 %2, i64 %3, i32* %4, i32* %5, i64* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %9
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32*, i32** %18, align 8
  %30 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i32 0, i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* @PTLS_ERROR_INCORRECT_ASN1_SYNTAX, align 4
  %32 = load i32*, i32** %17, align 8
  store i32 %31, i32* %32, align 4
  br label %61

33:                                               ; preds = %9
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %12, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i64*, i64** %16, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = call i64 @ptls_asn1_read_length(i64* %36, i64 %37, i64 %38, i32* %39, i32* %19, i64* %40, i32* %41, i32 0, i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* %19, align 4
  %48 = load i32*, i32** %15, align 8
  store i32 %47, i32* %48, align 4
  br label %60

49:                                               ; preds = %33
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32*, i32** %18, align 8
  %56 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54, i32 0, i32* %55)
  store i64 %56, i64* %12, align 8
  %57 = load i32, i32* @PTLS_ERROR_DER_INDEFINITE_LENGTH, align 4
  %58 = load i32*, i32** %17, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i64, i64* %12, align 8
  ret i64 %62
}

declare dso_local i64 @ptls_asn1_error_message(i8*, i64, i64, i32, i32*) #1

declare dso_local i64 @ptls_asn1_read_length(i64*, i64, i64, i32*, i32*, i64*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
