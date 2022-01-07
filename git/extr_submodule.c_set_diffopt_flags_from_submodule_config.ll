; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_set_diffopt_flags_from_submodule_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_set_diffopt_flags_from_submodule_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.diff_options = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.submodule = type { i8*, i32 }

@the_repository = common dso_local global %struct.TYPE_6__* null, align 8
@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submodule.%s.ignore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_diffopt_flags_from_submodule_config(%struct.diff_options* %0, i8* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.submodule*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.submodule* @submodule_from_path(%struct.TYPE_6__* %8, i32* @null_oid, i8* %9)
  store %struct.submodule* %10, %struct.submodule** %5, align 8
  %11 = load %struct.submodule*, %struct.submodule** %5, align 8
  %12 = icmp ne %struct.submodule* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.submodule*, %struct.submodule** %5, align 8
  %15 = getelementptr inbounds %struct.submodule, %struct.submodule* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @xstrfmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @repo_config_get_string_const(%struct.TYPE_6__* %18, i8* %19, i8** %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.submodule*, %struct.submodule** %5, align 8
  %24 = getelementptr inbounds %struct.submodule, %struct.submodule* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @handle_ignore_submodules_arg(%struct.diff_options* %32, i8* %33)
  br label %46

35:                                               ; preds = %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_repository, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @is_gitmodules_unmerged(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %43 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local %struct.submodule* @submodule_from_path(%struct.TYPE_6__*, i32*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i64 @repo_config_get_string_const(%struct.TYPE_6__*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @handle_ignore_submodules_arg(%struct.diff_options*, i8*) #1

declare dso_local i64 @is_gitmodules_unmerged(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
