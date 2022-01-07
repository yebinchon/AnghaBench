; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_ll_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_ll_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_merge_options = type { i64, i64, i64 }
%struct.index_state = type { i32 }
%struct.attr_check = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.ll_merge_driver = type { i8*, i32 (%struct.ll_merge_driver*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.ll_merge_options*, i32)* }

@ll_merge.default_opts = internal constant %struct.ll_merge_options zeroinitializer, align 8
@DEFAULT_CONFLICT_MARKER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll_merge(i32* %0, i8* %1, i32* %2, i8* %3, i32* %4, i8* %5, i32* %6, i8* %7, %struct.index_state* %8, %struct.ll_merge_options* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.index_state*, align 8
  %20 = alloca %struct.ll_merge_options*, align 8
  %21 = alloca %struct.attr_check*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ll_merge_driver*, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.index_state* %8, %struct.index_state** %19, align 8
  store %struct.ll_merge_options* %9, %struct.ll_merge_options** %20, align 8
  %25 = call %struct.attr_check* (...) @load_merge_attributes()
  store %struct.attr_check* %25, %struct.attr_check** %21, align 8
  store i8* null, i8** %22, align 8
  %26 = load i32, i32* @DEFAULT_CONFLICT_MARKER_SIZE, align 4
  store i32 %26, i32* %23, align 4
  %27 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %28 = icmp ne %struct.ll_merge_options* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %10
  store %struct.ll_merge_options* @ll_merge.default_opts, %struct.ll_merge_options** %20, align 8
  br label %30

30:                                               ; preds = %29, %10
  %31 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %32 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.index_state*, %struct.index_state** %19, align 8
  %39 = call i32 @normalize_file(i32* %36, i8* %37, %struct.index_state* %38)
  %40 = load i32*, i32** %15, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load %struct.index_state*, %struct.index_state** %19, align 8
  %43 = call i32 @normalize_file(i32* %40, i8* %41, %struct.index_state* %42)
  %44 = load i32*, i32** %17, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.index_state*, %struct.index_state** %19, align 8
  %47 = call i32 @normalize_file(i32* %44, i8* %45, %struct.index_state* %46)
  br label %48

48:                                               ; preds = %35, %30
  %49 = load %struct.index_state*, %struct.index_state** %19, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.attr_check*, %struct.attr_check** %21, align 8
  %52 = call i32 @git_check_attr(%struct.index_state* %49, i8* %50, %struct.attr_check* %51)
  %53 = load %struct.attr_check*, %struct.attr_check** %21, align 8
  %54 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %22, align 8
  %59 = load %struct.attr_check*, %struct.attr_check** %21, align 8
  %60 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %48
  %67 = load %struct.attr_check*, %struct.attr_check** %21, align 8
  %68 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @DEFAULT_CONFLICT_MARKER_SIZE, align 4
  store i32 %77, i32* %23, align 4
  br label %78

78:                                               ; preds = %76, %66
  br label %79

79:                                               ; preds = %78, %48
  %80 = load i8*, i8** %22, align 8
  %81 = call %struct.ll_merge_driver* @find_ll_merge_driver(i8* %80)
  store %struct.ll_merge_driver* %81, %struct.ll_merge_driver** %24, align 8
  %82 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %83 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %24, align 8
  %88 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %24, align 8
  %93 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call %struct.ll_merge_driver* @find_ll_merge_driver(i8* %94)
  store %struct.ll_merge_driver* %95, %struct.ll_merge_driver** %24, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %99 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %104 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %23, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %23, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %24, align 8
  %112 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %111, i32 0, i32 1
  %113 = load i32 (%struct.ll_merge_driver*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.ll_merge_options*, i32)*, i32 (%struct.ll_merge_driver*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.ll_merge_options*, i32)** %112, align 8
  %114 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %24, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i8*, i8** %18, align 8
  %123 = load %struct.ll_merge_options*, %struct.ll_merge_options** %20, align 8
  %124 = load i32, i32* %23, align 4
  %125 = call i32 %113(%struct.ll_merge_driver* %114, i32* %115, i8* %116, i32* %117, i8* %118, i32* %119, i8* %120, i32* %121, i8* %122, %struct.ll_merge_options* %123, i32 %124)
  ret i32 %125
}

declare dso_local %struct.attr_check* @load_merge_attributes(...) #1

declare dso_local i32 @normalize_file(i32*, i8*, %struct.index_state*) #1

declare dso_local i32 @git_check_attr(%struct.index_state*, i8*, %struct.attr_check*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.ll_merge_driver* @find_ll_merge_driver(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
