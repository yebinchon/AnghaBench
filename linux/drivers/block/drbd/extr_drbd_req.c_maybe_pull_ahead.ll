; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_maybe_pull_ahead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_maybe_pull_ahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.drbd_connection = type { i32, i32 }
%struct.net_conf = type { i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.drbd_connection* }

@OC_BLOCK = common dso_local global i32 0, align 4
@OC_PULL_AHEAD = common dso_local global i32 0, align 4
@C_AHEAD = common dso_local global i64 0, align 8
@D_UP_TO_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Congestion-fill threshold reached\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Congestion-extents threshold reached\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*)* @maybe_pull_ahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_pull_ahead(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.net_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %7 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %8 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  store %struct.drbd_connection* %10, %struct.drbd_connection** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_conf* @rcu_dereference(i32 %14)
  store %struct.net_conf* %15, %struct.net_conf** %4, align 8
  %16 = load %struct.net_conf*, %struct.net_conf** %4, align 8
  %17 = icmp ne %struct.net_conf* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.net_conf*, %struct.net_conf** %4, align 8
  %20 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @OC_BLOCK, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %21, %18 ], [ %23, %22 ]
  store i32 %25, i32* %6, align 4
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @OC_BLOCK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %32 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 96
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %111

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @OC_PULL_AHEAD, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %42 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @C_AHEAD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %111

48:                                               ; preds = %40, %36
  %49 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %50 = load i32, i32* @D_UP_TO_DATE, align 4
  %51 = call i32 @get_ldev_if_state(%struct.drbd_device* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %111

54:                                               ; preds = %48
  %55 = load %struct.net_conf*, %struct.net_conf** %4, align 8
  %56 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %61 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %60, i32 0, i32 1
  %62 = call i64 @atomic_read(i32* %61)
  %63 = load %struct.net_conf*, %struct.net_conf** %4, align 8
  %64 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %69 = call i32 @drbd_info(%struct.drbd_device* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %59, %54
  %71 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %72 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.net_conf*, %struct.net_conf** %4, align 8
  %77 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %82 = call i32 @drbd_info(%struct.drbd_device* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %70
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %88 = call %struct.TYPE_6__* @first_peer_device(%struct.drbd_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.drbd_connection*, %struct.drbd_connection** %89, align 8
  %91 = call i32 @start_new_tl_epoch(%struct.drbd_connection* %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @OC_PULL_AHEAD, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %97 = load i32, i32* @conn, align 4
  %98 = load i64, i64* @C_AHEAD, align 8
  %99 = call i32 @_NS(%struct.drbd_device* %96, i32 %97, i64 %98)
  %100 = call i32 @_drbd_set_state(i32 %99, i32 0, i32* null)
  br label %107

101:                                              ; preds = %86
  %102 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %103 = load i32, i32* @conn, align 4
  %104 = load i64, i64* @C_DISCONNECTING, align 8
  %105 = call i32 @_NS(%struct.drbd_device* %102, i32 %103, i64 %104)
  %106 = call i32 @_drbd_set_state(i32 %105, i32 0, i32* null)
  br label %107

107:                                              ; preds = %101, %95
  br label %108

108:                                              ; preds = %107, %83
  %109 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %110 = call i32 @put_ldev(%struct.drbd_device* %109)
  br label %111

111:                                              ; preds = %108, %53, %47, %35
  ret void
}

declare dso_local %struct.TYPE_6__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @drbd_info(%struct.drbd_device*, i8*) #1

declare dso_local i32 @start_new_tl_epoch(%struct.drbd_connection*) #1

declare dso_local i32 @_drbd_set_state(i32, i32, i32*) #1

declare dso_local i32 @_NS(%struct.drbd_device*, i32, i64) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
