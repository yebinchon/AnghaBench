; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_collect_changed_submodules_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_collect_changed_submodules_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.diff_options = type { i32 }
%struct.collect_changed_submodules_cb_data = type { i32, %struct.object_id*, %struct.string_list* }
%struct.object_id = type { i32 }
%struct.string_list = type { i32 }
%struct.oid_array = type { i32 }
%struct.submodule = type { i8* }

@.str = private unnamed_addr constant [92 x i8] c"Submodule in commit %s at path: '%s' collides with a submodule named the same. Skipping it.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_queue_struct*, %struct.diff_options*, i8*)* @collect_changed_submodules_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_changed_submodules_cb(%struct.diff_queue_struct* %0, %struct.diff_options* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.collect_changed_submodules_cb_data*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.diff_filepair*, align 8
  %12 = alloca %struct.oid_array*, align 8
  %13 = alloca %struct.submodule*, align 8
  %14 = alloca i8*, align 8
  store %struct.diff_queue_struct* %0, %struct.diff_queue_struct** %4, align 8
  store %struct.diff_options* %1, %struct.diff_options** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.collect_changed_submodules_cb_data*
  store %struct.collect_changed_submodules_cb_data* %16, %struct.collect_changed_submodules_cb_data** %7, align 8
  %17 = load %struct.collect_changed_submodules_cb_data*, %struct.collect_changed_submodules_cb_data** %7, align 8
  %18 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %17, i32 0, i32 2
  %19 = load %struct.string_list*, %struct.string_list** %18, align 8
  store %struct.string_list* %19, %struct.string_list** %8, align 8
  %20 = load %struct.collect_changed_submodules_cb_data*, %struct.collect_changed_submodules_cb_data** %7, align 8
  %21 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %20, i32 0, i32 1
  %22 = load %struct.object_id*, %struct.object_id** %21, align 8
  store %struct.object_id* %22, %struct.object_id** %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %105, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %26 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %108

29:                                               ; preds = %23
  %30 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %31 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %30, i32 0, i32 1
  %32 = load %struct.diff_filepair**, %struct.diff_filepair*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %32, i64 %34
  %36 = load %struct.diff_filepair*, %struct.diff_filepair** %35, align 8
  store %struct.diff_filepair* %36, %struct.diff_filepair** %11, align 8
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISGITLINK(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  br label %105

45:                                               ; preds = %29
  %46 = load %struct.collect_changed_submodules_cb_data*, %struct.collect_changed_submodules_cb_data** %7, align 8
  %47 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.object_id*, %struct.object_id** %9, align 8
  %50 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %51 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.submodule* @submodule_from_path(i32 %48, %struct.object_id* %49, i32 %54)
  store %struct.submodule* %55, %struct.submodule** %13, align 8
  %56 = load %struct.submodule*, %struct.submodule** %13, align 8
  %57 = icmp ne %struct.submodule* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = load %struct.submodule*, %struct.submodule** %13, align 8
  %60 = getelementptr inbounds %struct.submodule, %struct.submodule* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %14, align 8
  br label %91

62:                                               ; preds = %45
  %63 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %64 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @default_name_or_path(i32 %67)
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.collect_changed_submodules_cb_data*, %struct.collect_changed_submodules_cb_data** %7, align 8
  %73 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.object_id*, %struct.object_id** %9, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call %struct.submodule* @submodule_from_name(i32 %74, %struct.object_id* %75, i8* %76)
  store %struct.submodule* %77, %struct.submodule** %13, align 8
  br label %78

78:                                               ; preds = %71, %62
  %79 = load %struct.submodule*, %struct.submodule** %13, align 8
  %80 = icmp ne %struct.submodule* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.object_id*, %struct.object_id** %9, align 8
  %83 = call i32 @oid_to_hex(%struct.object_id* %82)
  %84 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %85 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @warning(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %88)
  store i8* null, i8** %14, align 8
  br label %90

90:                                               ; preds = %81, %78
  br label %91

91:                                               ; preds = %90, %58
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %105

95:                                               ; preds = %91
  %96 = load %struct.string_list*, %struct.string_list** %8, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = call %struct.oid_array* @submodule_commits(%struct.string_list* %96, i8* %97)
  store %struct.oid_array* %98, %struct.oid_array** %12, align 8
  %99 = load %struct.oid_array*, %struct.oid_array** %12, align 8
  %100 = load %struct.diff_filepair*, %struct.diff_filepair** %11, align 8
  %101 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @oid_array_append(%struct.oid_array* %99, i32* %103)
  br label %105

105:                                              ; preds = %95, %94, %44
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %23

108:                                              ; preds = %23
  ret void
}

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, %struct.object_id*, i32) #1

declare dso_local i8* @default_name_or_path(i32) #1

declare dso_local %struct.submodule* @submodule_from_name(i32, %struct.object_id*, i8*) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.oid_array* @submodule_commits(%struct.string_list*, i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
