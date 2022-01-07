; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_fetch_finish.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_fetch_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule_parallel_fetch = type { i32, i32, %struct.fetch_task**, i32, i32 }
%struct.fetch_task = type { %struct.oid_array*, i32, %struct.TYPE_2__* }
%struct.oid_array = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.string_list_item = type { %struct.oid_array* }

@.str = private unnamed_addr constant [22 x i8] c"callback cookie bogus\00", align 1
@commit_missing_in_sub = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.strbuf*, i8*, i8*)* @fetch_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_finish(i32 %0, %struct.strbuf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.submodule_parallel_fetch*, align 8
  %11 = alloca %struct.fetch_task*, align 8
  %12 = alloca %struct.string_list_item*, align 8
  %13 = alloca %struct.oid_array*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.submodule_parallel_fetch*
  store %struct.submodule_parallel_fetch* %15, %struct.submodule_parallel_fetch** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.fetch_task*
  store %struct.fetch_task* %17, %struct.fetch_task** %11, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %22 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %4
  %24 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %25 = icmp ne %struct.fetch_task* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %28 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %23
  %32 = call i32 @BUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %35 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %34, i32 0, i32 0
  %36 = load %struct.oid_array*, %struct.oid_array** %35, align 8
  %37 = icmp ne %struct.oid_array* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %94

39:                                               ; preds = %33
  %40 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %41 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %40, i32 0, i32 4
  %42 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %43 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.string_list_item* @string_list_lookup(i32* %41, i32 %46)
  store %struct.string_list_item* %47, %struct.string_list_item** %12, align 8
  %48 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %49 = icmp ne %struct.string_list_item* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  br label %94

51:                                               ; preds = %39
  %52 = load %struct.string_list_item*, %struct.string_list_item** %12, align 8
  %53 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %52, i32 0, i32 0
  %54 = load %struct.oid_array*, %struct.oid_array** %53, align 8
  store %struct.oid_array* %54, %struct.oid_array** %13, align 8
  %55 = load %struct.oid_array*, %struct.oid_array** %13, align 8
  %56 = load i32, i32* @commit_missing_in_sub, align 4
  %57 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %58 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @oid_array_filter(%struct.oid_array* %55, i32 %56, i32 %59)
  %61 = load %struct.oid_array*, %struct.oid_array** %13, align 8
  %62 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %51
  %66 = load %struct.oid_array*, %struct.oid_array** %13, align 8
  %67 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %68 = getelementptr inbounds %struct.fetch_task, %struct.fetch_task* %67, i32 0, i32 0
  store %struct.oid_array* %66, %struct.oid_array** %68, align 8
  %69 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %70 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %69, i32 0, i32 2
  %71 = load %struct.fetch_task**, %struct.fetch_task*** %70, align 8
  %72 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %73 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %77 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ALLOC_GROW(%struct.fetch_task** %71, i32 %75, i32 %78)
  %80 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %81 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %82 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %81, i32 0, i32 2
  %83 = load %struct.fetch_task**, %struct.fetch_task*** %82, align 8
  %84 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %85 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.fetch_task*, %struct.fetch_task** %83, i64 %87
  store %struct.fetch_task* %80, %struct.fetch_task** %88, align 8
  %89 = load %struct.submodule_parallel_fetch*, %struct.submodule_parallel_fetch** %10, align 8
  %90 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %97

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93, %50, %38
  %95 = load %struct.fetch_task*, %struct.fetch_task** %11, align 8
  %96 = call i32 @fetch_task_release(%struct.fetch_task* %95)
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %65
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.string_list_item* @string_list_lookup(i32*, i32) #1

declare dso_local i32 @oid_array_filter(%struct.oid_array*, i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.fetch_task**, i32, i32) #1

declare dso_local i32 @fetch_task_release(%struct.fetch_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
