; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_traverse_bitmap_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_traverse_bitmap_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32, i32, i32, i32, i32 }

@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverse_bitmap_commit_list(%struct.bitmap_index* %0, i32 %1) #0 {
  %3 = alloca %struct.bitmap_index*, align 8
  %4 = alloca i32, align 4
  store %struct.bitmap_index* %0, %struct.bitmap_index** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %6 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %10 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %11 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OBJ_COMMIT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @show_objects_for_type(%struct.bitmap_index* %9, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %17 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %18 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @OBJ_TREE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @show_objects_for_type(%struct.bitmap_index* %16, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %24 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %25 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @OBJ_BLOB, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @show_objects_for_type(%struct.bitmap_index* %23, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %31 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %32 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OBJ_TAG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @show_objects_for_type(%struct.bitmap_index* %30, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.bitmap_index*, %struct.bitmap_index** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @show_extended_objects(%struct.bitmap_index* %37, i32 %38)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @show_objects_for_type(%struct.bitmap_index*, i32, i32, i32) #1

declare dso_local i32 @show_extended_objects(%struct.bitmap_index*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
