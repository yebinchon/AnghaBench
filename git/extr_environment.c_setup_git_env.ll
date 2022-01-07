; ModuleID = '/home/carl/AnghaBench/git/extr_environment.c_setup_git_env.c'
source_filename = "/home/carl/AnghaBench/git/extr_environment.c_setup_git_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.set_gitdir_args = type { i8*, i8*, i8*, i8*, i8*, i32* }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@GIT_COMMON_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@DB_ENVIRONMENT = common dso_local global i32 0, align 4
@GRAFT_ENVIRONMENT = common dso_local global i32 0, align 4
@INDEX_ENVIRONMENT = common dso_local global i32 0, align 4
@ALTERNATE_DB_ENVIRONMENT = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@NO_REPLACE_OBJECTS_ENVIRONMENT = common dso_local global i32 0, align 4
@read_replace_refs = common dso_local global i64 0, align 8
@GIT_REPLACE_REF_BASE_ENVIRONMENT = common dso_local global i32 0, align 4
@git_replace_ref_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"refs/replace/\00", align 1
@git_namespace = common dso_local global i32 0, align 4
@GIT_NAMESPACE_ENVIRONMENT = common dso_local global i32 0, align 4
@GIT_SHALLOW_FILE_ENVIRONMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_git_env(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.set_gitdir_args, align 8
  %6 = alloca %struct.argv_array, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast %struct.set_gitdir_args* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 48, i1 false)
  %8 = bitcast %struct.argv_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @GIT_COMMON_DIR_ENVIRONMENT, align 4
  %10 = call i8* @getenv_safe(%struct.argv_array* %6, i32 %9)
  %11 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %5, i32 0, i32 4
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* @DB_ENVIRONMENT, align 4
  %13 = call i8* @getenv_safe(%struct.argv_array* %6, i32 %12)
  %14 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %5, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @GRAFT_ENVIRONMENT, align 4
  %16 = call i8* @getenv_safe(%struct.argv_array* %6, i32 %15)
  %17 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %5, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @INDEX_ENVIRONMENT, align 4
  %19 = call i8* @getenv_safe(%struct.argv_array* %6, i32 %18)
  %20 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %5, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @ALTERNATE_DB_ENVIRONMENT, align 4
  %22 = call i8* @getenv_safe(%struct.argv_array* %6, i32 %21)
  %23 = getelementptr inbounds %struct.set_gitdir_args, %struct.set_gitdir_args* %5, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @the_repository, align 4
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @repo_set_gitdir(i32 %24, i8* %25, %struct.set_gitdir_args* %5)
  %27 = call i32 @argv_array_clear(%struct.argv_array* %6)
  %28 = load i32, i32* @NO_REPLACE_OBJECTS_ENVIRONMENT, align 4
  %29 = call i8* @getenv(i32 %28)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i64 0, i64* @read_replace_refs, align 8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32, i32* @GIT_REPLACE_REF_BASE_ENVIRONMENT, align 4
  %34 = call i8* @getenv(i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load i32, i32* @git_replace_ref_base, align 4
  %36 = call i32 @free(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %41 ]
  %44 = call i32 @xstrdup(i8* %43)
  store i32 %44, i32* @git_replace_ref_base, align 4
  %45 = load i32, i32* @git_namespace, align 4
  %46 = call i32 @free(i32 %45)
  %47 = load i32, i32* @GIT_NAMESPACE_ENVIRONMENT, align 4
  %48 = call i8* @getenv(i32 %47)
  %49 = call i32 @expand_namespace(i8* %48)
  store i32 %49, i32* @git_namespace, align 4
  %50 = load i32, i32* @GIT_SHALLOW_FILE_ENVIRONMENT, align 4
  %51 = call i8* @getenv(i32 %50)
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @the_repository, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @set_alternate_shallow_file(i32 %55, i8* %56, i32 0)
  br label %58

58:                                               ; preds = %54, %42
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getenv_safe(%struct.argv_array*, i32) #2

declare dso_local i32 @repo_set_gitdir(i32, i8*, %struct.set_gitdir_args*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i8* @getenv(i32) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @expand_namespace(i8*) #2

declare dso_local i32 @set_alternate_shallow_file(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
