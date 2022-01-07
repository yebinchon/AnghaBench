; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_read_length.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_asn1.c_ptls_asn1_read_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Incorrect length coding\00", align 1
@PTLS_ERROR_BER_MALFORMED_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Length larger than message\00", align 1
@PTLS_ERROR_BER_EXCESSIVE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ptls_asn1_read_length(i32* %0, i64 %1, i64 %2, i32* %3, i32* %4, i64* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %21 = load i32*, i32** %14, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %11, align 8
  %24 = load i64*, i64** %15, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %126

28:                                               ; preds = %9
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %12, align 8
  %32 = getelementptr inbounds i32, i32* %29, i64 %30
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %13, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %100

39:                                               ; preds = %28
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %19, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = load i64, i64* %11, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52, i32 %53, i32* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* @PTLS_ERROR_BER_MALFORMED_LENGTH, align 4
  %57 = load i32*, i32** %16, align 8
  store i32 %56, i32* %57, align 4
  br label %99

58:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %84

69:                                               ; preds = %67
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  store i32 %72, i32* %70, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %12, align 8
  %76 = getelementptr inbounds i32, i32* %73, i64 %74
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  br label %59

84:                                               ; preds = %67
  %85 = load i32, i32* %19, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load i64*, i64** %15, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %14, align 8
  store i32 1, i32* %90, align 4
  br label %98

91:                                               ; preds = %84
  %92 = load i64, i64* %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %92, %95
  %97 = load i64*, i64** %15, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %91, %87
  br label %99

99:                                               ; preds = %98, %50
  br label %107

100:                                              ; preds = %28
  %101 = load i64, i64* %12, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %101, %104
  %106 = load i64*, i64** %15, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %100, %99
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = load i64*, i64** %15, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp ugt i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32*, i32** %18, align 8
  %121 = call i64 @ptls_asn1_error_message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %117, i64 %118, i32 %119, i32* %120)
  store i64 %121, i64* %12, align 8
  %122 = load i32, i32* @PTLS_ERROR_BER_EXCESSIVE_LENGTH, align 4
  %123 = load i32*, i32** %16, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %111
  br label %125

125:                                              ; preds = %124, %107
  br label %126

126:                                              ; preds = %125, %9
  %127 = load i64, i64* %12, align 8
  ret i64 %127
}

declare dso_local i64 @ptls_asn1_error_message(i8*, i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
