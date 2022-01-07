; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.drbd_connection = type { i32 }
%struct.accept_wait_data = type { i32, i32 }
%struct.net_conf = type { i32 }

@HZ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"accept failed, err = %d\0A\00", align 1
@conn = common dso_local global i32 0, align 4
@C_DISCONNECTING = common dso_local global i32 0, align 4
@CS_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.drbd_connection*, %struct.accept_wait_data*)* @drbd_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @drbd_wait_for_connect(%struct.drbd_connection* %0, %struct.accept_wait_data* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.accept_wait_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.net_conf*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.accept_wait_data* %1, %struct.accept_wait_data** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.socket* null, %struct.socket** %9, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %13 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_conf* @rcu_dereference(i32 %14)
  store %struct.net_conf* %15, %struct.net_conf** %10, align 8
  %16 = load %struct.net_conf*, %struct.net_conf** %10, align 8
  %17 = icmp ne %struct.net_conf* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (...) @rcu_read_unlock()
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.net_conf*, %struct.net_conf** %10, align 8
  %22 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = call i32 (...) @prandom_u32()
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 7
  br label %38

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 0, %35
  %37 = sdiv i32 %36, 7
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ]
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.accept_wait_data*, %struct.accept_wait_data** %5, align 8
  %43 = getelementptr inbounds %struct.accept_wait_data, %struct.accept_wait_data* %42, i32 0, i32 1
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @wait_for_completion_interruptible_timeout(i32* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %93

49:                                               ; preds = %38
  %50 = load %struct.accept_wait_data*, %struct.accept_wait_data** %5, align 8
  %51 = getelementptr inbounds %struct.accept_wait_data, %struct.accept_wait_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kernel_accept(i32 %52, %struct.socket** %9, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @EINTR, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ERESTARTSYS, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @drbd_err(%struct.drbd_connection* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %76 = load i32, i32* @conn, align 4
  %77 = load i32, i32* @C_DISCONNECTING, align 4
  %78 = call i32 @NS(i32 %76, i32 %77)
  %79 = load i32, i32* @CS_HARD, align 4
  %80 = call i32 @conn_request_state(%struct.drbd_connection* %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %71, %66, %61, %56
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.socket*, %struct.socket** %9, align 8
  %84 = icmp ne %struct.socket* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.socket*, %struct.socket** %9, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.accept_wait_data*, %struct.accept_wait_data** %5, align 8
  %90 = call i32 @unregister_state_change(i32 %88, %struct.accept_wait_data* %89)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %92, %struct.socket** %3, align 8
  br label %93

93:                                               ; preds = %91, %48, %18
  %94 = load %struct.socket*, %struct.socket** %3, align 8
  ret %struct.socket* %94
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @kernel_accept(i32, %struct.socket**, i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i32) #1

declare dso_local i32 @conn_request_state(%struct.drbd_connection*, i32, i32) #1

declare dso_local i32 @NS(i32, i32) #1

declare dso_local i32 @unregister_state_change(i32, %struct.accept_wait_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
