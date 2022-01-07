; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_hashmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_hashmap = type { i32, i32, i32, i64 }

@TL_MIN_HASHMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_hashmap* @tl_hashmap_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_hashmap*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TL_MIN_HASHMAP_SIZE, align 4
  %6 = icmp sge i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = call %struct.tl_hashmap* @zmalloc(i32 24)
  store %struct.tl_hashmap* %9, %struct.tl_hashmap** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @get_hashtable_size(i32 %10)
  %12 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  %13 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  %15 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  %18 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  %20 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @tl_zzmalloc0(i32 %24)
  %26 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  %27 = getelementptr inbounds %struct.tl_hashmap, %struct.tl_hashmap* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.tl_hashmap*, %struct.tl_hashmap** %3, align 8
  ret %struct.tl_hashmap* %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tl_hashmap* @zmalloc(i32) #1

declare dso_local i32 @get_hashtable_size(i32) #1

declare dso_local i32 @tl_zzmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
