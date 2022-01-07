; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_append.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wrong number of arguments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to read data.\0A\00", align 1
@quiet = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"request serial = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_append(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.TYPE_5__], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @read_data(i8* %25, i8** %9)
  store i64 %26, i64* %10, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %82

32:                                               ; preds = %19
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @quiet, align 8
  %40 = call i32 @yrmcds_append(i32* %33, i8* %34, i32 %36, i8* %37, i64 %38, i64 %39, i32* %12)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @CHECK_ERROR(i32 %43)
  %45 = load i64, i64* @quiet, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %32
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @yrmcds_noop(i32* %48, i32* %12)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @CHECK_ERROR(i32 %50)
  br label %52

52:                                               ; preds = %47, %32
  %53 = load i64, i64* @debug, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %80
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %63 = call i32 @yrmcds_recv(i32* %61, %struct.TYPE_5__* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @CHECK_ERROR(i32 %64)
  %66 = load i64, i64* @debug, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %70 = call i32 @print_response(%struct.TYPE_5__* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %73 = call i32 @CHECK_RESPONSE(%struct.TYPE_5__* %72)
  %74 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %11, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %81

80:                                               ; preds = %71
  br label %60

81:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %29, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @read_data(i8*, i8**) #1

declare dso_local i32 @yrmcds_append(i32*, i8*, i32, i8*, i64, i64, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CHECK_ERROR(i32) #1

declare dso_local i32 @yrmcds_noop(i32*, i32*) #1

declare dso_local i32 @yrmcds_recv(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @print_response(%struct.TYPE_5__*) #1

declare dso_local i32 @CHECK_RESPONSE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
