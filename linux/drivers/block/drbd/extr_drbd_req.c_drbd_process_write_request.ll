; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_process_write_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_process_write_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.drbd_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drbd_device = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@QUEUE_AS_DRBD_BARRIER = common dso_local global i32 0, align 4
@TO_BE_SENT = common dso_local global i32 0, align 4
@QUEUE_FOR_NET_WRITE = common dso_local global i32 0, align 4
@QUEUE_FOR_SEND_OOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_request*)* @drbd_process_write_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_process_write_request(%struct.drbd_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  %7 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %7, i32 0, i32 2
  %9 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  store %struct.drbd_device* %9, %struct.drbd_device** %4, align 8
  %10 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @drbd_should_do_remote(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @drbd_should_send_out_of_sync(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %19 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %1
  %27 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %28 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %29 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @REQ_PREFLUSH, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @D_ASSERT(%struct.drbd_device* %27, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %40 = load i32, i32* @QUEUE_AS_DRBD_BARRIER, align 4
  %41 = call i32 @_req_mod(%struct.drbd_request* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %26
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %91

44:                                               ; preds = %1
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %91

51:                                               ; preds = %47, %44
  %52 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i1 [ false, %51 ], [ %57, %55 ]
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @D_ASSERT(%struct.drbd_device* %52, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %67 = load i32, i32* @TO_BE_SENT, align 4
  %68 = call i32 @_req_mod(%struct.drbd_request* %66, i32 %67)
  %69 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %70 = load i32, i32* @QUEUE_FOR_NET_WRITE, align 4
  %71 = call i32 @_req_mod(%struct.drbd_request* %69, i32 %70)
  br label %89

72:                                               ; preds = %58
  %73 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %74 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %75 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %79 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @drbd_set_out_of_sync(%struct.drbd_device* %73, i32 %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %86 = load i32, i32* @QUEUE_FOR_SEND_OOS, align 4
  %87 = call i32 @_req_mod(%struct.drbd_request* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %72
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %50, %42
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @drbd_should_do_remote(i32) #1

declare dso_local i32 @drbd_should_send_out_of_sync(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @_req_mod(%struct.drbd_request*, i32) #1

declare dso_local i64 @drbd_set_out_of_sync(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
