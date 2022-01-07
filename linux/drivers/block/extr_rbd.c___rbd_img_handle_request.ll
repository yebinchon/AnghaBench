; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_img_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_img_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, i32, i32, %struct.rbd_device* }
%struct.rbd_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s%s result %d\00", align 1
@IMG_REQ_CHILD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"child \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*, i32*)* @__rbd_img_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rbd_img_handle_request(%struct.rbd_img_request* %0, i32* %1) #0 {
  %3 = alloca %struct.rbd_img_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rbd_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %7, i32 0, i32 3
  %9 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  store %struct.rbd_device* %9, %struct.rbd_device** %5, align 8
  %10 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %11 = call i64 @need_exclusive_lock(%struct.rbd_img_request* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %15 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @rbd_img_advance(%struct.rbd_img_request* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %27 = call i32 @rbd_lock_del_request(%struct.rbd_img_request* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %30 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %33 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %37 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @rbd_img_advance(%struct.rbd_img_request* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %43 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %45

45:                                               ; preds = %35, %28
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @rbd_assert(i32 %56)
  %58 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  %59 = load i32, i32* @IMG_REQ_CHILD, align 4
  %60 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %61 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load %struct.rbd_img_request*, %struct.rbd_img_request** %3, align 8
  %67 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @obj_op_name(i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rbd_warn(%struct.rbd_device* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %65, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %52, %48, %45
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @need_exclusive_lock(%struct.rbd_img_request*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rbd_img_advance(%struct.rbd_img_request*, i32*) #1

declare dso_local i32 @rbd_lock_del_request(%struct.rbd_img_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @obj_op_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
