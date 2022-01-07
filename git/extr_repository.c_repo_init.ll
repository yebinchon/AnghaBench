; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository_format = type { i32 }
%struct.repository = type { i32, i32, i32 }

@REPOSITORY_FORMAT_INIT = common dso_local global %struct.repository_format zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_init(%struct.repository* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.repository_format, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = bitcast %struct.repository_format* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.repository_format* @REPOSITORY_FORMAT_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = call i32 @memset(%struct.repository* %10, i32 0, i32 12)
  %12 = call i32 (...) @raw_object_store_new()
  %13 = load %struct.repository*, %struct.repository** %5, align 8
  %14 = getelementptr inbounds %struct.repository, %struct.repository* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = call i32 (...) @parsed_object_pool_new()
  %16 = load %struct.repository*, %struct.repository** %5, align 8
  %17 = getelementptr inbounds %struct.repository, %struct.repository* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.repository*, %struct.repository** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @repo_init_gitdir(%struct.repository* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %43

23:                                               ; preds = %3
  %24 = load %struct.repository*, %struct.repository** %5, align 8
  %25 = getelementptr inbounds %struct.repository, %struct.repository* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @read_and_verify_repository_format(%struct.repository_format* %8, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %43

30:                                               ; preds = %23
  %31 = load %struct.repository*, %struct.repository** %5, align 8
  %32 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @repo_set_hash_algo(%struct.repository* %31, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.repository*, %struct.repository** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @repo_set_worktree(%struct.repository* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = call i32 @clear_repository_format(%struct.repository_format* %8)
  store i32 0, i32* %4, align 4
  br label %46

43:                                               ; preds = %29, %22
  %44 = load %struct.repository*, %struct.repository** %5, align 8
  %45 = call i32 @repo_clear(%struct.repository* %44)
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.repository*, i32, i32) #2

declare dso_local i32 @raw_object_store_new(...) #2

declare dso_local i32 @parsed_object_pool_new(...) #2

declare dso_local i64 @repo_init_gitdir(%struct.repository*, i8*) #2

declare dso_local i64 @read_and_verify_repository_format(%struct.repository_format*, i32) #2

declare dso_local i32 @repo_set_hash_algo(%struct.repository*, i32) #2

declare dso_local i32 @repo_set_worktree(%struct.repository*, i8*) #2

declare dso_local i32 @clear_repository_format(%struct.repository_format*) #2

declare dso_local i32 @repo_clear(%struct.repository*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
