; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_set_autotag.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_set_autotag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CONFIG_TAGOPT_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"--no-tags\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid value for the tagopt setting\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_set_autotag(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @ensure_remote_name_is_valid(i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %17
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_repository_config__weakptr(i32** %9, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %67

32:                                               ; preds = %26
  %33 = load i32, i32* @CONFIG_TAGOPT_FMT, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @git_buf_printf(%struct.TYPE_5__* %8, i32 %33, i8* %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %67

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %61 [
    i32 128, label %41
    i32 130, label %46
    i32 129, label %51
  ]

41:                                               ; preds = %39
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @git_config_set_string(i32* %42, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %10, align 4
  br label %64

46:                                               ; preds = %39
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @git_config_set_string(i32* %47, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %10, align 4
  br label %64

51:                                               ; preds = %39
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @git_config_delete_entry(i32* %52, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @GIT_ENOTFOUND, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %51
  br label %64

61:                                               ; preds = %39
  %62 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %63 = call i32 @git_error_set(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %60, %46, %41
  %65 = call i32 @git_buf_dispose(%struct.TYPE_5__* %8)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %37, %30, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_config_set_string(i32*, i32, i8*) #2

declare dso_local i32 @git_config_delete_entry(i32*, i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
