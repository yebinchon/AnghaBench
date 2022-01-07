; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_refdb_fs_backend__prune_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_refdb_fs_backend__prune_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@GIT_RMDIR_EMPTY_PARENTS = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*)* @refdb_fs_backend__prune_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refdb_fs_backend__prune_refs(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @git_buf_sets(i32* %7, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %75

25:                                               ; preds = %17
  %26 = call i32 @git_path_squash_slashes(i32* %7)
  %27 = call i32 @git_buf_cstr(i32* %7)
  %28 = call i64 @git_path_common_dirlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = call i64 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = call i32 @git_buf_cstr(i32* %7)
  %33 = call i64 @git_path_common_dirlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = call i32 @git_buf_cstr(i32* %7)
  %38 = call i64 @git_path_common_dirlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36, %31, %25
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @git_buf_truncate(i32* %7, i64 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @git_buf_cstr(i32* %7)
  %52 = call i64 @git_buf_join3(i32* %8, i8 signext 47, i32 %49, i8* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %75

55:                                               ; preds = %46
  br label %65

56:                                               ; preds = %41
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @git_buf_cstr(i32* %7)
  %61 = call i64 @git_buf_joinpath(i32* %8, i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %75

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = call i32 @git_buf_cstr(i32* %8)
  %70 = load i32, i32* @GIT_RMDIR_EMPTY_PARENTS, align 4
  %71 = load i32, i32* @GIT_RMDIR_SKIP_ROOT, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @git_futils_rmdir_r(i8* %68, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %36
  br label %75

75:                                               ; preds = %74, %63, %54, %24
  %76 = call i32 @git_buf_dispose(i32* %7)
  %77 = call i32 @git_buf_dispose(i32* %8)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @git_path_squash_slashes(i32*) #1

declare dso_local i64 @git_path_common_dirlen(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_buf_truncate(i32*, i64) #1

declare dso_local i64 @git_buf_join3(i32*, i8 signext, i32, i8*, i32) #1

declare dso_local i64 @git_buf_joinpath(i32*, i32, i32) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
