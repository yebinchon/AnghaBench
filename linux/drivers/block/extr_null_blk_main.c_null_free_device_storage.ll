; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_free_device_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_free_device_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_device = type { i64, %struct.radix_tree_root, %struct.radix_tree_root }
%struct.radix_tree_root = type { i32 }
%struct.nullb_page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FREE_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nullb_device*, i32)* @null_free_device_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_free_device_storage(%struct.nullb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.nullb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nullb_page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.radix_tree_root*, align 8
  %11 = alloca i32, align 4
  store %struct.nullb_device* %0, %struct.nullb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %12 = load i32, i32* @FREE_BATCH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.nullb_page*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %20 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %19, i32 0, i32 2
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %23 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %22, i32 0, i32 1
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi %struct.radix_tree_root* [ %20, %18 ], [ %23, %21 ]
  store %struct.radix_tree_root* %25, %struct.radix_tree_root** %10, align 8
  br label %26

26:                                               ; preds = %68, %24
  %27 = load %struct.radix_tree_root*, %struct.radix_tree_root** %10, align 8
  %28 = bitcast %struct.nullb_page** %15 to i8**
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @FREE_BATCH, align 4
  %31 = call i32 @radix_tree_gang_lookup(%struct.radix_tree_root* %27, i8** %28, i64 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %62, %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nullb_page*, %struct.nullb_page** %15, i64 %38
  %40 = load %struct.nullb_page*, %struct.nullb_page** %39, align 8
  %41 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  %45 = load %struct.radix_tree_root*, %struct.radix_tree_root** %10, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nullb_page*, %struct.nullb_page** %15, i64 %48
  %50 = load %struct.nullb_page*, %struct.nullb_page** %49, align 8
  %51 = call %struct.nullb_page* @radix_tree_delete_item(%struct.radix_tree_root* %45, i64 %46, %struct.nullb_page* %50)
  store %struct.nullb_page* %51, %struct.nullb_page** %7, align 8
  %52 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nullb_page*, %struct.nullb_page** %15, i64 %54
  %56 = load %struct.nullb_page*, %struct.nullb_page** %55, align 8
  %57 = icmp ne %struct.nullb_page* %52, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN_ON(i32 %58)
  %60 = load %struct.nullb_page*, %struct.nullb_page** %7, align 8
  %61 = call i32 @null_free_page(%struct.nullb_page* %60)
  br label %62

62:                                               ; preds = %36
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %32

65:                                               ; preds = %32
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @FREE_BATCH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %26, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.nullb_device*, %struct.nullb_device** %3, align 8
  %77 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @radix_tree_gang_lookup(%struct.radix_tree_root*, i8**, i64, i32) #2

declare dso_local %struct.nullb_page* @radix_tree_delete_item(%struct.radix_tree_root*, i64, %struct.nullb_page*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @null_free_page(%struct.nullb_page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
