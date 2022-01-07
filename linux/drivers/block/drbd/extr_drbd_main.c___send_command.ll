; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c___send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c___send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.drbd_socket = type { i8*, i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@P_PING = common dso_local global i32 0, align 4
@P_PING_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, i32, %struct.drbd_socket*, i32, i32, i8*, i32)* @__send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_command(%struct.drbd_connection* %0, i32 %1, %struct.drbd_socket* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.drbd_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drbd_socket*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.drbd_socket* %2, %struct.drbd_socket** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @MSG_MORE, align 4
  br label %22

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %15, align 4
  %24 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.drbd_socket*, %struct.drbd_socket** %10, align 8
  %27 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add i32 %30, %31
  %33 = call i64 @prepare_header(%struct.drbd_connection* %24, i32 %25, i8* %28, i32 %29, i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %39 = load %struct.drbd_socket*, %struct.drbd_socket** %10, align 8
  %40 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drbd_socket*, %struct.drbd_socket** %10, align 8
  %43 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @drbd_send_all(%struct.drbd_connection* %38, i32 %41, i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %22
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.drbd_connection*, %struct.drbd_connection** %8, align 8
  %55 = load %struct.drbd_socket*, %struct.drbd_socket** %10, align 8
  %56 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @drbd_send_all(%struct.drbd_connection* %54, i32 %57, i8* %58, i32 %59, i32 0)
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %53, %50, %22
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @P_PING, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @P_PING_ACK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %64
  %73 = load %struct.drbd_socket*, %struct.drbd_socket** %10, align 8
  %74 = getelementptr inbounds %struct.drbd_socket, %struct.drbd_socket* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @drbd_tcp_nodelay(i32 %75)
  br label %77

77:                                               ; preds = %72, %68, %61
  %78 = load i32, i32* %16, align 4
  ret i32 %78
}

declare dso_local i64 @prepare_header(%struct.drbd_connection*, i32, i8*, i32, i32) #1

declare dso_local i32 @drbd_send_all(%struct.drbd_connection*, i32, i8*, i32, i32) #1

declare dso_local i32 @drbd_tcp_nodelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
