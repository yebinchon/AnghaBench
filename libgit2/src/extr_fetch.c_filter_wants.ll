; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_fetch.c_filter_wants.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_fetch.c_filter_wants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED = common dso_local global i64 0, align 8
@GIT_REFSPEC_TAGS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @filter_wants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_wants(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GIT_REMOTE_DOWNLOAD_TAGS_UNSPECIFIED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %25, %19, %2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = call i32 @git_vector_clear(i32* %31)
  %33 = load i8*, i8** @GIT_REFSPEC_TAGS, align 8
  %34 = call i32 @git_refspec__parse(i32* %7, i8* %33, i32 1)
  store i32 %34, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = call i32 @git_refspec__parse(i32* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %45, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %92

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = call i32 @git_refspec__dwim_one(%struct.TYPE_10__* %50, i32* %8, i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = call i32 @git_refspec__dispose(i32* %8)
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %92

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %38
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @git_repository_odb__weakptr(i32** %10, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %92

66:                                               ; preds = %59
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i64 @git_remote_ls(i32*** %6, i64* %12, %struct.TYPE_8__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %92

71:                                               ; preds = %66
  store i64 0, i64* %11, align 8
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @maybe_want(%struct.TYPE_8__* %77, i32* %81, i32* %82, i32* %7, i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %91

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %72

91:                                               ; preds = %86, %72
  br label %92

92:                                               ; preds = %91, %70, %65, %57, %47
  %93 = call i32 @git_refspec__dispose(i32* %7)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %36
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @git_vector_clear(i32*) #1

declare dso_local i32 @git_refspec__parse(i32*, i8*, i32) #1

declare dso_local i32 @git_refspec__dwim_one(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @git_refspec__dispose(i32*) #1

declare dso_local i64 @git_repository_odb__weakptr(i32**, i32) #1

declare dso_local i64 @git_remote_ls(i32***, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @maybe_want(%struct.TYPE_8__*, i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
