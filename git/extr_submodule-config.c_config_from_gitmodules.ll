; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_config_from_gitmodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_config_from_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.git_config_source = type { i8*, i8*, i32 }
%struct.config_options = type { i32 }
%struct.object_id = type { i32 }

@GITMODULES_FILE = common dso_local global i32 0, align 4
@GITMODULES_INDEX = common dso_local global i32 0, align 4
@GITMODULES_HEAD = common dso_local global i32 0, align 4
@the_repository = common dso_local global %struct.repository* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.repository*, i8*)* @config_from_gitmodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_from_gitmodules(i32 %0, %struct.repository* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.git_config_source, align 8
  %8 = alloca %struct.config_options, align 4
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.repository* %1, %struct.repository** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.repository*, %struct.repository** %5, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %3
  %17 = bitcast %struct.git_config_source* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.config_options* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  store i8* null, i8** %11, align 8
  %19 = load %struct.repository*, %struct.repository** %5, align 8
  %20 = load i32, i32* @GITMODULES_FILE, align 4
  %21 = call i8* @repo_worktree_path(%struct.repository* %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @file_exists(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %7, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  br label %57

28:                                               ; preds = %16
  %29 = load %struct.repository*, %struct.repository** %5, align 8
  %30 = load i32, i32* @GITMODULES_INDEX, align 4
  %31 = call i64 @repo_get_oid(%struct.repository* %29, i32 %30, %struct.object_id* %9)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.repository*, %struct.repository** %5, align 8
  %35 = load i32, i32* @GITMODULES_HEAD, align 4
  %36 = call i64 @repo_get_oid(%struct.repository* %34, i32 %35, %struct.object_id* %9)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33, %28
  %39 = call i32 @oid_to_hex(%struct.object_id* %9)
  %40 = call i8* @xstrdup(i32 %39)
  store i8* %40, i8** %11, align 8
  %41 = getelementptr inbounds %struct.git_config_source, %struct.git_config_source* %7, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.repository*, %struct.repository** %5, align 8
  %43 = load %struct.repository*, %struct.repository** @the_repository, align 8
  %44 = icmp ne %struct.repository* %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load %struct.repository*, %struct.repository** %5, align 8
  %47 = getelementptr inbounds %struct.repository, %struct.repository* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @add_to_alternates_memory(i32 %52)
  br label %54

54:                                               ; preds = %45, %38
  br label %56

55:                                               ; preds = %33
  br label %61

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %25
  %58 = load i32, i32* %4, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @config_with_options(i32 %58, i8* %59, %struct.git_config_source* %7, %struct.config_options* %8)
  br label %61

61:                                               ; preds = %57, %55
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @repo_worktree_path(%struct.repository*, i32) #2

declare dso_local i64 @file_exists(i8*) #2

declare dso_local i64 @repo_get_oid(%struct.repository*, i32, %struct.object_id*) #2

declare dso_local i8* @xstrdup(i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @add_to_alternates_memory(i32) #2

declare dso_local i32 @config_with_options(i32, i8*, %struct.git_config_source*, %struct.config_options*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
