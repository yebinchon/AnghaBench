; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { %struct.request*, %struct.rbd_obj_request*, i32 }
%struct.request = type { i32 }
%struct.rbd_obj_request = type { %struct.rbd_img_request* }

@IMG_REQ_CHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_img_request*, i32)* @rbd_img_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_img_handle_request(%struct.rbd_img_request* %0, i32 %1) #0 {
  %3 = alloca %struct.rbd_img_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rbd_obj_request*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %9 = call i32 @__rbd_img_handle_request(%struct.rbd_img_request* %8, i32* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %42

12:                                               ; preds = %7
  %13 = load i32, i32* @IMG_REQ_CHILD, align 4
  %14 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %15 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %20 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %19, i32 0, i32 1
  %21 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %20, align 8
  store %struct.rbd_obj_request* %21, %struct.rbd_obj_request** %5, align 8
  %22 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %23 = call i32 @rbd_img_request_put(%struct.rbd_img_request* %22)
  %24 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %25 = call i64 @__rbd_obj_handle_request(%struct.rbd_obj_request* %24, i32* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %5, align 8
  %29 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %28, i32 0, i32 0
  %30 = load %struct.rbd_img_request*, %struct.rbd_img_request** %29, align 8
  store %struct.rbd_img_request* %30, %struct.rbd_img_request** %3, align 8
  br label %7

31:                                               ; preds = %18
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %34 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %33, i32 0, i32 0
  %35 = load %struct.request*, %struct.request** %34, align 8
  store %struct.request* %35, %struct.request** %6, align 8
  %36 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %37 = call i32 @rbd_img_request_put(%struct.rbd_img_request* %36)
  %38 = load %struct.request*, %struct.request** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @errno_to_blk_status(i32 %39)
  %41 = call i32 @blk_mq_end_request(%struct.request* %38, i32 %40)
  br label %42

42:                                               ; preds = %11, %32, %31
  ret void
}

declare dso_local i32 @__rbd_img_handle_request(%struct.rbd_img_request*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rbd_img_request_put(%struct.rbd_img_request*) #1

declare dso_local i64 @__rbd_obj_handle_request(%struct.rbd_obj_request*, i32*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @errno_to_blk_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
