; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_repo_logmsg_reencode.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_repo_logmsg_reencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.commit = type { i32 }

@repo_logmsg_reencode.utf8 = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @repo_logmsg_reencode(%struct.repository* %0, %struct.commit* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.commit* %1, %struct.commit** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.repository*, %struct.repository** %6, align 8
  %15 = load %struct.commit*, %struct.commit** %7, align 8
  %16 = call i8* @repo_get_commit_buffer(%struct.repository* %14, %struct.commit* %15, i32* null)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19, %4
  %24 = load i8**, i8*** %8, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %12, align 8
  %28 = call i8* @get_header(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8**, i8*** %8, align 8
  store i8* %28, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %5, align 8
  br label %105

32:                                               ; preds = %19
  %33 = load i8*, i8** %12, align 8
  %34 = call i8* @get_header(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %11, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i8**, i8*** %8, align 8
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  br label %47

45:                                               ; preds = %40
  %46 = load i8*, i8** @repo_logmsg_reencode.utf8, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8* [ %44, %43 ], [ %46, %45 ]
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @same_encoding(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %12, align 8
  store i8* %57, i8** %5, align 8
  br label %105

58:                                               ; preds = %53
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.repository*, %struct.repository** %6, align 8
  %61 = load %struct.commit*, %struct.commit** %7, align 8
  %62 = call i8* @get_cached_commit_buffer(%struct.repository* %60, %struct.commit* %61, i32* null)
  %63 = icmp eq i8* %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @xstrdup(i8* %65)
  store i8* %66, i8** %13, align 8
  br label %69

67:                                               ; preds = %58
  %68 = load i8*, i8** %12, align 8
  store i8* %68, i8** %13, align 8
  br label %69

69:                                               ; preds = %67, %64
  br label %83

70:                                               ; preds = %47
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i8* @reencode_string(i8* %71, i8* %72, i8* %73)
  store i8* %74, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.repository*, %struct.repository** %6, align 8
  %79 = load %struct.commit*, %struct.commit** %7, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @repo_unuse_commit_buffer(%struct.repository* %78, %struct.commit* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %69
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i8* @replace_encoding_header(i8* %87, i8* %88)
  store i8* %89, i8** %13, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i8**, i8*** %8, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @free(i8* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i8*, i8** %13, align 8
  br label %103

101:                                              ; preds = %96
  %102 = load i8*, i8** %12, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i8* [ %100, %99 ], [ %102, %101 ]
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %103, %56, %30
  %106 = load i8*, i8** %5, align 8
  ret i8* %106
}

declare dso_local i8* @repo_get_commit_buffer(%struct.repository*, %struct.commit*, i32*) #1

declare dso_local i8* @get_header(i8*, i8*) #1

declare dso_local i64 @same_encoding(i8*, i8*) #1

declare dso_local i8* @get_cached_commit_buffer(%struct.repository*, %struct.commit*, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @reencode_string(i8*, i8*, i8*) #1

declare dso_local i32 @repo_unuse_commit_buffer(%struct.repository*, %struct.commit*, i8*) #1

declare dso_local i8* @replace_encoding_header(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
