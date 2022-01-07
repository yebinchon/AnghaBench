; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-loader.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-loader.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Usage: %s file1.yaml ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[%d] Loading '%s': \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s (%d documents)\0A\00", align 1
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
  %9 = alloca i32, align 4
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
  br label %86

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %82, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %85

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

48:                                               ; preds = %67, %25
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = call i32 @yaml_parser_load(i32* %8, i32* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  br label %68

56:                                               ; preds = %52
  %57 = call i32 @yaml_document_get_root_node(i32* %9)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = call i32 @yaml_document_delete(i32* %9)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %56
  br label %48

68:                                               ; preds = %55, %48
  %69 = call i32 @yaml_parser_delete(i32* %8)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %80 = load i32, i32* %11, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @yaml_parser_initialize(i32*) #1

declare dso_local i32 @yaml_parser_set_input_file(i32*, i32*) #1

declare dso_local i32 @yaml_parser_load(i32*, i32*) #1

declare dso_local i32 @yaml_document_get_root_node(i32*) #1

declare dso_local i32 @yaml_document_delete(i32*) #1

declare dso_local i32 @yaml_parser_delete(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
