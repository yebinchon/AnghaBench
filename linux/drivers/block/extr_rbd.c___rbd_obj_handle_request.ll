; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_obj_handle_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c___rbd_obj_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { %struct.TYPE_2__, i32, %struct.rbd_img_request* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rbd_img_request = type { i32, %struct.rbd_device* }
%struct.rbd_device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s at objno %llu %llu~%llu result %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*, i32*)* @__rbd_obj_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rbd_obj_handle_request(%struct.rbd_obj_request* %0, i32* %1) #0 {
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rbd_img_request*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %9 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %8, i32 0, i32 2
  %10 = load %struct.rbd_img_request*, %struct.rbd_img_request** %9, align 8
  store %struct.rbd_img_request* %10, %struct.rbd_img_request** %5, align 8
  %11 = load %struct.rbd_img_request*, %struct.rbd_img_request** %5, align 8
  %12 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %11, i32 0, i32 1
  %13 = load %struct.rbd_device*, %struct.rbd_device** %12, align 8
  store %struct.rbd_device* %13, %struct.rbd_device** %6, align 8
  %14 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %15 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.rbd_img_request*, %struct.rbd_img_request** %5, align 8
  %18 = call i32 @rbd_img_is_write(%struct.rbd_img_request* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @rbd_obj_advance_read(%struct.rbd_obj_request* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @rbd_obj_advance_write(%struct.rbd_obj_request* %25, i32* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %30 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @rbd_assert(i32 %42)
  %44 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %45 = load %struct.rbd_img_request*, %struct.rbd_img_request** %5, align 8
  %46 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @obj_op_name(i32 %47)
  %49 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %50 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %54 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %58 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @rbd_warn(%struct.rbd_device* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i32 %56, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %38, %34, %28
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rbd_img_is_write(%struct.rbd_img_request*) #1

declare dso_local i32 @rbd_obj_advance_read(%struct.rbd_obj_request*, i32*) #1

declare dso_local i32 @rbd_obj_advance_write(%struct.rbd_obj_request*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @obj_op_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
