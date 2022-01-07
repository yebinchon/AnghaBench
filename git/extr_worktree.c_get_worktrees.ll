; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_get_worktrees.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_get_worktrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32 }
%struct.dirent = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/worktrees\00", align 1
@GWT_SORT_LINKED = common dso_local global i32 0, align 4
@compare_worktree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.worktree** @get_worktrees(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.worktree**, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.worktree*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.worktree** null, %struct.worktree*** %3, align 8
  %10 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %11 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @ALLOC_ARRAY(%struct.worktree** %11, i32 %12)
  %14 = call %struct.worktree* (...) @get_main_worktree()
  %15 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.worktree*, %struct.worktree** %15, i64 %18
  store %struct.worktree* %14, %struct.worktree** %19, align 8
  %20 = call i32 (...) @get_git_common_dir()
  %21 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @opendir(i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = call i32 @strbuf_release(%struct.strbuf* %4)
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %58, %39, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.dirent* @readdir(i32* %30)
  store %struct.dirent* %31, %struct.dirent** %6, align 8
  %32 = icmp ne %struct.dirent* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  store %struct.worktree* null, %struct.worktree** %9, align 8
  %34 = load %struct.dirent*, %struct.dirent** %6, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_dot_or_dotdot(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %29

40:                                               ; preds = %33
  %41 = load %struct.dirent*, %struct.dirent** %6, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.worktree* @get_linked_worktree(i32 %43)
  store %struct.worktree* %44, %struct.worktree** %9, align 8
  %45 = icmp ne %struct.worktree* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ALLOC_GROW(%struct.worktree** %47, i32 %49, i32 %50)
  %52 = load %struct.worktree*, %struct.worktree** %9, align 8
  %53 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.worktree*, %struct.worktree** %53, i64 %56
  store %struct.worktree* %52, %struct.worktree** %57, align 8
  br label %58

58:                                               ; preds = %46, %40
  br label %29

59:                                               ; preds = %29
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @closedir(i32* %60)
  br label %62

62:                                               ; preds = %59, %1
  %63 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ALLOC_GROW(%struct.worktree** %63, i32 %65, i32 %66)
  %68 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.worktree*, %struct.worktree** %68, i64 %70
  store %struct.worktree* null, %struct.worktree** %71, align 8
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @GWT_SORT_LINKED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %62
  %77 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %78 = getelementptr inbounds %struct.worktree*, %struct.worktree** %77, i64 1
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* @compare_worktree, align 4
  %82 = call i32 @QSORT(%struct.worktree** %78, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %62
  %84 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %85 = call i32 @mark_current_worktree(%struct.worktree** %84)
  %86 = load %struct.worktree**, %struct.worktree*** %3, align 8
  ret %struct.worktree** %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.worktree**, i32) #2

declare dso_local %struct.worktree* @get_main_worktree(...) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @get_git_common_dir(...) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local %struct.worktree* @get_linked_worktree(i32) #2

declare dso_local i32 @ALLOC_GROW(%struct.worktree**, i32, i32) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local i32 @QSORT(%struct.worktree**, i32, i32) #2

declare dso_local i32 @mark_current_worktree(%struct.worktree**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
