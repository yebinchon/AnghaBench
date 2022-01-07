; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kson.c_kson_format_recur.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kson.c_kson_format_recur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_5__** }

@.str = private unnamed_addr constant [6 x i8] c"\22%s\22:\00", align 1
@KSON_TYPE_BRACKET = common dso_local global i64 0, align 8
@KSON_TYPE_BRACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stdout = common dso_local global i32 0, align 4
@KSON_TYPE_NO_QUOTE = common dso_local global i64 0, align 8
@KSON_TYPE_SGL_QUOTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kson_format_recur(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KSON_TYPE_BRACKET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KSON_TYPE_BRACE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %116

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @KSON_TYPE_BRACKET, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 91, i32 123
  %36 = trunc i32 %35 to i8
  %37 = call i32 @putchar(i8 signext %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %28
  %43 = call i32 @putchar(i8 signext 10)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %52, %42
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp sle i64 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @stdout, align 4
  %51 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %44

55:                                               ; preds = %44
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %89, %55
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = call i32 @putchar(i8 signext 44)
  %67 = call i32 @putchar(i8 signext 10)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %75, %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %68

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %62
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %83, i64 %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  call void @kson_format_recur(%struct.TYPE_5__* %86, i32 %88)
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %56

92:                                               ; preds = %56
  %93 = call i32 @putchar(i8 signext 10)
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %102, %92
  %95 = load i64, i64* %5, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %5, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %5, align 8
  br label %94

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %28
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @KSON_TYPE_BRACKET, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 93, i32 125
  %114 = trunc i32 %113 to i8
  %115 = call i32 @putchar(i8 signext %114)
  br label %155

116:                                              ; preds = %22
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @KSON_TYPE_NO_QUOTE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @KSON_TYPE_SGL_QUOTE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 39, i32 34
  %130 = trunc i32 %129 to i8
  %131 = call i32 @putchar(i8 signext %130)
  br label %132

132:                                              ; preds = %122, %116
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @stdout, align 4
  %138 = call i32 @fputs(i8* %136, i32 %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @KSON_TYPE_NO_QUOTE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @KSON_TYPE_SGL_QUOTE, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 39, i32 34
  %152 = trunc i32 %151 to i8
  %153 = call i32 @putchar(i8 signext %152)
  br label %154

154:                                              ; preds = %144, %132
  br label %155

155:                                              ; preds = %154, %106
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
