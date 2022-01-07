; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_try_merge_pc_page.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_try_merge_pc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { i32, %struct.bio_vec* }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32, i32*)* @bio_try_merge_pc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_try_merge_pc_page(%struct.request_queue* %0, %struct.bio* %1, %struct.page* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bio_vec*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %8, align 8
  store %struct.bio* %1, %struct.bio** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.bio*, %struct.bio** %9, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load %struct.bio_vec*, %struct.bio_vec** %19, align 8
  %21 = load %struct.bio*, %struct.bio** %9, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %20, i64 %25
  store %struct.bio_vec* %26, %struct.bio_vec** %14, align 8
  %27 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %28 = call i64 @queue_segment_boundary(%struct.request_queue* %27)
  store i64 %28, i64* %15, align 8
  %29 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %30 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %29, i32 0, i32 2
  %31 = load %struct.page*, %struct.page** %30, align 8
  %32 = call i32 @page_to_phys(%struct.page* %31)
  %33 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %34 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add i32 %32, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %16, align 8
  %38 = load %struct.page*, %struct.page** %10, align 8
  %39 = call i32 @page_to_phys(%struct.page* %38)
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %41, %42
  %44 = sub i32 %43, 1
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* %15, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %15, align 8
  %51 = or i64 %49, %50
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %71

54:                                               ; preds = %6
  %55 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %56 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %57, %58
  %60 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %61 = call i32 @queue_max_segment_size(%struct.request_queue* %60)
  %62 = icmp ugt i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %71

64:                                               ; preds = %54
  %65 = load %struct.bio*, %struct.bio** %9, align 8
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @__bio_try_merge_page(%struct.bio* %65, %struct.page* %66, i32 %67, i32 %68, i32* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %64, %63, %53
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i64 @queue_segment_boundary(%struct.request_queue*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @queue_max_segment_size(%struct.request_queue*) #1

declare dso_local i32 @__bio_try_merge_page(%struct.bio*, %struct.page*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
