; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-map.c___blk_rq_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-map.c___blk_rq_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.rq_map_data = type { i32 }
%struct.iov_iter = type { i32 }
%struct.bio = type { i32 }

@REQ_OP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.rq_map_data*, %struct.iov_iter*, i32, i32)* @__blk_rq_map_user_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_rq_map_user_iov(%struct.request* %0, %struct.rq_map_data* %1, %struct.iov_iter* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.rq_map_data*, align 8
  %9 = alloca %struct.iov_iter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.request_queue*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %7, align 8
  store %struct.rq_map_data* %1, %struct.rq_map_data** %8, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.request*, %struct.request** %7, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %23 = load %struct.rq_map_data*, %struct.rq_map_data** %8, align 8
  %24 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.bio* @bio_copy_user_iov(%struct.request_queue* %22, %struct.rq_map_data* %23, %struct.iov_iter* %24, i32 %25)
  store %struct.bio* %26, %struct.bio** %13, align 8
  br label %32

27:                                               ; preds = %5
  %28 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.bio* @bio_map_user_iov(%struct.request_queue* %28, %struct.iov_iter* %29, i32 %30)
  store %struct.bio* %31, %struct.bio** %13, align 8
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.bio*, %struct.bio** %13, align 8
  %34 = call i64 @IS_ERR(%struct.bio* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.bio*, %struct.bio** %13, align 8
  %38 = call i32 @PTR_ERR(%struct.bio* %37)
  store i32 %38, i32* %6, align 4
  br label %64

39:                                               ; preds = %32
  %40 = load i32, i32* @REQ_OP_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.bio*, %struct.bio** %13, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = call i32 @req_op(%struct.request* %46)
  %48 = load %struct.bio*, %struct.bio** %13, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.bio*, %struct.bio** %13, align 8
  store %struct.bio* %52, %struct.bio** %14, align 8
  %53 = load %struct.request*, %struct.request** %7, align 8
  %54 = call i32 @blk_rq_append_bio(%struct.request* %53, %struct.bio** %13)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load %struct.bio*, %struct.bio** %14, align 8
  %59 = call i32 @__blk_rq_unmap_user(%struct.bio* %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %64

61:                                               ; preds = %39
  %62 = load %struct.bio*, %struct.bio** %13, align 8
  %63 = call i32 @bio_get(%struct.bio* %62)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %57, %36
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.bio* @bio_copy_user_iov(%struct.request_queue*, %struct.rq_map_data*, %struct.iov_iter*, i32) #1

declare dso_local %struct.bio* @bio_map_user_iov(%struct.request_queue*, %struct.iov_iter*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_append_bio(%struct.request*, %struct.bio**) #1

declare dso_local i32 @__blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
