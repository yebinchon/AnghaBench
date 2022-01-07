; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_is_path_occupied.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_is_path_occupied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"File '%s' already exists in the index\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Directory '%s' already exists in the index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @is_path_occupied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_path_occupied(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @git_repository_index__weakptr(i32** %8, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %57

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_index_find(i32* null, i32* %17, i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @git_error_set(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32*, i32** %4, align 8
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %22
  br label %57

31:                                               ; preds = %16
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @git_buf_sets(%struct.TYPE_6__* %9, i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %57

36:                                               ; preds = %31
  %37 = call i32 @git_path_to_dir(%struct.TYPE_6__* %9)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %57

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @git_index_find_prefix(i32* null, i32* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @GIT_ENOTFOUND, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @git_error_set(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %4, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %47
  br label %57

56:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55, %39, %35, %30, %15
  %58 = call i32 @git_buf_dispose(%struct.TYPE_6__* %9)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #2

declare dso_local i32 @git_index_find(i32*, i32*, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @git_path_to_dir(%struct.TYPE_6__*) #2

declare dso_local i32 @git_index_find_prefix(i32*, i32*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
