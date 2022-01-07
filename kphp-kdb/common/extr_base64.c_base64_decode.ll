; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_decode.tbl_symbols64_initialized = internal global i32 0, align 4
@base64_decode.tbl_symbols64 = internal global [256 x i8] zeroinitializer, align 16
@symbols64 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_decode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @base64_decode.tbl_symbols64_initialized, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %3
  %21 = call i32 @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @base64_decode.tbl_symbols64, i64 0, i64 0), i32 255, i32 256)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %36, %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 64
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i64*, i64** @symbols64, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.tbl_symbols64, i64 0, i64 %34
  store i8 %27, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %22

39:                                               ; preds = %22
  store i32 1, i32* @base64_decode.tbl_symbols64_initialized, align 4
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 3
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -2, i32* %4, align 4
  br label %139

45:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %134, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %137

50:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %98, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.tbl_symbols64, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i32 -3, i32* %4, align 4
  br label %139

66:                                               ; preds = %51
  %67 = load i32, i32* %15, align 4
  %68 = icmp eq i32 %67, 64
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = load i32, i32* %14, align 4
  switch i32 %70, label %91 [
    i32 0, label %71
    i32 1, label %71
    i32 2, label %72
    i32 3, label %88
  ]

71:                                               ; preds = %69, %69
  store i32 -4, i32* %4, align 4
  br label %139

72:                                               ; preds = %69
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_decode.tbl_symbols64, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 64
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store i32 -5, i32* %4, align 4
  br label %139

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 %86, 12
  store i32 %87, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %91

88:                                               ; preds = %69
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 6
  store i32 %90, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %91

91:                                               ; preds = %69, %88, %85
  br label %102

92:                                               ; preds = %66
  %93 = load i32, i32* %12, align 4
  %94 = shl i32 %93, 6
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %51, label %102

102:                                              ; preds = %98, %91
  store i32 2, i32* %14, align 4
  br label %103

103:                                              ; preds = %112, %102
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 255
  %106 = trunc i32 %105 to i8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 %108
  store i8 %106, i8* %109, align 1
  %110 = load i32, i32* %12, align 4
  %111 = ashr i32 %110, 8
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %14, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %103, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 -1, i32* %4, align 4
  br label %139

123:                                              ; preds = %116
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 4
  store i32 %136, i32* %9, align 4
  br label %46

137:                                              ; preds = %46
  %138 = load i32, i32* %10, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %122, %84, %71, %65, %44
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
