; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_sparse_oid__init.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_sparse_oid__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32 }
%struct.filter = type { i32, i32, %struct.filter_sparse_data* }
%struct.filter_sparse_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.object_context = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@GET_OID_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unable to access sparse blob in '%s'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to parse sparse filter data in %s\00", align 1
@filter_sparse = common dso_local global i32 0, align 4
@filter_sparse_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_objects_filter_options*, %struct.filter*)* @filter_sparse_oid__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_sparse_oid__init(%struct.list_objects_filter_options* %0, %struct.filter* %1) #0 {
  %3 = alloca %struct.list_objects_filter_options*, align 8
  %4 = alloca %struct.filter*, align 8
  %5 = alloca %struct.filter_sparse_data*, align 8
  %6 = alloca %struct.object_context, align 4
  %7 = alloca %struct.object_id, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %3, align 8
  store %struct.filter* %1, %struct.filter** %4, align 8
  %8 = call %struct.filter_sparse_data* @xcalloc(i32 1, i32 24)
  store %struct.filter_sparse_data* %8, %struct.filter_sparse_data** %5, align 8
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %11 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GET_OID_BLOB, align 4
  %14 = call i64 @get_oid_with_context(i32 %9, i32 %12, i32 %13, %struct.object_id* %7, %struct.object_context* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %19 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @die(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %24 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %23, i32 0, i32 3
  %25 = call i64 @add_patterns_from_blob_to_list(%struct.object_id* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @oid_to_hex(%struct.object_id* %7)
  %30 = call i32 @die(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %33 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %36 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %40 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %34, i32 %38, i32 %41)
  %43 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %44 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %47 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %53 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %56 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %62 = getelementptr inbounds %struct.filter_sparse_data, %struct.filter_sparse_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.filter_sparse_data*, %struct.filter_sparse_data** %5, align 8
  %66 = load %struct.filter*, %struct.filter** %4, align 8
  %67 = getelementptr inbounds %struct.filter, %struct.filter* %66, i32 0, i32 2
  store %struct.filter_sparse_data* %65, %struct.filter_sparse_data** %67, align 8
  %68 = load i32, i32* @filter_sparse, align 4
  %69 = load %struct.filter*, %struct.filter** %4, align 8
  %70 = getelementptr inbounds %struct.filter, %struct.filter* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @filter_sparse_free, align 4
  %72 = load %struct.filter*, %struct.filter** %4, align 8
  %73 = getelementptr inbounds %struct.filter, %struct.filter* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local %struct.filter_sparse_data* @xcalloc(i32, i32) #1

declare dso_local i64 @get_oid_with_context(i32, i32, i32, %struct.object_id*, %struct.object_context*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @add_patterns_from_blob_to_list(%struct.object_id*, i8*, i32, i32*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
