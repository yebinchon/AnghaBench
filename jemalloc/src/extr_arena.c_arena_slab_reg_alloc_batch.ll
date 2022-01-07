; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_slab_reg_alloc_batch.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_arena.c_arena_slab_reg_alloc_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64* }

@LG_BITMAP_GROUP_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, i8**)* @arena_slab_reg_alloc_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_slab_reg_alloc_batch(i32* %0, %struct.TYPE_6__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_5__* @extent_slab_data_get(i32* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @extent_nfree_get(i32* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = call i32 @bitmap_full(i64* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %54, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i64 @bitmap_sfu(i64* %37, i32* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @extent_addr_get(i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = mul i64 %45, %46
  %48 = add i64 %42, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load i8**, i8*** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %49, i8** %53, align 8
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @extent_nfree_sub(i32* %58, i32 %59)
  ret void
}

declare dso_local %struct.TYPE_5__* @extent_slab_data_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extent_nfree_get(i32*) #1

declare dso_local i32 @bitmap_full(i64*, i32*) #1

declare dso_local i64 @bitmap_sfu(i64*, i32*) #1

declare dso_local i64 @extent_addr_get(i32*) #1

declare dso_local i32 @extent_nfree_sub(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
