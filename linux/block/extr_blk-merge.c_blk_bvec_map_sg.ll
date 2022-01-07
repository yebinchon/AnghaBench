; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bvec_map_sg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bvec_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.scatterlist = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, %struct.scatterlist*, %struct.scatterlist**)* @blk_bvec_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_bvec_map_sg(%struct.request_queue* %0, %struct.bio_vec* %1, %struct.scatterlist* %2, %struct.scatterlist** %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store %struct.scatterlist** %3, %struct.scatterlist*** %8, align 8
  %15 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %21, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %18
  %22 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %23 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @get_max_segment_size(%struct.request_queue* %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %33 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %32, i32 0, i32 2
  %34 = load %struct.page*, %struct.page** %33, align 8
  store %struct.page* %34, %struct.page** %14, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PAGE_SHIFT, align 4
  %37 = lshr i32 %35, %36
  %38 = load %struct.page*, %struct.page** %14, align 8
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds %struct.page, %struct.page* %38, i64 %39
  store %struct.page* %40, %struct.page** %14, align 8
  %41 = load i32, i32* @PAGE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %47 = call %struct.scatterlist* @blk_next_sg(%struct.scatterlist** %45, %struct.scatterlist* %46)
  %48 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  store %struct.scatterlist* %47, %struct.scatterlist** %48, align 8
  %49 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %49, align 8
  %51 = load %struct.page*, %struct.page** %14, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @sg_set_page(%struct.scatterlist* %50, %struct.page* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @get_max_segment_size(%struct.request_queue*, i32) #1

declare dso_local %struct.scatterlist* @blk_next_sg(%struct.scatterlist**, %struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
