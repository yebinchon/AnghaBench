; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-map.c_blk_rq_map_kern.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-map.c_blk_rq_map_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@REQ_OP_MASK = common dso_local global i32 0, align 4
@RQF_COPY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_map_kern(%struct.request_queue* %0, %struct.request* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bio*, align 8
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.request* %1, %struct.request** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.request*, %struct.request** %8, align 8
  %19 = call i64 @rq_data_dir(%struct.request* %18)
  %20 = load i64, i64* @READ, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = ptrtoint i8* %23 to i64
  store i64 %24, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %27 = call i32 @queue_max_hw_sectors(%struct.request_queue* %26)
  %28 = shl i32 %27, 9
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %110

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %110

42:                                               ; preds = %36
  %43 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @blk_rq_aligned(%struct.request_queue* %43, i64 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %9, align 8
  %50 = call i64 @object_is_on_stack(i8* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %48, %42
  %53 = phi i1 [ true, %42 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.bio* @bio_copy_kern(%struct.request_queue* %58, i8* %59, i32 %60, i32 %61, i32 %62)
  store %struct.bio* %63, %struct.bio** %15, align 8
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call %struct.bio* @bio_map_kern(%struct.request_queue* %65, i8* %66, i32 %67, i32 %68)
  store %struct.bio* %69, %struct.bio** %15, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.bio*, %struct.bio** %15, align 8
  %72 = call i64 @IS_ERR(%struct.bio* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.bio*, %struct.bio** %15, align 8
  %76 = call i32 @PTR_ERR(%struct.bio* %75)
  store i32 %76, i32* %6, align 4
  br label %110

77:                                               ; preds = %70
  %78 = load i32, i32* @REQ_OP_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.bio*, %struct.bio** %15, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.request*, %struct.request** %8, align 8
  %85 = call i32 @req_op(%struct.request* %84)
  %86 = load %struct.bio*, %struct.bio** %15, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %77
  %93 = load i32, i32* @RQF_COPY_USER, align 4
  %94 = load %struct.request*, %struct.request** %8, align 8
  %95 = getelementptr inbounds %struct.request, %struct.request* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %77
  %99 = load %struct.bio*, %struct.bio** %15, align 8
  store %struct.bio* %99, %struct.bio** %16, align 8
  %100 = load %struct.request*, %struct.request** %8, align 8
  %101 = call i32 @blk_rq_append_bio(%struct.request* %100, %struct.bio** %15)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.bio*, %struct.bio** %16, align 8
  %107 = call i32 @bio_put(%struct.bio* %106)
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %6, align 4
  br label %110

109:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %105, %74, %39, %30
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i32 @blk_rq_aligned(%struct.request_queue*, i64, i32) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

declare dso_local %struct.bio* @bio_copy_kern(%struct.request_queue*, i8*, i32, i32, i32) #1

declare dso_local %struct.bio* @bio_map_kern(%struct.request_queue*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_append_bio(%struct.request*, %struct.bio**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
