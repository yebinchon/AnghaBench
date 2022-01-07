; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_recv_header_maybe_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_recv_header_maybe_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.packet_info = type { i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @drbd_recv_header_maybe_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_recv_header_maybe_unplug(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.packet_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.packet_info* %1, %struct.packet_info** %5, align 8
  %9 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %10 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %14 = call i32 @drbd_header_size(%struct.drbd_connection* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MSG_NOSIGNAL, align 4
  %22 = load i32, i32* @MSG_DONTWAIT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @drbd_recv_short(i32 %18, i8* %19, i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %35 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @drbd_tcp_quickack(i32 %37)
  %39 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %40 = call i32 @drbd_unplug_all_devices(%struct.drbd_connection* %39)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @drbd_recv_all_warn(%struct.drbd_connection* %53, i8* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %64 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %65 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.packet_info*, %struct.packet_info** %5, align 8
  %69 = call i32 @decode_header(%struct.drbd_connection* %63, i8* %67, %struct.packet_info* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %72 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62, %59
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @drbd_header_size(%struct.drbd_connection*) #1

declare dso_local i32 @drbd_recv_short(i32, i8*, i32, i32) #1

declare dso_local i32 @drbd_tcp_quickack(i32) #1

declare dso_local i32 @drbd_unplug_all_devices(%struct.drbd_connection*) #1

declare dso_local i32 @drbd_recv_all_warn(%struct.drbd_connection*, i8*, i32) #1

declare dso_local i32 @decode_header(%struct.drbd_connection*, i8*, %struct.packet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
