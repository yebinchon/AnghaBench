; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drbd_peer_device = type { %struct.TYPE_2__*, %struct.drbd_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_device = type { i32, i32 }
%struct.net_conf = type { i32 }

@wait = common dso_local global i32 0, align 4
@drbd_pp_wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"drbd_alloc_pages interrupted!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @drbd_alloc_pages(%struct.drbd_peer_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_peer_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.net_conf*, align 8
  %10 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %12 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %11, i32 0, i32 1
  %13 = load %struct.drbd_device*, %struct.drbd_device** %12, align 8
  store %struct.drbd_device* %13, %struct.drbd_device** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  %14 = load i32, i32* @wait, align 4
  %15 = call i32 @DEFINE_WAIT(i32 %14)
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %18 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net_conf* @rcu_dereference(i32 %21)
  store %struct.net_conf* %22, %struct.net_conf** %9, align 8
  %23 = load %struct.net_conf*, %struct.net_conf** %9, align 8
  %24 = icmp ne %struct.net_conf* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.net_conf*, %struct.net_conf** %9, align 8
  %27 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 1000000, %29 ]
  store i32 %31, i32* %10, align 4
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %34 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %33, i32 0, i32 0
  %35 = call i32 @atomic_read(i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.page* @__drbd_alloc_pages(%struct.drbd_device* %39, i32 %40)
  store %struct.page* %41, %struct.page** %8, align 8
  br label %42

42:                                               ; preds = %38, %30
  %43 = load %struct.page*, %struct.page** %8, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 1
  %48 = call i32 @atomic_read(i32* %47)
  %49 = icmp ugt i32 %48, 512
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %52 = call i32 @drbd_reclaim_net_peer_reqs(%struct.drbd_device* %51)
  br label %53

53:                                               ; preds = %50, %45, %42
  br label %54

54:                                               ; preds = %93, %53
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = icmp eq %struct.page* %55, null
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %59 = call i32 @prepare_to_wait(i32* @drbd_pp_wait, i32* @wait, i32 %58)
  %60 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %61 = call i32 @drbd_reclaim_net_peer_reqs(%struct.drbd_device* %60)
  %62 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %63 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %62, i32 0, i32 0
  %64 = call i32 @atomic_read(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.page* @__drbd_alloc_pages(%struct.drbd_device* %68, i32 %69)
  store %struct.page* %70, %struct.page** %8, align 8
  %71 = load %struct.page*, %struct.page** %8, align 8
  %72 = icmp ne %struct.page* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %94

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %94

79:                                               ; preds = %75
  %80 = load i32, i32* @current, align 4
  %81 = call i64 @signal_pending(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %85 = call i32 @drbd_warn(%struct.drbd_device* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %94

86:                                               ; preds = %79
  %87 = load i32, i32* @HZ, align 4
  %88 = sdiv i32 %87, 10
  %89 = call i64 @schedule_timeout(i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @UINT_MAX, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %86
  br label %54

94:                                               ; preds = %83, %78, %73, %54
  %95 = call i32 @finish_wait(i32* @drbd_pp_wait, i32* @wait)
  %96 = load %struct.page*, %struct.page** %8, align 8
  %97 = icmp ne %struct.page* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %101 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %100, i32 0, i32 0
  %102 = call i32 @atomic_add(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load %struct.page*, %struct.page** %8, align 8
  ret %struct.page* %104
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.page* @__drbd_alloc_pages(%struct.drbd_device*, i32) #1

declare dso_local i32 @drbd_reclaim_net_peer_reqs(%struct.drbd_device*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
