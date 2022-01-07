; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_get_fetch_recurse_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_get_fetch_recurse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule = type { i32, i32 }
%struct.submodule_parallel_fetch = type { i64, i32, i32 }

@RECURSE_SUBMODULES_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"submodule.%s.fetchRecurseSubmodules\00", align 1
@RECURSE_SUBMODULES_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submodule*, %struct.submodule_parallel_fetch*)* @get_fetch_recurse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fetch_recurse_config(%struct.submodule* %0, %struct.submodule_parallel_fetch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca %struct.submodule_parallel_fetch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.submodule* %0, %struct.submodule** %4, align 8
  store %struct.submodule_parallel_fetch* %1, %struct.submodule_parallel_fetch** %5, align 8
  %9 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %5, align 8
  %10 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RECURSE_SUBMODULES_DEFAULT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %5, align 8
  %16 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.submodule*, %struct.submodule** %4, align 8
  %21 = icmp ne %struct.submodule* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.submodule*, %struct.submodule** %4, align 8
  %24 = getelementptr inbounds %struct.submodule, %struct.submodule* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.submodule*, %struct.submodule** %4, align 8
  %27 = getelementptr inbounds %struct.submodule, %struct.submodule* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @xstrfmt(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i8* %29, i8** %6, align 8
  %30 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %5, align 8
  %31 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @repo_config_get_string_const(i32 %32, i8* %33, i8** %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @parse_fetch_recurse_submodules_arg(i8* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %22
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @RECURSE_SUBMODULES_NONE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %5, align 8
  %51 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %46, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i32 @repo_config_get_string_const(i32, i8*, i8**) #1

declare dso_local i32 @parse_fetch_recurse_submodules_arg(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
