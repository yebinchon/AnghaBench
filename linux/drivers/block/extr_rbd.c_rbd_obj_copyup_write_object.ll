; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_write_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_copyup_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@RBD_OBJ_FLAG_COPYUP_ZEROS = common dso_local global i32 0, align 4
@MODS_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_obj_request*)* @rbd_obj_copyup_write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_obj_copyup_write_object(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca %struct.rbd_obj_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %2, align 8
  %5 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %6 = call i64 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %8 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %14 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i1 [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @rbd_assert(i32 %21)
  %23 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %24 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RBD_OBJ_FLAG_COPYUP_ZEROS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i64 0, i64* %3, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %32 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %30
  %40 = load i64, i64* %3, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @rbd_obj_copyup_empty_snapc(%struct.rbd_obj_request* %43, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %51 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %77

53:                                               ; preds = %42
  %54 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %55 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* @MODS_ONLY, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %53, %39, %30
  %61 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @rbd_obj_copyup_current_snapc(%struct.rbd_obj_request* %61, i64 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %69 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %73 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66, %48
  ret void
}

declare dso_local i64 @rbd_obj_img_extents_bytes(%struct.rbd_obj_request*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_obj_copyup_empty_snapc(%struct.rbd_obj_request*, i64) #1

declare dso_local i32 @rbd_obj_copyup_current_snapc(%struct.rbd_obj_request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
