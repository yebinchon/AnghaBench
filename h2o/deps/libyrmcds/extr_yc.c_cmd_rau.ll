; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_rau.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_rau.c"
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
define dso_local i32 @cmd_rau(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.TYPE_5__], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 4, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %107

24:                                               ; preds = %18
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @read_data(i8* %30, i8** %9)
  store i64 %31, i64* %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %107

37:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strtoull(i8* %43, i32* null, i32 0)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8**, i8*** %6, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strtoull(i8* %52, i32* null, i32 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32*, i32** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i64, i64* @quiet, align 8
  %65 = call i32 @yrmcds_replace_unlock(i32* %56, i8* %57, i32 %59, i8* %60, i64 %61, i32 %62, i32 %63, i64 %64, i32* %14)
  store i32 %65, i32* %15, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @CHECK_ERROR(i32 %68)
  %70 = load i64, i64* @quiet, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %55
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @yrmcds_noop(i32* %73, i32* %14)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @CHECK_ERROR(i32 %75)
  br label %77

77:                                               ; preds = %72, %55
  %78 = load i64, i64* @debug, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %105
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %88 = call i32 @yrmcds_recv(i32* %86, %struct.TYPE_5__* %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @CHECK_ERROR(i32 %89)
  %91 = load i64, i64* @debug, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %95 = call i32 @print_response(%struct.TYPE_5__* %94)
  br label %96

96:                                               ; preds = %93, %85
  %97 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %98 = call i32 @CHECK_RESPONSE(%struct.TYPE_5__* %97)
  %99 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %13, i64 0, i64 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %106

105:                                              ; preds = %96
  br label %85

106:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %34, %21
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @read_data(i8*, i8**) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @yrmcds_replace_unlock(i32*, i8*, i32, i8*, i64, i32, i32, i64, i32*) #1

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
