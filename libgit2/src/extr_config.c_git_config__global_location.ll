; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__global_location.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__global_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@GIT_SYSDIR_GLOBAL = common dso_local global i32 0, align 4
@GIT_PATH_LIST_SEPARATOR = common dso_local global i8 0, align 1
@GIT_CONFIG_FILENAME_GLOBAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config__global_location(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @GIT_SYSDIR_GLOBAL, align 4
  %8 = call i64 @git_sysdir_get(%struct.TYPE_8__** %4, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = call i32 @git_buf_len(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %11
  store i32 -1, i32* %2, align 4
  br label %66

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i8* @git_buf_cstr(%struct.TYPE_8__* %20)
  store i8* %21, i8** %6, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %45, %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @GIT_PATH_LIST_SEPARATOR, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ule i8* %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 92
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %33
  br label %48

44:                                               ; preds = %37, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  br label %22

48:                                               ; preds = %43, %22
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = call i64 @git_buf_set(%struct.TYPE_8__* %49, i8* %50, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %66

59:                                               ; preds = %48
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GIT_CONFIG_FILENAME_GLOBAL, align 4
  %65 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %60, i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %59, %58, %18, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @git_sysdir_get(%struct.TYPE_8__**, i32) #1

declare dso_local i32 @git_buf_len(%struct.TYPE_8__*) #1

declare dso_local i8* @git_buf_cstr(%struct.TYPE_8__*) #1

declare dso_local i64 @git_buf_set(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
