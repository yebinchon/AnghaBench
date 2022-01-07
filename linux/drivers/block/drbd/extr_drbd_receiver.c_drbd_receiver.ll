; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_thread = type { %struct.drbd_connection* }
%struct.drbd_connection = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"receiver (re)started\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Discarding network configuration.\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"receiver terminated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_receiver(%struct.drbd_thread* %0) #0 {
  %2 = alloca %struct.drbd_thread*, align 8
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_thread* %0, %struct.drbd_thread** %2, align 8
  %5 = load %struct.drbd_thread*, %struct.drbd_thread** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %5, i32 0, i32 0
  %7 = load %struct.drbd_connection*, %struct.drbd_connection** %6, align 8
  store %struct.drbd_connection* %7, %struct.drbd_connection** %3, align 8
  %8 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %9 = call i32 @drbd_info(%struct.drbd_connection* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %33, %1
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %12 = call i32 @conn_connect(%struct.drbd_connection* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %17 = call i32 @conn_disconnect(%struct.drbd_connection* %16)
  %18 = load i32, i32* @HZ, align 4
  %19 = call i32 @schedule_timeout_interruptible(i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %25 = call i32 @drbd_warn(%struct.drbd_connection* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %27 = load i32, i32* @conn, align 4
  %28 = load i32, i32* @C_DISCONNECTING, align 4
  %29 = call i32 @NS(i32 %27, i32 %28)
  %30 = load i32, i32* @CS_HARD, align 4
  %31 = call i32 @conn_request_state(%struct.drbd_connection* %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %10, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %41 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %40, i32 0, i32 0
  %42 = call i32 @blk_start_plug(i32* %41)
  %43 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %44 = call i32 @drbdd(%struct.drbd_connection* %43)
  %45 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %46 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %45, i32 0, i32 0
  %47 = call i32 @blk_finish_plug(i32* %46)
  br label %48

48:                                               ; preds = %39, %36
  %49 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %50 = call i32 @conn_disconnect(%struct.drbd_connection* %49)
  %51 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %52 = call i32 @drbd_info(%struct.drbd_connection* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @drbd_info(%struct.drbd_connection*, i8*) #1

declare dso_local i32 @conn_connect(%struct.drbd_connection*) #1

declare dso_local i32 @conn_disconnect(%struct.drbd_connection*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @drbd_warn(%struct.drbd_connection*, i8*) #1

declare dso_local i32 @conn_request_state(%struct.drbd_connection*, i32, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i32 @blk_start_plug(i32*) #1

declare dso_local i32 @drbdd(%struct.drbd_connection*) #1

declare dso_local i32 @blk_finish_plug(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
