; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__hexdump.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git__hexdump.LINE_WIDTH = internal constant i64 16, align 8
@.str = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git__hexdump(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = udiv i64 %10, 16
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = urem i64 %12, 16
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %71, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %7, align 8
  %21 = mul i64 %20, 16
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %32, %18
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %24, 16
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 255
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %23

37:                                               ; preds = %23
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %40, 16
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %64, %37
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %44, 16
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 32
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 126
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  br label %61

60:                                               ; preds = %51, %46
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32 [ %59, %56 ], [ 46, %60 ]
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  br label %43

69:                                               ; preds = %43
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %14

74:                                               ; preds = %14
  %75 = load i64, i64* %6, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %143

77:                                               ; preds = %74
  %78 = load i8*, i8** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = mul i64 %79, 16
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %82

82:                                               ; preds = %92, %77
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 255
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  br label %82

97:                                               ; preds = %82
  store i64 0, i64* %8, align 8
  br label %98

98:                                               ; preds = %105, %97
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 16, %100
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %98

108:                                              ; preds = %98
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i8*, i8** %3, align 8
  %111 = load i64, i64* %5, align 8
  %112 = mul i64 %111, 16
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %9, align 8
  store i64 0, i64* %8, align 8
  br label %114

114:                                              ; preds = %136, %108
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %141

118:                                              ; preds = %114
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 %126, 126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  br label %133

132:                                              ; preds = %123, %118
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i32 [ %131, %128 ], [ 46, %132 ]
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %8, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %9, align 8
  br label %114

141:                                              ; preds = %114
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %74
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
