; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_radix_tree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_radix_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.radix_tree_root, %struct.radix_tree_root }
%struct.radix_tree_root = type { i32 }
%struct.nullb_page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_page* (%struct.nullb*, i64, %struct.nullb_page*, i32)* @null_radix_tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_page* @null_radix_tree_insert(%struct.nullb* %0, i64 %1, %struct.nullb_page* %2, i32 %3) #0 {
  %5 = alloca %struct.nullb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nullb_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radix_tree_root*, align 8
  store %struct.nullb* %0, %struct.nullb** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nullb_page* %2, %struct.nullb_page** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.nullb*, %struct.nullb** %5, align 8
  %14 = getelementptr inbounds %struct.nullb, %struct.nullb* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  br label %22

17:                                               ; preds = %4
  %18 = load %struct.nullb*, %struct.nullb** %5, align 8
  %19 = getelementptr inbounds %struct.nullb, %struct.nullb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi %struct.radix_tree_root* [ %16, %12 ], [ %21, %17 ]
  store %struct.radix_tree_root* %23, %struct.radix_tree_root** %9, align 8
  %24 = load %struct.radix_tree_root*, %struct.radix_tree_root** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %27 = call i64 @radix_tree_insert(%struct.radix_tree_root* %24, i64 %25, %struct.nullb_page* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %31 = call i32 @null_free_page(%struct.nullb_page* %30)
  %32 = load %struct.radix_tree_root*, %struct.radix_tree_root** %9, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.nullb_page* @radix_tree_lookup(%struct.radix_tree_root* %32, i64 %33)
  store %struct.nullb_page* %34, %struct.nullb_page** %7, align 8
  %35 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %36 = icmp ne %struct.nullb_page* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %39 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i1 [ true, %29 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  br label %63

49:                                               ; preds = %22
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load %struct.nullb*, %struct.nullb** %5, align 8
  %55 = getelementptr inbounds %struct.nullb, %struct.nullb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %53
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %52, %49
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  ret %struct.nullb_page* %64
}

declare dso_local i64 @radix_tree_insert(%struct.radix_tree_root*, i64, %struct.nullb_page*) #1

declare dso_local i32 @null_free_page(%struct.nullb_page*) #1

declare dso_local %struct.nullb_page* @radix_tree_lookup(%struct.radix_tree_root*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
