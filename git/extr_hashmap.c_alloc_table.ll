; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_alloc_table.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, i32, i32, i32 }

@HASHMAP_LOAD_FACTOR = common dso_local global i32 0, align 4
@HASHMAP_INITIAL_SIZE = common dso_local global i32 0, align 4
@HASHMAP_RESIZE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i32)* @alloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_table(%struct.hashmap* %0, i32 %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca i32, align 4
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %7 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @xcalloc(i32 %8, i32 8)
  %10 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %11 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @HASHMAP_LOAD_FACTOR, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 100
  %16 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %17 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HASHMAP_INITIAL_SIZE, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %23 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %22, i32 0, i32 2
  store i32 0, i32* %23, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %26 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HASHMAP_RESIZE_BITS, align 4
  %29 = shl i32 1, %28
  %30 = add nsw i32 %29, 1
  %31 = udiv i32 %27, %30
  %32 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %33 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
