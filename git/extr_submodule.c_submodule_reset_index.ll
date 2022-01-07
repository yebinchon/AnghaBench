; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_submodule_reset_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_submodule_reset_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i8*, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"--super-prefix=%s%s/\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--reset\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"could not reset submodule index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @submodule_reset_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submodule_reset_index(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.child_process, align 8
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %5 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 4
  %6 = call i32 @prepare_submodule_repo_env(i32* %5)
  %7 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  %12 = call i32 (...) @get_super_prefix_or_empty()
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @argv_array_pushf(i32* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %12, i8* %13)
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  %16 = call i32 @argv_array_pushl(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  %18 = call i32 (...) @empty_tree_oid_hex()
  %19 = call i32 @argv_array_push(i32* %17, i32 %18)
  %20 = call i64 @run_command(%struct.child_process* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32, i8*) #2

declare dso_local i32 @get_super_prefix_or_empty(...) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i32) #2

declare dso_local i32 @empty_tree_oid_hex(...) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
