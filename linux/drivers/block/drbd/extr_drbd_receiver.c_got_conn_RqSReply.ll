; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_conn_RqSReply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_got_conn_RqSReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32, i32 }
%struct.packet_info = type { %struct.p_req_state_reply* }
%struct.p_req_state_reply = type { i32 }

@SS_SUCCESS = common dso_local global i32 0, align 4
@CONN_WD_ST_CHG_OKAY = common dso_local global i32 0, align 4
@CONN_WD_ST_CHG_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Requested state change failed by peer: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.packet_info*)* @got_conn_RqSReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @got_conn_RqSReply(%struct.drbd_connection* %0, %struct.packet_info* %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca %struct.packet_info*, align 8
  %5 = alloca %struct.p_req_state_reply*, align 8
  %6 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store %struct.packet_info* %1, %struct.packet_info** %4, align 8
  %7 = load %struct.packet_info*, %struct.packet_info** %4, align 8
  %8 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %7, i32 0, i32 0
  %9 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %8, align 8
  store %struct.p_req_state_reply* %9, %struct.p_req_state_reply** %5, align 8
  %10 = load %struct.p_req_state_reply*, %struct.p_req_state_reply** %5, align 8
  %11 = getelementptr inbounds %struct.p_req_state_reply, %struct.p_req_state_reply* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be32_to_cpu(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SS_SUCCESS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @CONN_WD_ST_CHG_OKAY, align 4
  %19 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* @CONN_WD_ST_CHG_FAIL, align 4
  %24 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %25 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @drbd_set_st_err_str(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @drbd_err(%struct.drbd_connection* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %17
  %33 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %34 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %33, i32 0, i32 0
  %35 = call i32 @wake_up(i32* %34)
  ret i32 0
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_connection*, i8*, i32, i32) #1

declare dso_local i32 @drbd_set_st_err_str(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
