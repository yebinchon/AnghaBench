; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_hash_item_unsafe.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_hash_item_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_hash_item_unsafe(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %2, align 8
  %3 = load %struct.item*, %struct.item** %2, align 8
  %4 = getelementptr inbounds %struct.item, %struct.item* %3, i32 0, i32 1
  %5 = load i64*, i64** %4, align 8
  %6 = load %struct.item*, %struct.item** %2, align 8
  %7 = getelementptr inbounds %struct.item, %struct.item* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %5, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = shl i64 %12, 32
  %14 = load %struct.item*, %struct.item** %2, align 8
  %15 = getelementptr inbounds %struct.item, %struct.item* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.item*, %struct.item** %2, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = zext i32 %24 to i64
  %26 = or i64 %13, %25
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
