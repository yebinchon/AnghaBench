; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_release.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i64, %struct.list_objects_filter_options*, %struct.list_objects_filter_options*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_objects_filter_release(%struct.list_objects_filter_options* %0) #0 {
  %2 = alloca %struct.list_objects_filter_options*, align 8
  %3 = alloca i64, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %2, align 8
  %4 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %5 = icmp ne %struct.list_objects_filter_options* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %37

7:                                                ; preds = %1
  %8 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %9 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %8, i32 0, i32 3
  %10 = call i32 @string_list_clear(i32* %9, i32 0)
  %11 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %12 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %11, i32 0, i32 2
  %13 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %12, align 8
  %14 = call i32 @free(%struct.list_objects_filter_options* %13)
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %27, %7
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %18 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %23 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %22, i32 0, i32 1
  %24 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %24, i64 %25
  call void @list_objects_filter_release(%struct.list_objects_filter_options* %26)
  br label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %32 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %31, i32 0, i32 1
  %33 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %32, align 8
  %34 = call i32 @free(%struct.list_objects_filter_options* %33)
  %35 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %36 = call i32 @memset(%struct.list_objects_filter_options* %35, i32 0, i32 32)
  br label %37

37:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @string_list_clear(i32*, i32) #1

declare dso_local i32 @free(%struct.list_objects_filter_options*) #1

declare dso_local i32 @memset(%struct.list_objects_filter_options*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
