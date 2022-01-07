; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_load_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_load_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_item = type { i64, i64, i64, i64, i64* }

@.str = private unnamed_addr constant [16 x i8] c"loading item...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_item(%struct.index_item* %0) #0 {
  %2 = alloca %struct.index_item*, align 8
  %3 = alloca i32, align 4
  store %struct.index_item* %0, %struct.index_item** %2, align 8
  %4 = call i32 @vkprintf(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.index_item*, %struct.index_item** %2, align 8
  %6 = getelementptr inbounds %struct.index_item, %struct.index_item* %5, i32 0, i32 0
  %7 = call i32 @bread(i64* %6, i32 8)
  %8 = load %struct.index_item*, %struct.index_item** %2, align 8
  %9 = getelementptr inbounds %struct.index_item, %struct.index_item* %8, i32 0, i32 1
  %10 = call i32 @bread(i64* %9, i32 2)
  %11 = load %struct.index_item*, %struct.index_item** %2, align 8
  %12 = getelementptr inbounds %struct.index_item, %struct.index_item* %11, i32 0, i32 2
  %13 = call i32 @bread(i64* %12, i32 1)
  %14 = load %struct.index_item*, %struct.index_item** %2, align 8
  %15 = getelementptr inbounds %struct.index_item, %struct.index_item* %14, i32 0, i32 3
  %16 = call i32 @bread(i64* %15, i32 1)
  %17 = load %struct.index_item*, %struct.index_item** %2, align 8
  %18 = getelementptr inbounds %struct.index_item, %struct.index_item* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64* @zmalloc(i32 %24)
  %26 = load %struct.index_item*, %struct.index_item** %2, align 8
  %27 = getelementptr inbounds %struct.index_item, %struct.index_item* %26, i32 0, i32 4
  store i64* %25, i64** %27, align 8
  %28 = load %struct.index_item*, %struct.index_item** %2, align 8
  %29 = getelementptr inbounds %struct.index_item, %struct.index_item* %28, i32 0, i32 4
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @bread(i64* %30, i32 %31)
  %33 = load %struct.index_item*, %struct.index_item** %2, align 8
  %34 = getelementptr inbounds %struct.index_item, %struct.index_item* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @popcount_short(i64 %35)
  %37 = load %struct.index_item*, %struct.index_item** %2, align 8
  %38 = getelementptr inbounds %struct.index_item, %struct.index_item* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 12
  ret i32 %44
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @bread(i64*, i32) #1

declare dso_local i64* @zmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @popcount_short(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
