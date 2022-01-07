; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_init_zeroout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_init_zeroout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, i32, i32 }

@RBD_OBJ_FLAG_COPYUP_ENABLED = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_NOOP_FOR_NONEXISTENT = common dso_local global i32 0, align 4
@RBD_OBJ_FLAG_DELETION = common dso_local global i32 0, align 4
@RBD_OBJ_WRITE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_init_zeroout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_init_zeroout(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_obj_request*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %3, align 8
  %5 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %6 = call i32 @rbd_obj_calc_img_extents(%struct.rbd_obj_request* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %13 = call i64 @rbd_obj_copyup_enabled(%struct.rbd_obj_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ENABLED, align 4
  %17 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %15, %11
  %22 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %23 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @RBD_OBJ_FLAG_NOOP_FOR_NONEXISTENT, align 4
  %28 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %29 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %33 = call i64 @rbd_obj_is_entire(%struct.rbd_obj_request* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i32, i32* @RBD_OBJ_FLAG_DELETION, align 4
  %37 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %38 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %26
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* @RBD_OBJ_WRITE_START, align 4
  %44 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %3, align 8
  %45 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rbd_obj_calc_img_extents(%struct.rbd_obj_request*, i32) #1

declare dso_local i64 @rbd_obj_copyup_enabled(%struct.rbd_obj_request*) #1

declare dso_local i64 @rbd_obj_is_entire(%struct.rbd_obj_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
