; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_prepare_multi_pack_index_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_prepare_multi_pack_index_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.multi_pack_index* }
%struct.multi_pack_index = type { %struct.multi_pack_index*, i32 }

@prepare_multi_pack_index_one.env_value = internal global i32 -1, align 4
@GIT_TEST_MULTI_PACK_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"core.multipackindex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_multi_pack_index_one(%struct.repository* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.multi_pack_index*, align 8
  %9 = alloca %struct.multi_pack_index*, align 8
  %10 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @prepare_multi_pack_index_one.env_value, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @GIT_TEST_MULTI_PACK_INDEX, align 4
  %15 = call i32 @git_env_bool(i32 %14, i32 0)
  store i32 %15, i32* @prepare_multi_pack_index_one.env_value, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @prepare_multi_pack_index_one.env_value, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load %struct.repository*, %struct.repository** %5, align 8
  %21 = call i64 @repo_config_get_bool(%struct.repository* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %19
  store i32 0, i32* %4, align 4
  br label %69

27:                                               ; preds = %23, %16
  %28 = load %struct.repository*, %struct.repository** %5, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.multi_pack_index*, %struct.multi_pack_index** %31, align 8
  store %struct.multi_pack_index* %32, %struct.multi_pack_index** %9, align 8
  br label %33

33:                                               ; preds = %45, %27
  %34 = load %struct.multi_pack_index*, %struct.multi_pack_index** %9, align 8
  %35 = icmp ne %struct.multi_pack_index* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.multi_pack_index*, %struct.multi_pack_index** %9, align 8
  %39 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcmp(i8* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %69

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.multi_pack_index*, %struct.multi_pack_index** %9, align 8
  %47 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %46, i32 0, i32 0
  %48 = load %struct.multi_pack_index*, %struct.multi_pack_index** %47, align 8
  store %struct.multi_pack_index* %48, %struct.multi_pack_index** %9, align 8
  br label %33

49:                                               ; preds = %33
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.multi_pack_index* @load_multi_pack_index(i8* %50, i32 %51)
  store %struct.multi_pack_index* %52, %struct.multi_pack_index** %8, align 8
  %53 = load %struct.multi_pack_index*, %struct.multi_pack_index** %8, align 8
  %54 = icmp ne %struct.multi_pack_index* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.repository*, %struct.repository** %5, align 8
  %57 = getelementptr inbounds %struct.repository, %struct.repository* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.multi_pack_index*, %struct.multi_pack_index** %59, align 8
  %61 = load %struct.multi_pack_index*, %struct.multi_pack_index** %8, align 8
  %62 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %61, i32 0, i32 0
  store %struct.multi_pack_index* %60, %struct.multi_pack_index** %62, align 8
  %63 = load %struct.multi_pack_index*, %struct.multi_pack_index** %8, align 8
  %64 = load %struct.repository*, %struct.repository** %5, align 8
  %65 = getelementptr inbounds %struct.repository, %struct.repository* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.multi_pack_index* %63, %struct.multi_pack_index** %67, align 8
  store i32 1, i32* %4, align 4
  br label %69

68:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %55, %43, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @git_env_bool(i32, i32) #1

declare dso_local i64 @repo_config_get_bool(%struct.repository*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local %struct.multi_pack_index* @load_multi_pack_index(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
