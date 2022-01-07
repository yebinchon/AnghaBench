; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-parser.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-parser.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Usage: %s file1.yaml ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[%d] Parsing '%s': \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@YAML_STREAM_END_EVENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"%s (%d events)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FAILURE\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %79, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %31)
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fflush(i32 %33)
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = ptrtoint i32* %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 @yaml_parser_initialize(i32* %8)
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @yaml_parser_set_input_file(i32* %8, i32* %46)
  br label %48

48:                                               ; preds = %56, %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = call i32 @yaml_parser_parse(i32* %8, %struct.TYPE_4__* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @YAML_STREAM_END_EVENT, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = call i32 @yaml_event_delete(%struct.TYPE_4__* %9)
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %48

65:                                               ; preds = %55, %48
  %66 = call i32 @yaml_parser_delete(i32* %8)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @fclose(i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %65
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %21

82:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @yaml_parser_initialize(i32*) #1

declare dso_local i32 @yaml_parser_set_input_file(i32*, i32*) #1

declare dso_local i32 @yaml_parser_parse(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @yaml_event_delete(%struct.TYPE_4__*) #1

declare dso_local i32 @yaml_parser_delete(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
