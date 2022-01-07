; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_get_list_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_get_list_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@metafile_mode = common dso_local global i64 0, align 8
@SUBCATS = common dso_local global i32 0, align 4
@M_tot_entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_list_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @metafile_mode, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @prepare_list_metafile(i32 %10, i32 1)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -2, i32* %3, align 4
  br label %37

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_6__* @__get_list_f(i32 %15, i32 2)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %37

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = call i32 @unpack_metafile_pointers(%struct.TYPE_6__* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SUBCATS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @metafile_get_sublist_size(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load i32, i32* @M_tot_entries, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %26, %19, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local %struct.TYPE_6__* @__get_list_f(i32, i32) #1

declare dso_local i32 @unpack_metafile_pointers(%struct.TYPE_6__*) #1

declare dso_local i32 @metafile_get_sublist_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
