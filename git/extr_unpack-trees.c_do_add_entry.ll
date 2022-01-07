; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_do_add_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_do_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpack_trees_options = type { i32 }
%struct.cache_entry = type { i32 }

@CE_HASHED = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@CE_WT_REMOVE = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32)* @do_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_add_entry(%struct.unpack_trees_options* %0, %struct.cache_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @CE_HASHED, align 4
  %10 = load i32, i32* %8, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @CE_REMOVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @CE_WT_REMOVE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %4
  %21 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %32 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %31, i32 0, i32 0
  %33 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %34 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %35 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @add_index_entry(i32* %32, %struct.cache_entry* %33, i32 %36)
  ret i32 %37
}

declare dso_local i32 @add_index_entry(i32*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
