; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_count_write_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_count_write_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, i32, %struct.rbd_img_request* }
%struct.rbd_img_request = type { i32, i32 }

@RBD_OBJ_FLAG_MAY_EXIST = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_COPYUP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @count_write_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_write_ops(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca %struct.rbd_img_request*, align 8
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %5 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %6 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %5, i32 0, i32 2
  %7 = load %struct.rbd_img_request*, %struct.rbd_img_request** %6, align 8
  store %struct.rbd_img_request* %7, %struct.rbd_img_request** %4, align 8
  %8 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %45 [
    i32 129, label %11
    i32 130, label %26
    i32 128, label %27
  ]

11:                                               ; preds = %1
  %12 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %13 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @use_object_map(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %19 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RBD_OBJ_FLAG_MAY_EXIST, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %11
  store i32 2, i32* %2, align 4
  br label %47

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %47

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %47

27:                                               ; preds = %1
  %28 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %29 = call i32 @rbd_obj_is_entire(%struct.rbd_obj_request* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %33 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %38 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 2, i32* %2, align 4
  br label %47

44:                                               ; preds = %36, %31, %27
  store i32 1, i32* %2, align 4
  br label %47

45:                                               ; preds = %1
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %24, %25, %26, %43, %44, %45
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @use_object_map(i32) #1

declare dso_local i32 @rbd_obj_is_entire(%struct.rbd_obj_request*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
