; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"object is larger than available memory\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to parse loose object: invalid header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i8*, i64)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header(%struct.TYPE_3__* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %31, %4
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %36

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %12, align 8
  br label %18

36:                                               ; preds = %29, %18
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %101

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @git_object_stringn2type(i8* %42, i64 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  store i64 %49, i64* %11, align 8
  store i64 0, i64* %14, align 8
  br label %50

50:                                               ; preds = %63, %41
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %68

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %14, align 8
  br label %50

68:                                               ; preds = %61, %50
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %101

73:                                               ; preds = %68
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @git__strntol64(i64* %15, i8* %76, i64 %77, i32* null, i32 10)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %15, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %73
  br label %101

84:                                               ; preds = %80
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @SIZE_MAX, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %90 = call i32 @git_error_set(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

91:                                               ; preds = %84
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %95, i64 %96, i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %101

100:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %104

101:                                              ; preds = %99, %83, %72, %40
  %102 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %103 = call i32 @git_error_set(i32 %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %100, %88
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @git_object_stringn2type(i8*, i64) #1

declare dso_local i64 @git__strntol64(i64*, i8*, i64, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
