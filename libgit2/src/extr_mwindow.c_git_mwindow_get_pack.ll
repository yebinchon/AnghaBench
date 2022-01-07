; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_get_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_mwindow.c_git_mwindow_get_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i32 }

@git__mwindow_mutex = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to lock mwindow mutex\00", align 1
@git__pack_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_mwindow_get_pack(%struct.git_pack_file** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.git_pack_file**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.git_pack_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.git_pack_file** %0, %struct.git_pack_file*** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @git_packfile__name(i8** %7, i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = call i64 @git_mutex_lock(i32* @git__mwindow_mutex)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @GIT_ERROR_OS, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %61

20:                                               ; preds = %14
  %21 = load i32, i32* @git__pack_cache, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.git_pack_file* @git_strmap_get(i32 %21, i8* %22)
  store %struct.git_pack_file* %23, %struct.git_pack_file** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @git__free(i8* %24)
  %26 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %27 = icmp ne %struct.git_pack_file* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %30 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %29, i32 0, i32 1
  %31 = call i32 @git_atomic_inc(i32* %30)
  %32 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %33 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %34 = load %struct.git_pack_file**, %struct.git_pack_file*** %4, align 8
  store %struct.git_pack_file* %33, %struct.git_pack_file** %34, align 8
  store i32 0, i32* %3, align 4
  br label %61

35:                                               ; preds = %20
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @git_packfile_alloc(%struct.git_pack_file** %6, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %35
  %43 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %44 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %43, i32 0, i32 1
  %45 = call i32 @git_atomic_inc(i32* %44)
  %46 = load i32, i32* @git__pack_cache, align 4
  %47 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %48 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %51 = call i32 @git_strmap_set(i32 %46, i32 %49, %struct.git_pack_file* %50)
  store i32 %51, i32* %8, align 4
  %52 = call i32 @git_mutex_unlock(i32* @git__mwindow_mutex)
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %57 = call i32 @git_packfile_free(%struct.git_pack_file* %56)
  store i32 -1, i32* %3, align 4
  br label %61

58:                                               ; preds = %42
  %59 = load %struct.git_pack_file*, %struct.git_pack_file** %6, align 8
  %60 = load %struct.git_pack_file**, %struct.git_pack_file*** %4, align 8
  store %struct.git_pack_file* %59, %struct.git_pack_file** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %55, %39, %28, %17, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @git_packfile__name(i8**, i8*) #1

declare dso_local i64 @git_mutex_lock(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local %struct.git_pack_file* @git_strmap_get(i32, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_atomic_inc(i32*) #1

declare dso_local i32 @git_mutex_unlock(i32*) #1

declare dso_local i32 @git_packfile_alloc(%struct.git_pack_file**, i8*) #1

declare dso_local i32 @git_strmap_set(i32, i32, %struct.git_pack_file*) #1

declare dso_local i32 @git_packfile_free(%struct.git_pack_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
