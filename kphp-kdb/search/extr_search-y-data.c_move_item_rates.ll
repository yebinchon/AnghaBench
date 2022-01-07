; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_move_item_rates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_move_item_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.index_item = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.index_item*)* @move_item_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_item_rates(%struct.TYPE_3__* %0, %struct.index_item* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.index_item*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.index_item* %1, %struct.index_item** %4, align 8
  %5 = load %struct.index_item*, %struct.index_item** %4, align 8
  %6 = getelementptr inbounds %struct.index_item, %struct.index_item* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 %7, i64* %9, align 8
  %10 = load %struct.index_item*, %struct.index_item** %4, align 8
  %11 = getelementptr inbounds %struct.index_item, %struct.index_item* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.index_item*, %struct.index_item** %4, align 8
  %16 = getelementptr inbounds %struct.index_item, %struct.index_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.index_item*, %struct.index_item** %4, align 8
  %21 = getelementptr inbounds %struct.index_item, %struct.index_item* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.index_item*, %struct.index_item** %4, align 8
  %23 = getelementptr inbounds %struct.index_item, %struct.index_item* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.index_item*, %struct.index_item** %4, align 8
  %25 = getelementptr inbounds %struct.index_item, %struct.index_item* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
