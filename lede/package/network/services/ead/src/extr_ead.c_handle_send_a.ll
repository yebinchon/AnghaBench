; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_send_a.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_send_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.ead_msg }
%struct.ead_msg = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ead_msg_number = type { i32 }
%struct.ead_packet = type { %struct.ead_msg }

@MAXPARAMLEN = common dso_local global i32 0, align 4
@A = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@abuf = common dso_local global i32 0, align 4
@pktbuf = common dso_local global %struct.TYPE_4__* null, align 8
@B = common dso_local global %struct.TYPE_5__* null, align 8
@EAD_TYPE_SEND_AUTH = common dso_local global i32 0, align 4
@number = common dso_local global %struct.ead_msg_number* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ead_packet*, i32, i32*)* @handle_send_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_send_a(%struct.ead_packet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ead_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ead_msg*, align 8
  %9 = alloca %struct.ead_msg_number*, align 8
  store %struct.ead_packet* %0, %struct.ead_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ead_packet*, %struct.ead_packet** %5, align 8
  %11 = getelementptr inbounds %struct.ead_packet, %struct.ead_packet* %10, i32 0, i32 0
  store %struct.ead_msg* %11, %struct.ead_msg** %8, align 8
  %12 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %13 = load %struct.ead_msg_number*, %struct.ead_msg_number** %9, align 8
  %14 = call %struct.ead_msg_number* @EAD_DATA(%struct.ead_msg* %12, %struct.ead_msg_number* %13)
  store %struct.ead_msg_number* %14, %struct.ead_msg_number** %9, align 8
  %15 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %16 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohl(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @MAXPARAMLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @A, i32 0, i32 0), align 4
  %29 = load i32, i32* @abuf, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @A, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @A, i32 0, i32 1), align 4
  %31 = load %struct.ead_msg_number*, %struct.ead_msg_number** %9, align 8
  %32 = getelementptr inbounds %struct.ead_msg_number, %struct.ead_msg_number* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @memcpy(i32 %30, i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pktbuf, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store %struct.ead_msg* %37, %struct.ead_msg** %8, align 8
  %38 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %39 = load %struct.ead_msg_number*, %struct.ead_msg_number** %9, align 8
  %40 = call %struct.ead_msg_number* @EAD_DATA(%struct.ead_msg* %38, %struct.ead_msg_number* %39)
  store %struct.ead_msg_number* %40, %struct.ead_msg_number** %9, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @B, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @htonl(i32 %46)
  %48 = load %struct.ead_msg*, %struct.ead_msg** %8, align 8
  %49 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ead_msg_number*, %struct.ead_msg_number** %9, align 8
  %51 = getelementptr inbounds %struct.ead_msg_number, %struct.ead_msg_number* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @B, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @B, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %52, i32 %55, i32 %58)
  %60 = load i32, i32* @EAD_TYPE_SEND_AUTH, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 1, i32* %4, align 4
  br label %62

62:                                               ; preds = %27, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ead_msg_number* @EAD_DATA(%struct.ead_msg*, %struct.ead_msg_number*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
