; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_diriter_next.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_diriter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.dirent = type { i8* }

@GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not read directory '%s'\00", align 1
@GIT_PATH_DIR_PRECOMPOSE_UNICODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_diriter_next(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GIT_PATH_DIR_INCLUDE_DOT_AND_DOTDOT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32 @assert(%struct.TYPE_8__* %17)
  store i64 0, i64* @errno, align 8
  br label %19

19:                                               ; preds = %47, %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.dirent* @readdir(i32 %22)
  store %struct.dirent* %23, %struct.dirent** %4, align 8
  %24 = icmp eq %struct.dirent* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64, i64* @errno, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %29, i32* %2, align 4
  br label %96

30:                                               ; preds = %25
  %31 = load i32, i32* @GIT_ERROR_OS, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @git_error_set(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %2, align 4
  br label %96

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.dirent*, %struct.dirent** %4, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @git_path_is_dot_or_dotdot(i8* %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %38
  %48 = phi i1 [ false, %38 ], [ %46, %41 ]
  br i1 %48, label %19, label %49

49:                                               ; preds = %47
  %50 = load %struct.dirent*, %struct.dirent** %4, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @git_buf_truncate(%struct.TYPE_9__* %56, i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %49
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 47
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = call i32 @git_buf_putc(%struct.TYPE_9__* %81, i8 signext 47)
  br label %83

83:                                               ; preds = %79, %65, %49
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @git_buf_put(%struct.TYPE_9__* %85, i8* %86, i64 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = call i64 @git_buf_oom(%struct.TYPE_9__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 -1, i32* %2, align 4
  br label %96

94:                                               ; preds = %83
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %93, %30, %28
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i64 @git_path_is_dot_or_dotdot(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_buf_truncate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @git_buf_putc(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @git_buf_put(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @git_buf_oom(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
