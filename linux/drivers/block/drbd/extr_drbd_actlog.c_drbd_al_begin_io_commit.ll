; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_al_begin_io_commit(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i32 @lc_try_lock_for_transaction(%struct.TYPE_8__* %17)
  store i32 %18, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i1 [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @wait_event(i32 %7, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %26
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_7__* @rcu_dereference(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = call i32 (...) @rcu_read_unlock()
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %48 = call i32 @al_write_transaction(%struct.drbd_device* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %51 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %50, i32 0, i32 2
  %52 = call i32 @spin_lock_irq(i32* %51)
  %53 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = call i32 @lc_committed(%struct.TYPE_8__* %55)
  %57 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %58 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock_irq(i32* %58)
  br label %60

60:                                               ; preds = %49, %26
  %61 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %62 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @lc_unlock(%struct.TYPE_8__* %63)
  %65 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 0
  %67 = call i32 @wake_up(i32* %66)
  br label %68

68:                                               ; preds = %60, %20
  ret void
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @lc_try_lock_for_transaction(%struct.TYPE_8__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_7__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @al_write_transaction(%struct.drbd_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lc_committed(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lc_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
