; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__to_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_apply.c_git_apply__to_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i8**, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH = common dso_local global i32 0, align 4
@GIT_CHECKOUT_DONT_WRITE_INDEX = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_WORKDIR = common dso_local global i64 0, align 8
@GIT_CHECKOUT_DONT_UPDATE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i64, i32*)* @git_apply__to_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_apply__to_workdir(i32* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = bitcast %struct.TYPE_17__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_17__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %19 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 32, i1 false)
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @GIT_UNUSED(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i64 @git_diff_num_deltas(i32* %22)
  %24 = call i32 @git_vector_init(%struct.TYPE_17__* %13, i64 %23, i32* null)
  store i32 %24, i32* %17, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %105

27:                                               ; preds = %6
  store i64 0, i64* %16, align 8
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i64, i64* %16, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @git_diff_num_deltas(i32* %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %16, align 8
  %36 = call %struct.TYPE_18__* @git_diff_get_delta(i32* %34, i64 %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %15, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @git_vector_insert(%struct.TYPE_17__* %13, i8* %41)
  store i32 %42, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %105

45:                                               ; preds = %33
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @strcmp(i64 %49, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @git_vector_insert(%struct.TYPE_17__* %13, i8* %61)
  store i32 %62, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %105

65:                                               ; preds = %56, %45
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %16, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %16, align 8
  br label %28

69:                                               ; preds = %28
  %70 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @GIT_CHECKOUT_DISABLE_PATHSPEC_MATCH, align 4
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @GIT_CHECKOUT_DONT_WRITE_INDEX, align 4
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @GIT_APPLY_LOCATION_WORKDIR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load i32, i32* @GIT_CHECKOUT_DONT_UPDATE_INDEX, align 4
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %85, %69
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8**
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i8** %93, i8*** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @git_checkout_index(i32* %102, i32* %103, %struct.TYPE_19__* %14)
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %90, %64, %44, %26
  %106 = call i32 @git_vector_free(%struct.TYPE_17__* %13)
  %107 = load i32, i32* %17, align 4
  ret i32 %107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(i32*) #2

declare dso_local i32 @git_vector_init(%struct.TYPE_17__*, i64, i32*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_18__* @git_diff_get_delta(i32*, i64) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_17__*, i8*) #2

declare dso_local i64 @strcmp(i64, i64) #2

declare dso_local i32 @git_checkout_index(i32*, i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
