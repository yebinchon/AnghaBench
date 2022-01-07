; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_append_unsafe.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_append_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_set_append_unsafe(%struct.range_set* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.range_set*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.range_set* %0, %struct.range_set** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.range_set*, %struct.range_set** %4, align 8
  %13 = call i32 @range_set_grow(%struct.range_set* %12, i32 1)
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.range_set*, %struct.range_set** %4, align 8
  %16 = getelementptr inbounds %struct.range_set, %struct.range_set* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.range_set*, %struct.range_set** %4, align 8
  %19 = getelementptr inbounds %struct.range_set, %struct.range_set* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %14, i64* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.range_set*, %struct.range_set** %4, align 8
  %25 = getelementptr inbounds %struct.range_set, %struct.range_set* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.range_set*, %struct.range_set** %4, align 8
  %28 = getelementptr inbounds %struct.range_set, %struct.range_set* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 %23, i64* %31, align 8
  %32 = load %struct.range_set*, %struct.range_set** %4, align 8
  %33 = getelementptr inbounds %struct.range_set, %struct.range_set* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @range_set_grow(%struct.range_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
