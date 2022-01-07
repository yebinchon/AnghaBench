; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_clean_shared_index_files.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_clean_shared_index_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unable to open git dir: %s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"sharedindex.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to unlink: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @clean_shared_index_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_shared_index_files(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 (...) @get_git_dir()
  %9 = call i32* @opendir(i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (...) @get_git_dir()
  %15 = call i32 @error_errno(i32 %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %54

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %50, %33, %27, %16
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.dirent* @readdir(i32* %18)
  store %struct.dirent* %19, %struct.dirent** %4, align 8
  %20 = icmp ne %struct.dirent* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.dirent*, %struct.dirent** %4, align 8
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @skip_prefix(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %17

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %17

34:                                               ; preds = %28
  %35 = load %struct.dirent*, %struct.dirent** %4, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @git_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @should_delete_shared_index(i8* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @unlink(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @warning_errno(i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %46, %42, %34
  br label %17

51:                                               ; preds = %17
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @closedir(i32* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @get_git_dir(...) #1

declare dso_local i32 @error_errno(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_path(i8*, i32) #1

declare dso_local i64 @should_delete_shared_index(i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @warning_errno(i32, i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
