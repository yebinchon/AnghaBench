; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_remove_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.lev_filesys_rmdir = type { i32, i32 }

@old_dir = common dso_local global i8* null, align 8
@old_dir_length = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Remove: %s\0A\00", align 1
@status = common dso_local global i64 0, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@tmp_dir = common dso_local global i8* null, align 8
@use_clone = common dso_local global i64 0, align 8
@pot_remove = common dso_local global i32 0, align 4
@LEV_FILESYS_XFS_FILE_REMOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"delete_file (%s/%s) failed (exit_code = %d).\0A\00", align 1
@faults = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_file(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_filesys_rmdir*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %11 = load i8*, i8** @old_dir, align 8
  %12 = load i32, i32* @old_dir_length, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** @old_dir, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @append_path(i8* %16, i32 %17, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* @status, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %81

29:                                               ; preds = %2
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %6, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = load i8*, i8** @tmp_dir, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @snprintf(i8* %33, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* @PATH_MAX, align 4
  %39 = icmp slt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* @use_clone, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = call i32 @delete_file(i8* %33)
  store i32 %45, i32* %8, align 4
  br label %51

46:                                               ; preds = %29
  %47 = load i32, i32* @pot_remove, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @pending_operation_create(i32 %47, i32* null, i8* %48, i32* null)
  %50 = call i32 @pending_operation_push(i32 %49)
  br label %51

51:                                               ; preds = %46, %44
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @LEV_FILESYS_XFS_FILE_REMOVE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call %struct.lev_filesys_rmdir* @filesys_xfs_alloc_log_event(i32 %57, i32 %61)
  store %struct.lev_filesys_rmdir* %62, %struct.lev_filesys_rmdir** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.lev_filesys_rmdir*, %struct.lev_filesys_rmdir** %10, align 8
  %65 = getelementptr inbounds %struct.lev_filesys_rmdir, %struct.lev_filesys_rmdir* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.lev_filesys_rmdir*, %struct.lev_filesys_rmdir** %10, align 8
  %67 = getelementptr inbounds %struct.lev_filesys_rmdir, %struct.lev_filesys_rmdir* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memcpy(i32 %68, i8* %69, i32 %70)
  br label %79

72:                                               ; preds = %51
  %73 = load i8*, i8** @tmp_dir, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %74, i32 %75)
  %77 = load i32, i32* @faults, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @faults, align 4
  br label %79

79:                                               ; preds = %72, %54
  %80 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %81

81:                                               ; preds = %79, %26
  %82 = load i8*, i8** @old_dir, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 0, i8* %85, align 1
  ret void
}

declare dso_local i32 @append_path(i8*, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @delete_file(i8*) #1

declare dso_local i32 @pending_operation_push(i32) #1

declare dso_local i32 @pending_operation_create(i32, i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.lev_filesys_rmdir* @filesys_xfs_alloc_log_event(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kprintf(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
