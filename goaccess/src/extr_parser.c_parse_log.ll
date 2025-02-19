; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_log.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8**, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_log(%struct.TYPE_6__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @pre_process_log(%struct.TYPE_6__* %14, i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %68

20:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %68

21:                                               ; preds = %3
  %22 = call i8* (...) @verify_formats()
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @FATAL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 3), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 2), align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %68

40:                                               ; preds = %33, %30, %27
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 8
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %47 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 1), align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @read_log(%struct.TYPE_6__** %46, i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 1), align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i32 1, i32* %4, align 4
  br label %68

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %41

67:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %55, %36, %20, %19
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @pre_process_log(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i8* @verify_formats(...) #1

declare dso_local i32 @FATAL(i8*, i8*) #1

declare dso_local i64 @read_log(%struct.TYPE_6__**, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
