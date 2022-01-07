; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine__init.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_combine__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32, i32* }
%struct.filter = type { i32, i32, i32, %struct.combine_filter_data*, i64 }
%struct.combine_filter_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@filter_combine = common dso_local global i32 0, align 4
@filter_combine__free = common dso_local global i32 0, align 4
@filter_combine__finalize_omits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_objects_filter_options*, %struct.filter*)* @filter_combine__init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_combine__init(%struct.list_objects_filter_options* %0, %struct.filter* %1) #0 {
  %3 = alloca %struct.list_objects_filter_options*, align 8
  %4 = alloca %struct.filter*, align 8
  %5 = alloca %struct.combine_filter_data*, align 8
  %6 = alloca i64, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %3, align 8
  store %struct.filter* %1, %struct.filter** %4, align 8
  %7 = call i8* @xcalloc(i32 1, i32 16)
  %8 = bitcast i8* %7 to %struct.combine_filter_data*
  store %struct.combine_filter_data* %8, %struct.combine_filter_data** %5, align 8
  %9 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %10 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %13 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %15 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @xcalloc(i32 %16, i32 8)
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  %19 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %20 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %19, i32 0, i32 1
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %20, align 8
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %55, %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %24 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %21
  %29 = load %struct.filter*, %struct.filter** %4, align 8
  %30 = getelementptr inbounds %struct.filter, %struct.filter* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %35 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  br label %41

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32* [ %39, %33 ], [ null, %40 ]
  %43 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %44 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 @list_objects_filter__init(i32* %42, i32* %47)
  %49 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %50 = getelementptr inbounds %struct.combine_filter_data, %struct.combine_filter_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %48, i32* %54, align 4
  br label %55

55:                                               ; preds = %41
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %21

58:                                               ; preds = %21
  %59 = load %struct.combine_filter_data*, %struct.combine_filter_data** %5, align 8
  %60 = load %struct.filter*, %struct.filter** %4, align 8
  %61 = getelementptr inbounds %struct.filter, %struct.filter* %60, i32 0, i32 3
  store %struct.combine_filter_data* %59, %struct.combine_filter_data** %61, align 8
  %62 = load i32, i32* @filter_combine, align 4
  %63 = load %struct.filter*, %struct.filter** %4, align 8
  %64 = getelementptr inbounds %struct.filter, %struct.filter* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @filter_combine__free, align 4
  %66 = load %struct.filter*, %struct.filter** %4, align 8
  %67 = getelementptr inbounds %struct.filter, %struct.filter* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @filter_combine__finalize_omits, align 4
  %69 = load %struct.filter*, %struct.filter** %4, align 8
  %70 = getelementptr inbounds %struct.filter, %struct.filter* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  ret void
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @list_objects_filter__init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
