; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_repo_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_repo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"submodule.%s.url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_repo_init(i32** %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %12 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %13 = load i32**, i32*** %4, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_buf_printf(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @git_repository_config_snapshot(i32** %10, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @git_config_get_string(i8** %9, i32* %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @submodule_repo_init(i32** %8, i32 %42, i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39, %33, %27, %18
  br label %54

51:                                               ; preds = %39
  %52 = load i32*, i32** %8, align 8
  %53 = load i32**, i32*** %4, align 8
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @git_config_free(i32* %55)
  %57 = call i32 @git_buf_dispose(%struct.TYPE_8__* %11)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #2

declare dso_local i32 @git_config_get_string(i8**, i32*, i32) #2

declare dso_local i32 @submodule_repo_init(i32**, i32, i32, i8*, i32) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
