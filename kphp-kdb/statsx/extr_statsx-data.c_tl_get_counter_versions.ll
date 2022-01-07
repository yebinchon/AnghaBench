; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_get_counter_versions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_get_counter_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, i32 }

@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_get_counter_versions(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.counter*, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @load_counter(i64 %6, i32 0, i32 1)
  %8 = icmp eq i32 %7, -2
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.counter* @get_counter_f(i64 %11, i32 0)
  store %struct.counter* %12, %struct.counter** %4, align 8
  %13 = load %struct.counter*, %struct.counter** %4, align 8
  %14 = icmp ne %struct.counter* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %17 = call i32 @tl_store_int(i32 %16)
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %10
  %19 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %20 = call i32 @tl_store_int(i32 %19)
  %21 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %26, %18
  %24 = load %struct.counter*, %struct.counter** %4, align 8
  %25 = icmp ne %struct.counter* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.counter*, %struct.counter** %4, align 8
  %28 = getelementptr inbounds %struct.counter, %struct.counter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tl_store_int(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.counter*, %struct.counter** %4, align 8
  %35 = getelementptr inbounds %struct.counter, %struct.counter* %34, i32 0, i32 0
  %36 = load %struct.counter*, %struct.counter** %35, align 8
  store %struct.counter* %36, %struct.counter** %4, align 8
  br label %23

37:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %15, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @load_counter(i64, i32, i32) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
