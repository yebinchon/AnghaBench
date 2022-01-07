; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_img_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, %struct.TYPE_2__, %struct.rbd_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rbd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*, i32*)* @rbd_img_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_img_advance(%struct.rbd_img_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_img_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %8, i32 0, i32 2
  %10 = load %struct.rbd_device*, %struct.rbd_device** %9, align 8
  store %struct.rbd_device* %10, %struct.rbd_device** %6, align 8
  br label %11

11:                                               ; preds = %60, %34, %2
  %12 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %13 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %80 [
    i32 129, label %15
    i32 131, label %36
    i32 128, label %71
    i32 130, label %79
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @rbd_assert(i32 %20)
  %22 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %23 = call i32 @rbd_img_exclusive_lock(%struct.rbd_img_request* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %82

29:                                               ; preds = %15
  %30 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %31 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %30, i32 0, i32 0
  store i32 131, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %11

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %82

36:                                               ; preds = %11
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %82

41:                                               ; preds = %36
  %42 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %43 = call i32 @need_exclusive_lock(%struct.rbd_img_request* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %47 = call i32 @__rbd_is_lock_owner(%struct.rbd_device* %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @rbd_assert(i32 %51)
  %53 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %54 = call i32 @rbd_img_object_requests(%struct.rbd_img_request* %53)
  %55 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %56 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %49
  %61 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %62 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %67 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %66, i32 0, i32 0
  store i32 130, i32* %67, align 8
  br label %11

68:                                               ; preds = %49
  %69 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %70 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %69, i32 0, i32 0
  store i32 128, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %82

71:                                               ; preds = %11
  %72 = load %struct.rbd_img_request*, %struct.rbd_img_request** %4, align 8
  %73 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %72, i32 0, i32 1
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @pending_result_dec(%struct.TYPE_2__* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %82

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %11, %78
  store i32 1, i32* %3, align 4
  br label %82

80:                                               ; preds = %11
  %81 = call i32 (...) @BUG()
  br label %82

82:                                               ; preds = %26, %35, %40, %68, %77, %79, %80
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_img_exclusive_lock(%struct.rbd_img_request*) #1

declare dso_local i32 @need_exclusive_lock(%struct.rbd_img_request*) #1

declare dso_local i32 @__rbd_is_lock_owner(%struct.rbd_device*) #1

declare dso_local i32 @rbd_img_object_requests(%struct.rbd_img_request*) #1

declare dso_local i32 @pending_result_dec(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
