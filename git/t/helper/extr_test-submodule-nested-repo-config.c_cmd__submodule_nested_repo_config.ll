; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-submodule-nested-repo-config.c_cmd__submodule_nested_repo_config.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-submodule-nested-repo-config.c_cmd__submodule_nested_repo_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.submodule = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Wrong number of arguments.\00", align 1
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Submodule not found.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__submodule_nested_repo_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.repository, align 4
  %6 = alloca %struct.submodule*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 3
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @die_usage(i32 %10, i8** %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %2
  %14 = call i32 (...) @setup_git_directory()
  %15 = load i32, i32* @the_repository, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.submodule* @submodule_from_path(i32 %15, i32* @null_oid, i8* %18)
  store %struct.submodule* %19, %struct.submodule** %6, align 8
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.submodule*, %struct.submodule** %6, align 8
  %22 = call i64 @repo_submodule_init(%struct.repository* %5, i32 %20, %struct.submodule* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = load i8**, i8*** %4, align 8
  %27 = call i32 @die_usage(i32 %25, i8** %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %13
  %29 = load i8**, i8*** %4, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @print_config_from_gitmodules(%struct.repository* %5, i8* %31)
  %33 = load i32, i32* @the_repository, align 4
  %34 = call i32 @submodule_free(i32 %33)
  ret i32 0
}

declare dso_local i32 @die_usage(i32, i8**, i8*) #1

declare dso_local i32 @setup_git_directory(...) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #1

declare dso_local i64 @repo_submodule_init(%struct.repository*, i32, %struct.submodule*) #1

declare dso_local i32 @print_config_from_gitmodules(%struct.repository*, i8*) #1

declare dso_local i32 @submodule_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
