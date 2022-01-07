; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_opt_usage.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_opt_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CLI_LINE_LENGTH = common dso_local global i32 0, align 4
@CLI_LINE_INDENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@CLI_OPT_DEFAULT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.TYPE_3__*)* @cli_opt_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cli_opt_usage(i8* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @CLI_LINE_LENGTH, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @CLI_LINE_INDENT, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @cli_print_pad(i32 %36)
  br label %38

38:                                               ; preds = %32, %22
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %3
  br label %42

42:                                               ; preds = %103, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CLI_OPT_DEFAULT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %10, align 8
  store i32 3, i32* %11, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @CLI_LINE_LENGTH, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i32, i32* @CLI_LINE_INDENT, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cli_print_pad(i32 %76)
  br label %78

78:                                               ; preds = %72, %60
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %93

90:                                               ; preds = %78
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 1
  store %struct.TYPE_3__* %106, %struct.TYPE_3__** %8, align 8
  br label %42

107:                                              ; preds = %42
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = add nsw i64 2, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @CLI_LINE_LENGTH, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = load i32, i32* @CLI_LINE_INDENT, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @cli_print_pad(i32 %130)
  br label %132

132:                                              ; preds = %126, %112
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %107
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cli_print_pad(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
