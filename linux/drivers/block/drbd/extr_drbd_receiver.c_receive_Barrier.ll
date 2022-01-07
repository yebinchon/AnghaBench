; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_receive_Barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_receive_Barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32, %struct.drbd_epoch*, %struct.TYPE_2__* }
%struct.drbd_epoch = type { i32, i32, i32, i64, %struct.drbd_connection*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.packet_info = type { %struct.p_barrier* }
%struct.p_barrier = type { i32 }

@EV_GOT_BARRIER_NR = common dso_local global i32 0, align 4
@FE_RECYCLED = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Allocation of an epoch failed, slowing down\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Strangeness in connection->write_ordering %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @receive_Barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_Barrier(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.packet_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p_barrier*, align 8
  %8 = alloca %struct.drbd_epoch*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.packet_info* %1, %struct.packet_info** %5, align 8
  %9 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %10 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %9, i32 0, i32 0
  %11 = load %struct.p_barrier*, %struct.p_barrier** %10, align 8
  store %struct.p_barrier* %11, %struct.p_barrier** %7, align 8
  %12 = load %struct.p_barrier*, %struct.p_barrier** %7, align 8
  %13 = getelementptr inbounds %struct.p_barrier, %struct.p_barrier* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %15, i32 0, i32 2
  %17 = load %struct.drbd_epoch*, %struct.drbd_epoch** %16, align 8
  %18 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %17, i32 0, i32 5
  store i32 %14, i32* %18, align 8
  %19 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 2
  %22 = load %struct.drbd_epoch*, %struct.drbd_epoch** %21, align 8
  %23 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %22, i32 0, i32 4
  store %struct.drbd_connection* %19, %struct.drbd_connection** %23, align 8
  %24 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %25 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %26 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %25, i32 0, i32 2
  %27 = load %struct.drbd_epoch*, %struct.drbd_epoch** %26, align 8
  %28 = load i32, i32* @EV_GOT_BARRIER_NR, align 4
  %29 = call i32 @drbd_may_finish_epoch(%struct.drbd_connection* %24, %struct.drbd_epoch* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %31 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %69 [
    i32 128, label %35
    i32 130, label %50
    i32 129, label %50
  ]

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FE_RECYCLED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %119

40:                                               ; preds = %35
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call %struct.drbd_epoch* @kmalloc(i32 40, i32 %41)
  store %struct.drbd_epoch* %42, %struct.drbd_epoch** %8, align 8
  %43 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %44 = icmp ne %struct.drbd_epoch* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %79

46:                                               ; preds = %40
  %47 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %48 = call i32 @drbd_warn(%struct.drbd_connection* %47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %2, %2, %49
  %51 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %52 = call i32 @conn_wait_active_ee_empty(%struct.drbd_connection* %51)
  %53 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %54 = call i32 @drbd_flush(%struct.drbd_connection* %53)
  %55 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %56 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %55, i32 0, i32 2
  %57 = load %struct.drbd_epoch*, %struct.drbd_epoch** %56, align 8
  %58 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %57, i32 0, i32 1
  %59 = call i64 @atomic_read(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load i32, i32* @GFP_NOIO, align 4
  %63 = call %struct.drbd_epoch* @kmalloc(i32 40, i32 %62)
  store %struct.drbd_epoch* %63, %struct.drbd_epoch** %8, align 8
  %64 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %65 = icmp ne %struct.drbd_epoch* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %79

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %50
  store i32 0, i32* %3, align 4
  br label %119

69:                                               ; preds = %2
  %70 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %71 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %72 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @drbd_err(%struct.drbd_connection* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %66, %45
  %80 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %81 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %83 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %82, i32 0, i32 1
  %84 = call i32 @atomic_set(i32* %83, i32 0)
  %85 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %86 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %85, i32 0, i32 2
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %89 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %92 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %91, i32 0, i32 2
  %93 = load %struct.drbd_epoch*, %struct.drbd_epoch** %92, align 8
  %94 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %93, i32 0, i32 1
  %95 = call i64 @atomic_read(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %79
  %98 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %99 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %98, i32 0, i32 0
  %100 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %101 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %100, i32 0, i32 2
  %102 = load %struct.drbd_epoch*, %struct.drbd_epoch** %101, align 8
  %103 = getelementptr inbounds %struct.drbd_epoch, %struct.drbd_epoch* %102, i32 0, i32 0
  %104 = call i32 @list_add(i32* %99, i32* %103)
  %105 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %106 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %107 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %106, i32 0, i32 2
  store %struct.drbd_epoch* %105, %struct.drbd_epoch** %107, align 8
  %108 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %109 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %115

112:                                              ; preds = %79
  %113 = load %struct.drbd_epoch*, %struct.drbd_epoch** %8, align 8
  %114 = call i32 @kfree(%struct.drbd_epoch* %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %117 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %69, %68, %39
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @drbd_may_finish_epoch(%struct.drbd_connection*, %struct.drbd_epoch*, i32) #1

declare dso_local %struct.drbd_epoch* @kmalloc(i32, i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_connection*, i8*) #1

declare dso_local i32 @conn_wait_active_ee_empty(%struct.drbd_connection*) #1

declare dso_local i32 @drbd_flush(%struct.drbd_connection*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.drbd_epoch*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
