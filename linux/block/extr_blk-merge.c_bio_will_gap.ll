; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_bio_will_gap.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_bio_will_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { %struct.bio* }
%struct.bio = type { i32 }
%struct.bio_vec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.bio*, %struct.bio*)* @bio_will_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_will_gap(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2, %struct.bio* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.bio_vec, align 4
  %11 = alloca %struct.bio_vec, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store %struct.bio* %3, %struct.bio** %9, align 8
  %12 = load %struct.bio*, %struct.bio** %8, align 8
  %13 = call i32 @bio_has_data(%struct.bio* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %17 = call i32 @queue_virt_boundary(%struct.request_queue* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %53

20:                                               ; preds = %15
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = icmp ne %struct.request* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.request*, %struct.request** %7, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 0
  %26 = load %struct.bio*, %struct.bio** %25, align 8
  %27 = call i32 @bio_get_first_bvec(%struct.bio* %26, %struct.bio_vec* %10)
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.bio*, %struct.bio** %8, align 8
  %30 = call i32 @bio_get_first_bvec(%struct.bio* %29, %struct.bio_vec* %10)
  br label %31

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %35 = call i32 @queue_virt_boundary(%struct.request_queue* %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %53

39:                                               ; preds = %31
  %40 = load %struct.bio*, %struct.bio** %8, align 8
  %41 = call i32 @bio_get_last_bvec(%struct.bio* %40, %struct.bio_vec* %10)
  %42 = load %struct.bio*, %struct.bio** %9, align 8
  %43 = call i32 @bio_get_first_bvec(%struct.bio* %42, %struct.bio_vec* %11)
  %44 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %45 = call i64 @biovec_phys_mergeable(%struct.request_queue* %44, %struct.bio_vec* %10, %struct.bio_vec* %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %50 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__bvec_gap_to_prev(%struct.request_queue* %49, %struct.bio_vec* %10, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %47, %38, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @bio_has_data(%struct.bio*) #1

declare dso_local i32 @queue_virt_boundary(%struct.request_queue*) #1

declare dso_local i32 @bio_get_first_bvec(%struct.bio*, %struct.bio_vec*) #1

declare dso_local i32 @bio_get_last_bvec(%struct.bio*, %struct.bio_vec*) #1

declare dso_local i64 @biovec_phys_mergeable(%struct.request_queue*, %struct.bio_vec*, %struct.bio_vec*) #1

declare dso_local i32 @__bvec_gap_to_prev(%struct.request_queue*, %struct.bio_vec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
