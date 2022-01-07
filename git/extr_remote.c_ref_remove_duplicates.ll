; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_ref_remove_duplicates.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_ref_remove_duplicates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref = type { %struct.ref*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.string_list_item = type { %struct.ref* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @ref_remove_duplicates(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.string_list, align 4
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref**, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca %struct.string_list_item*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %8 = bitcast %struct.string_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store %struct.ref* null, %struct.ref** %4, align 8
  store %struct.ref** %4, %struct.ref*** %5, align 8
  br label %9

9:                                                ; preds = %54, %1
  %10 = load %struct.ref*, %struct.ref** %2, align 8
  %11 = icmp ne %struct.ref* %10, null
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load %struct.ref*, %struct.ref** %2, align 8
  store %struct.ref* %13, %struct.ref** %6, align 8
  %14 = load %struct.ref*, %struct.ref** %2, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %16 = load %struct.ref*, %struct.ref** %15, align 8
  store %struct.ref* %16, %struct.ref** %2, align 8
  %17 = load %struct.ref*, %struct.ref** %6, align 8
  %18 = getelementptr inbounds %struct.ref, %struct.ref* %17, i32 0, i32 0
  store %struct.ref* null, %struct.ref** %18, align 8
  %19 = load %struct.ref*, %struct.ref** %6, align 8
  %20 = getelementptr inbounds %struct.ref, %struct.ref* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load %struct.ref*, %struct.ref** %6, align 8
  %25 = load %struct.ref**, %struct.ref*** %5, align 8
  store %struct.ref* %24, %struct.ref** %25, align 8
  %26 = load %struct.ref*, %struct.ref** %6, align 8
  %27 = getelementptr inbounds %struct.ref, %struct.ref* %26, i32 0, i32 0
  store %struct.ref** %27, %struct.ref*** %5, align 8
  br label %54

28:                                               ; preds = %12
  %29 = load %struct.ref*, %struct.ref** %6, align 8
  %30 = getelementptr inbounds %struct.ref, %struct.ref* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %3, i32 %33)
  store %struct.string_list_item* %34, %struct.string_list_item** %7, align 8
  %35 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %36 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %35, i32 0, i32 0
  %37 = load %struct.ref*, %struct.ref** %36, align 8
  %38 = icmp ne %struct.ref* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %41 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %40, i32 0, i32 0
  %42 = load %struct.ref*, %struct.ref** %41, align 8
  %43 = load %struct.ref*, %struct.ref** %6, align 8
  %44 = call i32 @handle_duplicate(%struct.ref* %42, %struct.ref* %43)
  br label %53

45:                                               ; preds = %28
  %46 = load %struct.ref*, %struct.ref** %6, align 8
  %47 = load %struct.ref**, %struct.ref*** %5, align 8
  store %struct.ref* %46, %struct.ref** %47, align 8
  %48 = load %struct.ref*, %struct.ref** %6, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 0
  store %struct.ref** %49, %struct.ref*** %5, align 8
  %50 = load %struct.ref*, %struct.ref** %6, align 8
  %51 = load %struct.string_list_item*, %struct.string_list_item** %7, align 8
  %52 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %51, i32 0, i32 0
  store %struct.ref* %50, %struct.ref** %52, align 8
  br label %53

53:                                               ; preds = %45, %39
  br label %54

54:                                               ; preds = %53, %23
  br label %9

55:                                               ; preds = %9
  %56 = call i32 @string_list_clear(%struct.string_list* %3, i32 0)
  %57 = load %struct.ref*, %struct.ref** %4, align 8
  ret %struct.ref* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #2

declare dso_local i32 @handle_duplicate(%struct.ref*, %struct.ref*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
