; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_submodule_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_submodule_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32* }
%struct.repository = type { i8* }
%struct.submodule = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"modules/%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_submodule_init(%struct.repository* %0, %struct.repository* %1, %struct.submodule* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.submodule*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.repository* %1, %struct.repository** %5, align 8
  store %struct.submodule* %2, %struct.submodule** %6, align 8
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load %struct.submodule*, %struct.submodule** %6, align 8
  %13 = icmp ne %struct.submodule* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load %struct.repository*, %struct.repository** %5, align 8
  %17 = load %struct.submodule*, %struct.submodule** %6, align 8
  %18 = getelementptr inbounds %struct.submodule, %struct.submodule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strbuf_repo_worktree_path(%struct.strbuf* %7, %struct.repository* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.repository*, %struct.repository** %5, align 8
  %22 = load %struct.submodule*, %struct.submodule** %6, align 8
  %23 = getelementptr inbounds %struct.submodule, %struct.submodule* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strbuf_repo_worktree_path(%struct.strbuf* %8, %struct.repository* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.repository*, %struct.repository** %4, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @repo_init(%struct.repository* %26, i32* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %15
  %34 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %35 = load %struct.repository*, %struct.repository** %5, align 8
  %36 = load %struct.submodule*, %struct.submodule** %6, align 8
  %37 = getelementptr inbounds %struct.submodule, %struct.submodule* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strbuf_repo_git_path(%struct.strbuf* %7, %struct.repository* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.repository*, %struct.repository** %4, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @repo_init(%struct.repository* %40, i32* %42, i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 -1, i32* %9, align 4
  br label %65

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.repository*, %struct.repository** %5, align 8
  %49 = getelementptr inbounds %struct.repository, %struct.repository* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.repository*, %struct.repository** %5, align 8
  %54 = getelementptr inbounds %struct.repository, %struct.repository* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %56 ]
  %59 = load %struct.submodule*, %struct.submodule** %6, align 8
  %60 = getelementptr inbounds %struct.submodule, %struct.submodule* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @xstrfmt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %58, i32 %61)
  %63 = load %struct.repository*, %struct.repository** %4, align 8
  %64 = getelementptr inbounds %struct.repository, %struct.repository* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %57, %45, %14
  %66 = call i32 @strbuf_release(%struct.strbuf* %7)
  %67 = call i32 @strbuf_release(%struct.strbuf* %8)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_repo_worktree_path(%struct.strbuf*, %struct.repository*, i8*, i32) #2

declare dso_local i64 @repo_init(%struct.repository*, i32*, i32*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_repo_git_path(%struct.strbuf*, %struct.repository*, i8*, i32) #2

declare dso_local i8* @xstrfmt(i8*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
