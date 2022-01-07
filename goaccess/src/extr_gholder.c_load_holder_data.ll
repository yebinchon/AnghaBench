; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_gholder.c_load_holder_data.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_gholder.c_load_holder_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_holder_data(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = call i32 (...) @get_max_choices()
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_12__* @panel_lookup(i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @new_gholder_item(i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %69, %26
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32 (i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*)** %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %68 = call i32 %55(i32 %62, %struct.TYPE_13__* %63, i32 %66, %struct.TYPE_12__* %67)
  br label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @sort_holder_items(i32 %75, i64 %78, i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sort_sub_list(%struct.TYPE_13__* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %72
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i32 @free_raw_data(%struct.TYPE_11__* %90)
  ret void
}

declare dso_local i32 @get_max_choices(...) #1

declare dso_local %struct.TYPE_12__* @panel_lookup(i32) #1

declare dso_local i32 @new_gholder_item(i32) #1

declare dso_local i32 @sort_holder_items(i32, i64, i32) #1

declare dso_local i32 @sort_sub_list(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free_raw_data(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
