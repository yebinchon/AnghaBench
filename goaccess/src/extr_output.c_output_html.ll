; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_output_html.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_output_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@DATE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to open HTML file: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nlines = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%Y-%m-%d %H:%M:%S %z\00", align 1
@now_tm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_html(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @DATE_TIME, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** @stdout, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* @nlines, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* @nlines, align 4
  %34 = call i32 @set_json_nlines(i32 %33)
  %35 = call i32 (...) @generate_time()
  %36 = load i32, i32* @DATE_TIME, align 4
  %37 = load i32, i32* @now_tm, align 4
  %38 = call i32 @strftime(i8* %13, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @print_html_header(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @print_html_body(i32* %41, i8* %13)
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @print_json_defs(i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @print_json_data(i32* %45, i32* %46, i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @print_conn_def(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @print_html_footer(i32* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @FATAL(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @set_json_nlines(i32) #2

declare dso_local i32 @generate_time(...) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @print_html_header(i32*) #2

declare dso_local i32 @print_html_body(i32*, i8*) #2

declare dso_local i32 @print_json_defs(i32*) #2

declare dso_local i32 @print_json_data(i32*, i32*, i32*) #2

declare dso_local i32 @print_conn_def(i32*) #2

declare dso_local i32 @print_html_footer(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
