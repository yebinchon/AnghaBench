; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_read_tree_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_read_tree_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_19__*, i8*)* @read_tree_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_cb(i8* %0, %struct.TYPE_19__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %15 = bitcast %struct.TYPE_21__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = call i64 @git_tree_entry__is_tree(%struct.TYPE_19__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @git_buf_joinpath(%struct.TYPE_21__* %11, i8* %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %108

28:                                               ; preds = %20
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @INDEX_OWNER(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @index_entry_create(%struct.TYPE_20__** %9, i32 %32, i32 %34, i32* null, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %108

38:                                               ; preds = %28
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %47 = call i32 @git_tree_entry_id(%struct.TYPE_19__* %46)
  %48 = call i32 @git_oid_cpy(i32* %45, i32 %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %92

53:                                               ; preds = %38
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @index_find_in_entries(i64* %12, i32* %56, i32 %59, i32 %61, i32 0, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %53
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call %struct.TYPE_20__* @git_vector_get(i32* %67, i64 %68)
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %10, align 8
  %70 = icmp ne %struct.TYPE_20__* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = call i64 @git_oid_equal(i32* %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %89 = call i32 @index_entry_cpy(%struct.TYPE_20__* %87, %struct.TYPE_20__* %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %79, %71, %64, %53, %38
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @index_entry_adjust_namemask(%struct.TYPE_20__* %93, i32 %95)
  %97 = call i32 @git_buf_dispose(%struct.TYPE_21__* %11)
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = call i64 @git_vector_insert(i32 %100, %struct.TYPE_20__* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = call i32 @index_entry_free(%struct.TYPE_20__* %105)
  store i32 -1, i32* %4, align 4
  br label %108

107:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %104, %37, %27, %19
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_tree_entry__is_tree(%struct.TYPE_19__*) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_21__*, i8*, i32) #2

declare dso_local i64 @index_entry_create(%struct.TYPE_20__**, i32, i32, i32*, i32) #2

declare dso_local i32 @INDEX_OWNER(i32) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_tree_entry_id(%struct.TYPE_19__*) #2

declare dso_local i32 @index_find_in_entries(i64*, i32*, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_20__* @git_vector_get(i32*, i64) #2

declare dso_local i64 @git_oid_equal(i32*, i32*) #2

declare dso_local i32 @index_entry_cpy(%struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @index_entry_adjust_namemask(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_21__*) #2

declare dso_local i64 @git_vector_insert(i32, %struct.TYPE_20__*) #2

declare dso_local i32 @index_entry_free(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
