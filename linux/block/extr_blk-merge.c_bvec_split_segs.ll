; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_bvec_split_segs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_bvec_split_segs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, i32*, i32*, i32, i32)* @bvec_split_segs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bvec_split_segs(%struct.request_queue* %0, %struct.bio_vec* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @UINT_MAX, align 4
  %19 = ashr i32 %18, 9
  %20 = call i32 @min(i32 %17, i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %20, %22
  %24 = shl i32 %23, 9
  store i32 %24, i32* %13, align 4
  %25 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %70, %6
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ult i32 %35, %36
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %40, label %71

40:                                               ; preds = %38
  %41 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %42 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %43 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %15, align 4
  %46 = add i32 %44, %45
  %47 = call i32 @get_max_segment_size(%struct.request_queue* %41, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %14, align 4
  %60 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %61 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %66 = call i32 @queue_virt_boundary(%struct.request_queue* %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %40
  br label %71

70:                                               ; preds = %40
  br label %30

71:                                               ; preds = %69, %38
  %72 = load i32, i32* %15, align 4
  %73 = lshr i32 %72, 9
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ugt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %81 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ugt i32 %82, %83
  br label %85

85:                                               ; preds = %79, %71
  %86 = phi i1 [ true, %71 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  ret i32 %87
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @get_max_segment_size(%struct.request_queue*, i32) #1

declare dso_local i32 @queue_virt_boundary(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
