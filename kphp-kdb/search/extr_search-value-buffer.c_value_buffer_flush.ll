; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_flush.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_buffer = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_buffer_flush(%struct.value_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value_buffer*, align 8
  store %struct.value_buffer* %0, %struct.value_buffer** %3, align 8
  %4 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %1
  %12 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = sub nsw i64 %18, %25
  %27 = call i32 @advance_write_ptr(i32* %15, i64 %26)
  %28 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %29 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i64 @get_write_ptr(i32* %31, i32 512)
  %33 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %51

40:                                               ; preds = %11
  %41 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %42 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.value_buffer*, %struct.value_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %40, %1
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @advance_write_ptr(i32*, i64) #1

declare dso_local i64 @get_write_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
