; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_load_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_load_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_item = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"loading item...\00", align 1
@idx_items_with_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_item(%struct.index_item* %0) #0 {
  %2 = alloca %struct.index_item*, align 8
  %3 = alloca i32, align 4
  store %struct.index_item* %0, %struct.index_item** %2, align 8
  %4 = call i32 @vkprintf(i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.index_item*, %struct.index_item** %2, align 8
  %6 = getelementptr inbounds %struct.index_item, %struct.index_item* %5, i32 0, i32 0
  %7 = call i32 @bread(i32* %6, i32 8)
  %8 = load %struct.index_item*, %struct.index_item** %2, align 8
  %9 = getelementptr inbounds %struct.index_item, %struct.index_item* %8, i32 0, i32 1
  %10 = call i32 @bread(i32* %9, i32 2)
  %11 = load %struct.index_item*, %struct.index_item** %2, align 8
  %12 = getelementptr inbounds %struct.index_item, %struct.index_item* %11, i32 0, i32 2
  %13 = call i32 @bread(i32* %12, i32 1)
  %14 = load %struct.index_item*, %struct.index_item** %2, align 8
  %15 = getelementptr inbounds %struct.index_item, %struct.index_item* %14, i32 0, i32 3
  %16 = call i32 @bread(i32* %15, i32 1)
  %17 = load %struct.index_item*, %struct.index_item** %2, align 8
  %18 = getelementptr inbounds %struct.index_item, %struct.index_item* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32* @zmalloc(i32 %23)
  %25 = load %struct.index_item*, %struct.index_item** %2, align 8
  %26 = getelementptr inbounds %struct.index_item, %struct.index_item* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load %struct.index_item*, %struct.index_item** %2, align 8
  %28 = getelementptr inbounds %struct.index_item, %struct.index_item* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @bread(i32* %29, i32 %30)
  %32 = load %struct.index_item*, %struct.index_item** %2, align 8
  %33 = getelementptr inbounds %struct.index_item, %struct.index_item* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @popcount_short(i32 %34)
  %36 = load %struct.index_item*, %struct.index_item** %2, align 8
  %37 = getelementptr inbounds %struct.index_item, %struct.index_item* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %35, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.index_item*, %struct.index_item** %2, align 8
  %44 = getelementptr inbounds %struct.index_item, %struct.index_item* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 49152
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @idx_items_with_hash, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @idx_items_with_hash, align 4
  br label %51

51:                                               ; preds = %48, %1
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 12
  ret i32 %53
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @bread(i32*, i32) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @popcount_short(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
