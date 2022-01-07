; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_output_json.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_output_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to open JSON file: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@nlines = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_json(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %8, align 8
  br label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** @stdout, align 8
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 0), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* @nlines, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.TYPE_5__* @init_json_output(i32* %28, i32* %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @fprintf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = call i32 @free_json(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %37, %32, %27
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @fclose(i32* %46)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_5__* @init_json_output(i32*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @free_json(%struct.TYPE_5__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
