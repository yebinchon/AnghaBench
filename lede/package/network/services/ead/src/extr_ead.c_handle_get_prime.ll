; ModuleID = '/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_get_prime.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/services/ead/src/extr_ead.c_handle_get_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.ead_msg }
%struct.ead_msg = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ead_msg_salt = type { i32, i32, i32, i64 }
%struct.ead_packet = type { i32 }

@pktbuf = common dso_local global %struct.TYPE_8__* null, align 8
@tce = common dso_local global %struct.TYPE_7__* null, align 8
@ts = common dso_local global %struct.TYPE_6__* null, align 8
@pw_saltbuf = common dso_local global i32 0, align 4
@MAXSALTLEN = common dso_local global i32 0, align 4
@EAD_TYPE_SEND_A = common dso_local global i32 0, align 4
@salt = common dso_local global %struct.ead_msg_salt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ead_packet*, i32, i32*)* @handle_get_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_get_prime(%struct.ead_packet* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ead_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ead_msg*, align 8
  %8 = alloca %struct.ead_msg_salt*, align 8
  store %struct.ead_packet* %0, %struct.ead_packet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pktbuf, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.ead_msg* %10, %struct.ead_msg** %7, align 8
  %11 = load %struct.ead_msg*, %struct.ead_msg** %7, align 8
  %12 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %8, align 8
  %13 = ptrtoint %struct.ead_msg_salt* %12 to i32
  %14 = call %struct.ead_msg_salt* @EAD_DATA(%struct.ead_msg* %11, i32 %13)
  store %struct.ead_msg_salt* %14, %struct.ead_msg_salt** %8, align 8
  %15 = call i32 @htonl(i32 24)
  %16 = load %struct.ead_msg*, %struct.ead_msg** %7, align 8
  %17 = getelementptr inbounds %struct.ead_msg, %struct.ead_msg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @tce, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %8, align 8
  %23 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ts, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %8, align 8
  %29 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %8, align 8
  %31 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ts, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ts, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %32, i32 %36, i32 %40)
  %42 = load %struct.ead_msg_salt*, %struct.ead_msg_salt** %8, align 8
  %43 = getelementptr inbounds %struct.ead_msg_salt, %struct.ead_msg_salt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @pw_saltbuf, align 4
  %46 = load i32, i32* @MAXSALTLEN, align 4
  %47 = call i32 @memcpy(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @EAD_TYPE_SEND_A, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  ret i32 1
}

declare dso_local %struct.ead_msg_salt* @EAD_DATA(%struct.ead_msg*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
