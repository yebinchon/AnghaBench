; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_resolve_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_resolve_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid format for submodule URL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_resolve_url(%struct.TYPE_10__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ false, %13 ], [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = call i32 @git_buf_sanitize(%struct.TYPE_10__* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* @strchr(i8* %25, i8 signext 92)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @git_path_normalize_slashes(%struct.TYPE_10__* %9, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %72

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %34, %19
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @git_path_is_relative(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @get_url_base(%struct.TYPE_10__* %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @git_path_apply_relative(%struct.TYPE_10__* %47, i8* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %41
  br label %69

51:                                               ; preds = %37
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @strchr(i8* %52, i8 signext 58)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %51
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @git_buf_sets(%struct.TYPE_10__* %62, i8* %63)
  store i32 %64, i32* %8, align 4
  br label %68

65:                                               ; preds = %55
  %66 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %67 = call i32 @git_error_set(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %50
  %70 = call i32 @git_buf_dispose(%struct.TYPE_10__* %9)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_sanitize(%struct.TYPE_10__*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @git_path_normalize_slashes(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @git_path_is_relative(i8*) #2

declare dso_local i32 @get_url_base(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @git_path_apply_relative(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
