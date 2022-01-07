; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_do_remote_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_do_remote_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32*, %struct.TYPE_7__, %struct.drbd_device* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.drbd_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@D_UP_TO_DATE = common dso_local global i64 0, align 8
@RB_PREFER_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_request*)* @do_remote_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_remote_read(%struct.drbd_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  %6 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %6, i32 0, i32 2
  %8 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  store %struct.drbd_device* %8, %struct.drbd_device** %4, align 8
  %9 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %15 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %16 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drbd_may_do_local_read(%struct.drbd_device* %14, i32 %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %13
  %26 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %27 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bio_put(i32* %28)
  %30 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %31 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %33 = call i32 @put_ldev(%struct.drbd_device* %32)
  br label %34

34:                                               ; preds = %25, %13
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %37 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @D_UP_TO_DATE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %94

43:                                               ; preds = %35
  %44 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %45 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %94

49:                                               ; preds = %43
  %50 = call i32 (...) @rcu_read_lock()
  %51 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %52 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_8__* @rcu_dereference(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  %59 = call i32 (...) @rcu_read_unlock()
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @RB_PREFER_LOCAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %65 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %94

69:                                               ; preds = %63, %49
  %70 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %71 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %72 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @remote_due_to_read_balancing(%struct.drbd_device* %70, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %69
  %79 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %80 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %85 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bio_put(i32* %86)
  %88 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %89 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %91 = call i32 @put_ldev(%struct.drbd_device* %90)
  br label %92

92:                                               ; preds = %83, %78
  store i32 1, i32* %2, align 4
  br label %94

93:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %92, %68, %48, %42
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @drbd_may_do_local_read(%struct.drbd_device*, i32, i32) #1

declare dso_local i32 @bio_put(i32*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_8__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @remote_due_to_read_balancing(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
