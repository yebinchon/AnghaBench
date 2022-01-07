; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_load_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_load_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"loading item...\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_item(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  %3 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %2, align 8
  %4 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.item*, %struct.item** %2, align 8
  %6 = getelementptr inbounds %struct.item, %struct.item* %5, i32 0, i32 0
  %7 = call i32 @bread(i32* %6, i32 8)
  %8 = load %struct.item*, %struct.item** %2, align 8
  %9 = getelementptr inbounds %struct.item, %struct.item* %8, i32 0, i32 1
  %10 = call i32 @bread(i32* %9, i32 2)
  %11 = load %struct.item*, %struct.item** %2, align 8
  %12 = getelementptr inbounds %struct.item, %struct.item* %11, i32 0, i32 2
  %13 = call i32 @bread(i32* %12, i32 1)
  %14 = load %struct.item*, %struct.item** %2, align 8
  %15 = getelementptr inbounds %struct.item, %struct.item* %14, i32 0, i32 3
  %16 = call i32 @bread(i32* %15, i32 1)
  %17 = load %struct.item*, %struct.item** %2, align 8
  %18 = getelementptr inbounds %struct.item, %struct.item* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 4, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @zzmalloc(i32 %21)
  %23 = load %struct.item*, %struct.item** %2, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.item*, %struct.item** %2, align 8
  %26 = getelementptr inbounds %struct.item, %struct.item* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @bread(i32* %27, i32 %28)
  %30 = load %struct.item*, %struct.item** %2, align 8
  %31 = getelementptr inbounds %struct.item, %struct.item* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @popcount_short(i32 %32)
  %34 = load %struct.item*, %struct.item** %2, align 8
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 12
  ret i32 %41
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @bread(i32*, i32) #1

declare dso_local i32* @zzmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @popcount_short(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
