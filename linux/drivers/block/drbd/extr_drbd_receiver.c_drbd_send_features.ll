; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_send_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_send_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_connection_features = type { i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@PRO_VERSION_MIN = common dso_local global i32 0, align 4
@PRO_VERSION_MAX = common dso_local global i32 0, align 4
@PRO_FEATURES = common dso_local global i32 0, align 4
@P_CONNECTION_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*)* @drbd_send_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_send_features(%struct.drbd_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.drbd_socket*, align 8
  %5 = alloca %struct.p_connection_features*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  %6 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %6, i32 0, i32 0
  store %struct.drbd_socket* %7, %struct.drbd_socket** %4, align 8
  %8 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %9 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %10 = call %struct.p_connection_features* @conn_prepare_command(%struct.drbd_connection* %8, %struct.drbd_socket* %9)
  store %struct.p_connection_features* %10, %struct.p_connection_features** %5, align 8
  %11 = load %struct.p_connection_features*, %struct.p_connection_features** %5, align 8
  %12 = icmp ne %struct.p_connection_features* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.p_connection_features*, %struct.p_connection_features** %5, align 8
  %18 = call i32 @memset(%struct.p_connection_features* %17, i32 0, i32 24)
  %19 = load i32, i32* @PRO_VERSION_MIN, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.p_connection_features*, %struct.p_connection_features** %5, align 8
  %22 = getelementptr inbounds %struct.p_connection_features, %struct.p_connection_features* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @PRO_VERSION_MAX, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.p_connection_features*, %struct.p_connection_features** %5, align 8
  %26 = getelementptr inbounds %struct.p_connection_features, %struct.p_connection_features* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @PRO_FEATURES, align 4
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = load %struct.p_connection_features*, %struct.p_connection_features** %5, align 8
  %30 = getelementptr inbounds %struct.p_connection_features, %struct.p_connection_features* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %32 = load %struct.drbd_socket*, %struct.drbd_socket** %4, align 8
  %33 = load i32, i32* @P_CONNECTION_FEATURES, align 4
  %34 = call i32 @conn_send_command(%struct.drbd_connection* %31, %struct.drbd_socket* %32, i32 %33, i32 24, i32* null, i32 0)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.p_connection_features* @conn_prepare_command(%struct.drbd_connection*, %struct.drbd_socket*) #1

declare dso_local i32 @memset(%struct.p_connection_features*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @conn_send_command(%struct.drbd_connection*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
