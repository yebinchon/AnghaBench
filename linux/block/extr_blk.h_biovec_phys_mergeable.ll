; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk.h_biovec_phys_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk.h_biovec_phys_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio_vec = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio_vec*, %struct.bio_vec*)* @biovec_phys_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @biovec_phys_mergeable(%struct.request_queue* %0, %struct.bio_vec* %1, %struct.bio_vec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.bio_vec*, align 8
  %7 = alloca %struct.bio_vec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %6, align 8
  store %struct.bio_vec* %2, %struct.bio_vec** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = call i64 @queue_segment_boundary(%struct.request_queue* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %14 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @page_to_phys(i32 %15)
  %17 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @page_to_phys(i32 %23)
  %25 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %26 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %31 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %29, %32
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

37:                                               ; preds = %3
  %38 = call i64 (...) @xen_domain()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.bio_vec*, %struct.bio_vec** %6, align 8
  %42 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %43 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @xen_biovec_phys_mergeable(%struct.bio_vec* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

48:                                               ; preds = %40, %37
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = or i64 %49, %50
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.bio_vec*, %struct.bio_vec** %7, align 8
  %54 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = sub i64 %56, 1
  %58 = load i64, i64* %8, align 8
  %59 = or i64 %57, %58
  %60 = icmp ne i64 %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %47, %36
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @queue_segment_boundary(%struct.request_queue*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i64 @xen_domain(...) #1

declare dso_local i32 @xen_biovec_phys_mergeable(%struct.bio_vec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
