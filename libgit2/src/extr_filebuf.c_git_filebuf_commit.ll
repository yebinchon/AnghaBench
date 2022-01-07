; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_git_filebuf_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i64, i32 }

@Z_FINISH = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to fsync '%s'\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to close file at '%s'\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to rename lockfile to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filebuf_commit(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = icmp ne %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @Z_FINISH, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32 @flush_buffer(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i64 @verify_last_error(%struct.TYPE_6__* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %89

24:                                               ; preds = %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @p_fsync(i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @GIT_ERROR_OS, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %89

43:                                               ; preds = %31, %24
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @p_close(i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @GIT_ERROR_OS, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @git_error_set(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %89

55:                                               ; preds = %43
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 -1, i32* %57, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @p_rename(i64 %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @GIT_ERROR_OS, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @git_error_set(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %89

72:                                               ; preds = %55
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @git_futils_fsync_parent(i64 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77, %72
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = call i32 @git_filebuf_cleanup(%struct.TYPE_6__* %87)
  store i32 0, i32* %2, align 4
  br label %92

89:                                               ; preds = %83, %66, %49, %37, %23
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = call i32 @git_filebuf_cleanup(%struct.TYPE_6__* %90)
  store i32 -1, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flush_buffer(%struct.TYPE_6__*) #1

declare dso_local i64 @verify_last_error(%struct.TYPE_6__*) #1

declare dso_local i64 @p_fsync(i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i64) #1

declare dso_local i64 @p_close(i32) #1

declare dso_local i64 @p_rename(i64, i64) #1

declare dso_local i64 @git_futils_fsync_parent(i64) #1

declare dso_local i32 @git_filebuf_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
