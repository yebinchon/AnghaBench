; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_set.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_yc.c_cmd_set.c"
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
define dso_local i32 @cmd_set(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca [1 x %struct.TYPE_5__], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 5, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %117

25:                                               ; preds = %19
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @read_data(i8* %31, i8** %9)
  store i64 %32, i64* %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 2, i32* %4, align 4
  br label %117

38:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8**, i8*** %6, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strtoull(i8* %44, i32* null, i32 0)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8**, i8*** %6, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strtoull(i8* %53, i32* null, i32 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %57, 4
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8**, i8*** %6, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strtoull(i8* %62, i32* null, i32 0)
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32*, i32** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @quiet, align 8
  %75 = call i32 @yrmcds_set(i32* %65, i8* %66, i32 %68, i8* %69, i64 %70, i32 %71, i32 %72, i64 %73, i64 %74, i32* %15)
  store i32 %75, i32* %16, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @CHECK_ERROR(i32 %78)
  %80 = load i64, i64* @quiet, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @yrmcds_noop(i32* %83, i32* %15)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @CHECK_ERROR(i32 %85)
  br label %87

87:                                               ; preds = %82, %64
  %88 = load i64, i64* @debug, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @stderr, align 4
  %92 = load i32, i32* %15, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %115
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %14, i64 0, i64 0
  %98 = call i32 @yrmcds_recv(i32* %96, %struct.TYPE_5__* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @CHECK_ERROR(i32 %99)
  %101 = load i64, i64* @debug, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %14, i64 0, i64 0
  %105 = call i32 @print_response(%struct.TYPE_5__* %104)
  br label %106

106:                                              ; preds = %103, %95
  %107 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %14, i64 0, i64 0
  %108 = call i32 @CHECK_RESPONSE(%struct.TYPE_5__* %107)
  %109 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %14, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %116

115:                                              ; preds = %106
  br label %95

116:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %35, %22
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @read_data(i8*, i8**) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @yrmcds_set(i32*, i8*, i32, i8*, i64, i32, i32, i64, i64, i32*) #1

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
