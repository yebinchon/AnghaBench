; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_we_should_drop_the_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_we_should_drop_the_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.drbd_connection = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32 }

@RUNNING = common dso_local global i64 0, align 8
@C_WF_REPORT_PARAMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"[%s/%d] sock_sendmsg time expired, ko = %u\0A\00", align 1
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.socket*)* @we_should_drop_the_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @we_should_drop_the_connection(%struct.drbd_connection* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %7 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %8 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = icmp eq %struct.socket* %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 2
  %22 = call i64 @get_t_state(%struct.TYPE_5__* %21)
  %23 = load i64, i64* @RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %27 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @C_WF_REPORT_PARAMS, align 8
  %30 = icmp slt i64 %28, %29
  br label %31

31:                                               ; preds = %25, %19, %13, %2
  %32 = phi i1 [ true, %19 ], [ true, %13 ], [ true, %2 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %63

37:                                               ; preds = %31
  %38 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %39 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %37
  %48 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %56 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @drbd_err(%struct.drbd_connection* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57)
  %59 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %60 = call i32 @request_ping(%struct.drbd_connection* %59)
  br label %61

61:                                               ; preds = %47, %37
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %36
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @get_t_state(%struct.TYPE_5__*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i32, i32, i32) #1

declare dso_local i32 @request_ping(%struct.drbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
