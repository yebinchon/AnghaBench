; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_needs_pushing.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_needs_pushing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, i32, i32 }
%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.repository = type { i32 }
%struct.oid_array = type { i32 }

@has_remote = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@append_oid_to_argv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--remotes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"Could not run 'git rev-list <commits> --not --remotes -n 1' command in submodule %s\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.oid_array*)* @submodule_needs_pushing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_needs_pushing(%struct.repository* %0, i8* %1, %struct.oid_array* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.oid_array*, align 8
  %8 = alloca %struct.child_process, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.oid_array* %2, %struct.oid_array** %7, align 8
  %11 = load %struct.repository*, %struct.repository** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %14 = call i32 @submodule_has_commits(%struct.repository* %11, i8* %12, %struct.oid_array* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @has_remote, align 4
  %20 = call i64 @for_each_remote_ref_submodule(i8* %18, i32 %19, i32* null)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %24 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %10, align 4
  %25 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %26 = call i32 @argv_array_push(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.oid_array*, %struct.oid_array** %7, align 8
  %28 = load i32, i32* @append_oid_to_argv, align 4
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %30 = call i32 @oid_array_for_each_unique(%struct.oid_array* %27, i32 %28, i32* %29)
  %31 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %32 = call i32 @argv_array_pushl(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  %34 = call i32 @prepare_submodule_repo_env(i32* %33)
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 -1, i32* %37, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = call i64 @start_command(%struct.child_process* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %22
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @die(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %42, %22
  %46 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i64 @strbuf_read(%struct.strbuf* %9, i32 %47, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %55

55:                                               ; preds = %54, %45
  %56 = call i32 @finish_command(%struct.child_process* %8)
  %57 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @close(i32 %58)
  %60 = call i32 @strbuf_release(%struct.strbuf* %9)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @submodule_has_commits(%struct.repository*, i8*, %struct.oid_array*) #1

declare dso_local i64 @for_each_remote_ref_submodule(i8*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #1

declare dso_local i32 @oid_array_for_each_unique(%struct.oid_array*, i32, i32*) #1

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @prepare_submodule_repo_env(i32*) #1

declare dso_local i64 @start_command(%struct.child_process*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i64) #1

declare dso_local i32 @finish_command(%struct.child_process*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
