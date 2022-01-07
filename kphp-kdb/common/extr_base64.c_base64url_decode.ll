; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64url_decode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_base64.c_base64url_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64url_decode.tbl_url_symbols64_initialized = internal global i32 0, align 4
@base64url_decode.tbl_url_symbols64 = internal global [256 x i8] zeroinitializer, align 16
@url_symbols64 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64url_decode(i8* %0, i8* %1, i32 %2) #0 {
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
  %18 = load i32, i32* @base64url_decode.tbl_url_symbols64_initialized, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %3
  %21 = call i32 @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @base64url_decode.tbl_url_symbols64, i64 0, i64 0), i32 255, i32 256)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %36, %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i64*, i64** @url_symbols64, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* @base64url_decode.tbl_url_symbols64, i64 0, i64 %34
  store i8 %27, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %22

39:                                               ; preds = %22
  store i32 1, i32* @base64url_decode.tbl_url_symbols64_initialized, align 4
  br label %40

40:                                               ; preds = %39, %3
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %119, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %122

45:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  store i32 3, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %83, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %61 [
    i32 0, label %54
    i32 1, label %54
    i32 2, label %55
    i32 3, label %58
  ]

54:                                               ; preds = %52, %52
  store i32 -4, i32* %4, align 4
  br label %124

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = shl i32 %56, 12
  store i32 %57, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 6
  store i32 %60, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %61

61:                                               ; preds = %52, %58, %55
  br label %87

62:                                               ; preds = %46
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* @base64url_decode.tbl_url_symbols64, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i32 -3, i32* %4, align 4
  br label %124

77:                                               ; preds = %62
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 %78, 6
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %46, label %87

87:                                               ; preds = %83, %61
  store i32 2, i32* %14, align 4
  br label %88

88:                                               ; preds = %97, %87
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 %93
  store i8 %91, i8* %94, align 1
  %95 = load i32, i32* %12, align 4
  %96 = ashr i32 %95, 8
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %14, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %88, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 -1, i32* %4, align 4
  br label %124

108:                                              ; preds = %101
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @memcpy(i8* %112, i8* %113, i32 %114)
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 4
  store i32 %121, i32* %9, align 4
  br label %41

122:                                              ; preds = %41
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %107, %76, %54
  %125 = load i32, i32* %4, align 4
  ret i32 %125
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
