; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_send_uuids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c__drbd_send_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_8__*, %struct.drbd_device* }
%struct.TYPE_8__ = type { i32, %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.drbd_device = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.p_uuids = type { i8** }
%struct.TYPE_10__ = type { i64 }

@D_NEGOTIATING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UI_CURRENT = common dso_local global i32 0, align 4
@UI_SIZE = common dso_local global i32 0, align 4
@CRASHED_PRIMARY = common dso_local global i32 0, align 4
@D_INCONSISTENT = common dso_local global i64 0, align 8
@UI_FLAGS = common dso_local global i64 0, align 8
@P_UUIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_peer_device*, i32)* @_drbd_send_uuids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_drbd_send_uuids(%struct.drbd_peer_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_peer_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca %struct.drbd_socket*, align 8
  %8 = alloca %struct.p_uuids*, align 8
  %9 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %10, i32 0, i32 1
  %12 = load %struct.drbd_device*, %struct.drbd_device** %11, align 8
  store %struct.drbd_device* %12, %struct.drbd_device** %6, align 8
  %13 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %14 = load i32, i32* @D_NEGOTIATING, align 4
  %15 = call i32 @get_ldev_if_state(%struct.drbd_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %134

18:                                               ; preds = %2
  %19 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %20 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store %struct.drbd_socket* %22, %struct.drbd_socket** %7, align 8
  %23 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %24 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %25 = call %struct.p_uuids* @drbd_prepare_command(%struct.drbd_peer_device* %23, %struct.drbd_socket* %24)
  store %struct.p_uuids* %25, %struct.p_uuids** %8, align 8
  %26 = load %struct.p_uuids*, %struct.p_uuids** %8, align 8
  %27 = icmp ne %struct.p_uuids* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %30 = call i32 @put_ldev(%struct.drbd_device* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %134

33:                                               ; preds = %18
  %34 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load i32, i32* @UI_CURRENT, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %63, %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @UI_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be64(i32 %55)
  %57 = load %struct.p_uuids*, %struct.p_uuids** %8, align 8
  %58 = getelementptr inbounds %struct.p_uuids, %struct.p_uuids* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %68 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %67, i32 0, i32 3
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %74 = call i32 @drbd_bm_total_weight(%struct.drbd_device* %73)
  %75 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %76 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %78 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @cpu_to_be64(i32 %79)
  %81 = load %struct.p_uuids*, %struct.p_uuids** %8, align 8
  %82 = getelementptr inbounds %struct.p_uuids, %struct.p_uuids* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* @UI_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %80, i8** %86, align 8
  %87 = call i32 (...) @rcu_read_lock()
  %88 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %89 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_10__* @rcu_dereference(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 0
  %99 = load i32, i32* %5, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load i32, i32* @CRASHED_PRIMARY, align 4
  %103 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %104 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %103, i32 0, i32 2
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 2, i32 0
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %112 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @D_INCONSISTENT, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 4, i32 0
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i8* @cpu_to_be64(i32 %121)
  %123 = load %struct.p_uuids*, %struct.p_uuids** %8, align 8
  %124 = getelementptr inbounds %struct.p_uuids, %struct.p_uuids* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* @UI_FLAGS, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8* %122, i8** %127, align 8
  %128 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %129 = call i32 @put_ldev(%struct.drbd_device* %128)
  %130 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %4, align 8
  %131 = load %struct.drbd_socket*, %struct.drbd_socket** %7, align 8
  %132 = load i32, i32* @P_UUIDS, align 4
  %133 = call i32 @drbd_send_command(%struct.drbd_peer_device* %130, %struct.drbd_socket* %131, i32 %132, i32 8, i32* null, i32 0)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %66, %28, %17
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local %struct.p_uuids* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drbd_bm_total_weight(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_10__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
