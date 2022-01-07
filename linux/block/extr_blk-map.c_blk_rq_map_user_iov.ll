; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-map.c_blk_rq_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-map.c_blk_rq_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.request = type { %struct.bio*, i32 }
%struct.bio = type { i32 }
%struct.rq_map_data = type { i32 }
%struct.iov_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BIO_USER_MAPPED = common dso_local global i32 0, align 4
@RQF_COPY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_map_user_iov(%struct.request_queue* %0, %struct.request* %1, %struct.rq_map_data* %2, %struct.iov_iter* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.rq_map_data*, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bio*, align 8
  %15 = alloca %struct.iov_iter, align 4
  %16 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.request* %1, %struct.request** %8, align 8
  store %struct.rq_map_data* %2, %struct.rq_map_data** %9, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %21 = call i64 @queue_dma_alignment(%struct.request_queue* %20)
  %22 = or i64 %19, %21
  store i64 %22, i64* %13, align 8
  store %struct.bio* null, %struct.bio** %14, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %26 = call i32 @iter_is_iovec(%struct.iov_iter* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %91

29:                                               ; preds = %5
  %30 = load %struct.rq_map_data*, %struct.rq_map_data** %9, align 8
  %31 = icmp ne %struct.rq_map_data* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %52

33:                                               ; preds = %29
  %34 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %35 = call i64 @iov_iter_alignment(%struct.iov_iter* %34)
  %36 = load i64, i64* %13, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %42 = call i32 @queue_virt_boundary(%struct.request_queue* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %46 = call i32 @queue_virt_boundary(%struct.request_queue* %45)
  %47 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %48 = call i32 @iov_iter_gap_alignment(%struct.iov_iter* %47)
  %49 = and i32 %46, %48
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %44, %40
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %54 = bitcast %struct.iov_iter* %15 to i8*
  %55 = bitcast %struct.iov_iter* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  br label %56

56:                                               ; preds = %73, %52
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = load %struct.rq_map_data*, %struct.rq_map_data** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @__blk_rq_map_user_iov(%struct.request* %57, %struct.rq_map_data* %58, %struct.iov_iter* %15, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %88

65:                                               ; preds = %56
  %66 = load %struct.bio*, %struct.bio** %14, align 8
  %67 = icmp ne %struct.bio* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.request*, %struct.request** %8, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 0
  %71 = load %struct.bio*, %struct.bio** %70, align 8
  store %struct.bio* %71, %struct.bio** %14, align 8
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72
  %74 = call i64 @iov_iter_count(%struct.iov_iter* %15)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %56, label %76

76:                                               ; preds = %73
  %77 = load %struct.bio*, %struct.bio** %14, align 8
  %78 = load i32, i32* @BIO_USER_MAPPED, align 4
  %79 = call i32 @bio_flagged(%struct.bio* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @RQF_COPY_USER, align 4
  %83 = load %struct.request*, %struct.request** %8, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %76
  store i32 0, i32* %6, align 4
  br label %95

88:                                               ; preds = %64
  %89 = load %struct.bio*, %struct.bio** %14, align 8
  %90 = call i32 @__blk_rq_unmap_user(%struct.bio* %89)
  br label %91

91:                                               ; preds = %88, %28
  %92 = load %struct.request*, %struct.request** %8, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %93, align 8
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local i32 @iter_is_iovec(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_alignment(%struct.iov_iter*) #1

declare dso_local i32 @queue_virt_boundary(%struct.request_queue*) #1

declare dso_local i32 @iov_iter_gap_alignment(%struct.iov_iter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__blk_rq_map_user_iov(%struct.request*, %struct.rq_map_data*, %struct.iov_iter*, i32, i32) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @__blk_rq_unmap_user(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
