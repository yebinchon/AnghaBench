; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_ce_used.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_mark_ce_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.cache_entry** }

@CE_UNPACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, %struct.unpack_trees_options*)* @mark_ce_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ce_used(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %6 = load i32, i32* @CE_UNPACKED, align 4
  %7 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %12 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %2
  %21 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %22 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.cache_entry**, %struct.cache_entry*** %24, align 8
  %26 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %27 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %25, i64 %28
  %30 = load %struct.cache_entry*, %struct.cache_entry** %29, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %32 = icmp eq %struct.cache_entry* %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %20
  %34 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %35 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %64, %33
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %42 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %49 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.cache_entry**, %struct.cache_entry*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %52, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CE_UNPACKED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %47, %38
  %63 = phi i1 [ false, %38 ], [ %61, %47 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %38

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %71 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %67, %20, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
