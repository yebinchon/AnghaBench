; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_count_bitmap_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_count_bitmap_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32 }

@OBJ_COMMIT = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i32 0, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@OBJ_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @count_bitmap_commit_list(%struct.bitmap_index* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.bitmap_index*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %12 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %19 = load i32, i32* @OBJ_COMMIT, align 4
  %20 = call i32 @count_object_type(%struct.bitmap_index* %18, i32 %19)
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %5
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %27 = load i32, i32* @OBJ_TREE, align 4
  %28 = call i32 @count_object_type(%struct.bitmap_index* %26, i32 %27)
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %35 = load i32, i32* @OBJ_BLOB, align 4
  %36 = call i32 @count_object_type(%struct.bitmap_index* %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.bitmap_index*, %struct.bitmap_index** %6, align 8
  %43 = load i32, i32* @OBJ_TAG, align 4
  %44 = call i32 @count_object_type(%struct.bitmap_index* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @count_object_type(%struct.bitmap_index*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
