; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_help.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-main/extr_cli.c_cli_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i8*, i8*, i32* }

@CLI_OPT_DEFAULT = common dso_local global i64 0, align 8
@CLI_LINE_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@CLI_LINE_TAB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cli_help(i8* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = call i32 @cli_opt_usage(i8* %10, i8* %11, %struct.TYPE_4__* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  br label %15

15:                                               ; preds = %113, %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLI_OPT_DEFAULT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %117

21:                                               ; preds = %15
  %22 = load i32, i32* @CLI_LINE_INDENT, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @CLI_LINE_INDENT, align 4
  %24 = call i32 @cli_print_pad(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = add nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %29, %21
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47, %42
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = add nsw i64 %69, 2
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 1, %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %79, %74
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @CLI_LINE_TAB, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i32, i32* @CLI_LINE_TAB, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @cli_print_pad(i32 %106)
  %108 = load i32, i32* @CLI_LINE_TAB, align 4
  store i32 %108, i32* %8, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @cli_print_help(i32* %111)
  br label %113

113:                                              ; preds = %103, %92
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 1
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %7, align 8
  br label %15

117:                                              ; preds = %15
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %158

122:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i32, i32* @CLI_LINE_INDENT, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = add nsw i64 %129, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @CLI_LINE_INDENT, align 4
  %137 = call i32 @cli_print_pad(i32 %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %127, %122
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @CLI_LINE_TAB, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i32, i32* @CLI_LINE_TAB, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @cli_print_pad(i32 %151)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @cli_print_help(i32* %155)
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %158

158:                                              ; preds = %148, %117
  ret void
}

declare dso_local i32 @cli_opt_usage(i8*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @cli_print_pad(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cli_print_help(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
