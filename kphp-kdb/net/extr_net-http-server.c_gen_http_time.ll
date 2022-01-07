; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_gen_http_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-http-server.c_gen_http_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"%3s, %d %3s %d %d:%d:%d %15s\00", align 1
@months = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@dd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_http_time(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %22 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i32* %12, i8* %20, i32* %10, i32* %13, i32* %14, i32* %15, i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* %16, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %16, align 4
  %30 = sub nsw i32 0, %29
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ -8, %31 ]
  store i32 %33, i32* %3, align 4
  br label %139

34:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %49, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 12
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i64, i64* @months, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %45 = call i32 @memcmp(i64 %43, i8* %44, i32 3)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %35

52:                                               ; preds = %47, %35
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 -11, i32* %3, align 4
  br label %139

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 1970
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 2039
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  store i32 -12, i32* %3, align 4
  br label %139

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %67, 24
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63
  store i32 -13, i32* %3, align 4
  br label %139

70:                                               ; preds = %66
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp sge i32 %74, 60
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  store i32 -14, i32* %3, align 4
  br label %139

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = icmp sge i32 %81, 60
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %77
  store i32 -15, i32* %3, align 4
  br label %139

84:                                               ; preds = %80
  %85 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 -16, i32* %3, align 4
  br label %139

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1970
  %92 = mul nsw i32 %91, 365
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 1969
  %95 = ashr i32 %94, 2
  %96 = add nsw i32 %92, %95
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, 1
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 3
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* %11, align 4
  %105 = icmp sge i32 %104, 2
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %106, %103, %89
  %110 = load i32*, i32** @dd, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 28, i32* %111, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %124, %109
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %112
  %117 = load i32*, i32** @dd, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %112

127:                                              ; preds = %112
  %128 = load i32, i32* %17, align 4
  %129 = mul nsw i32 %128, 24
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %129, %130
  %132 = mul nsw i32 %131, 60
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = mul nsw i32 %134, 60
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %127, %88, %83, %76, %69, %62, %55, %32
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
