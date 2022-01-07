; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c___bio_add_pc_page.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c___bio_add_pc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { i32, %struct.TYPE_2__, %struct.bio_vec* }
%struct.TYPE_2__ = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@BIO_CLONED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32, i32*)* @__bio_add_pc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bio_add_pc_page(%struct.request_queue* %0, %struct.bio* %1, %struct.page* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bio_vec*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %8, align 8
  store %struct.bio* %1, %struct.bio** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load %struct.bio*, %struct.bio** %9, align 8
  %16 = load i32, i32* @BIO_CLONED, align 4
  %17 = call i32 @bio_flagged(%struct.bio* %15, i32 %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %109

21:                                               ; preds = %6
  %22 = load %struct.bio*, %struct.bio** %9, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = add i32 %25, %26
  %28 = lshr i32 %27, 9
  %29 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %30 = call i32 @queue_max_hw_sectors(%struct.request_queue* %29)
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %109

33:                                               ; preds = %21
  %34 = load %struct.bio*, %struct.bio** %9, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @bio_try_merge_pc_page(%struct.request_queue* %39, %struct.bio* %40, %struct.page* %41, i32 %42, i32 %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %7, align 4
  br label %109

49:                                               ; preds = %38
  %50 = load %struct.bio*, %struct.bio** %9, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 2
  %52 = load %struct.bio_vec*, %struct.bio_vec** %51, align 8
  %53 = load %struct.bio*, %struct.bio** %9, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %52, i64 %57
  store %struct.bio_vec* %58, %struct.bio_vec** %14, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %60 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @bvec_gap_to_prev(%struct.request_queue* %59, %struct.bio_vec* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %109

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %33
  %67 = load %struct.bio*, %struct.bio** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @bio_full(%struct.bio* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %109

72:                                               ; preds = %66
  %73 = load %struct.bio*, %struct.bio** %9, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %77 = call i32 @queue_max_segments(%struct.request_queue* %76)
  %78 = icmp sge i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %109

80:                                               ; preds = %72
  %81 = load %struct.bio*, %struct.bio** %9, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  %83 = load %struct.bio_vec*, %struct.bio_vec** %82, align 8
  %84 = load %struct.bio*, %struct.bio** %9, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %83, i64 %87
  store %struct.bio_vec* %88, %struct.bio_vec** %14, align 8
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %91 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %90, i32 0, i32 2
  store %struct.page* %89, %struct.page** %91, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %94 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.bio_vec*, %struct.bio_vec** %14, align 8
  %97 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.bio*, %struct.bio** %9, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.bio*, %struct.bio** %9, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %80, %79, %71, %64, %47, %32, %20
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i64 @bio_try_merge_pc_page(%struct.request_queue*, %struct.bio*, %struct.page*, i32, i32, i32*) #1

declare dso_local i64 @bvec_gap_to_prev(%struct.request_queue*, %struct.bio_vec*, i32) #1

declare dso_local i64 @bio_full(%struct.bio*, i32) #1

declare dso_local i32 @queue_max_segments(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
