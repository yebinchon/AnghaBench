; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_read_type.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_read_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Incorrect type coding\00", align 1
@PTLS_ERROR_BER_MALFORMED_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_asn1_read_type(i32* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i64 1, i64* %17, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = ashr i32 %26, 5
  %28 = and i32 %27, 1
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %18, align 4
  %31 = ashr i32 %30, 6
  %32 = and i32 %31, 3
  %33 = load i32*, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %18, align 4
  %35 = and i32 %34, 31
  %36 = load i32*, i32** %13, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 31
  br i1 %39, label %40, label %82

40:                                               ; preds = %8
  store i32 0, i32* %19, align 4
  store i32 2147483647, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %19, align 4
  %47 = icmp sle i32 %46, 2147483647
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i1 [ false, %41 ], [ %47, %45 ]
  br i1 %49, label %50, label %67

50:                                               ; preds = %48
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %17, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %17, align 8
  %54 = getelementptr inbounds i32, i32* %51, i64 %52
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %19, align 4
  %57 = shl i32 %56, 7
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %21, align 4
  %59 = and i32 %58, 127
  %60 = load i32, i32* %19, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %21, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store i32 1, i32* %22, align 4
  br label %67

66:                                               ; preds = %50
  br label %41

67:                                               ; preds = %65, %48
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %19, align 4
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  br label %81

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %16, align 8
  %78 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %75, i32 %76, i32* %77)
  store i64 %78, i64* %17, align 8
  %79 = load i32, i32* @PTLS_ERROR_BER_MALFORMED_TYPE, align 4
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %73, %70
  br label %82

82:                                               ; preds = %81, %8
  %83 = load i64, i64* %17, align 8
  ret i64 %83
}

declare dso_local i64 @ptls_asn1_error_message(i8*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
