; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_ping.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ead_msg }
%struct.ead_msg = type { i32 }
%struct.ead_msg_pong = type { i32, i64* }
%struct.ead_packet = type { i32 }

@pktbuf = common dso_local global %struct.TYPE_2__* null, align 8
@dev_name = common dso_local global i32 0, align 4
@EAD_AUTH_MD5 = common dso_local global i32 0, align 4
@pong = common dso_local global %struct.ead_msg_pong* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ead_packet*, i32, i32*)* @handle_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ping(%struct.ead_packet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ead_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ead_msg*, align 8
  %8 = alloca %struct.ead_msg_pong*, align 8
  %9 = alloca i32, align 4
  store %struct.ead_packet* %0, %struct.ead_packet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pktbuf, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ead_msg* %11, %struct.ead_msg** %7, align 8
  %12 = load %struct.ead_msg*, %struct.ead_msg** %7, align 8
  %13 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %8, align 8
  %14 = ptrtoint %struct.ead_msg_pong* %13 to i32
  %15 = call %struct.ead_msg_pong* @EAD_DATA(%struct.ead_msg* %12, i32 %14)
  store %struct.ead_msg_pong* %15, %struct.ead_msg_pong** %8, align 8
  %16 = load i32, i32* @dev_name, align 4
  %17 = call i32 @strlen(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sgt i32 %18, 1024
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1024, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 16, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.ead_msg*, %struct.ead_msg** %7, align 8
  %28 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %8, align 8
  %30 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* @dev_name, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @strncpy(i64* %31, i32 %32, i32 %33)
  %35 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %8, align 8
  %36 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @EAD_AUTH_MD5, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = load %struct.ead_msg_pong*, %struct.ead_msg_pong** %8, align 8
  %44 = getelementptr inbounds %struct.ead_msg_pong, %struct.ead_msg_pong* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  ret i32 1
}

declare dso_local %struct.ead_msg_pong* @EAD_DATA(%struct.ead_msg*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
