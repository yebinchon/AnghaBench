; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_v_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_atmtcp.c_atmtcp_v_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i16, i32, i32, i32 }
%struct.atmtcp_control = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i16, i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@AF_ATMPVC = common dso_local global i32 0, align 4
@ATM_VPI_UNSPEC = common dso_local global i16 0, align 2
@ATM_VCI_UNSPEC = common dso_local global i32 0, align 4
@ATMTCP_CTRL_OPEN = common dso_local global i32 0, align 4
@ATM_VF_ADDR = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @atmtcp_v_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_v_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.atmtcp_control, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %9 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 4
  store i16 %10, i16* %6, align 2
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = call i32 @memset(%struct.atmtcp_control* %4, i32 0, i32 40)
  %15 = load i32, i32* @AF_ATMPVC, align 4
  %16 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load i16, i16* %6, align 2
  %19 = sext i16 %18 to i32
  %20 = call i8* @htons(i32 %19)
  %21 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i16, i16* %6, align 2
  %24 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i16 %23, i16* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i16, i16* %6, align 2
  %36 = sext i16 %35 to i32
  %37 = load i16, i16* @ATM_VPI_UNSPEC, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ATM_VCI_UNSPEC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %1
  store i32 0, i32* %2, align 4
  br label %74

45:                                               ; preds = %40
  %46 = load i32, i32* @ATMTCP_CTRL_OPEN, align 4
  %47 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.atmtcp_control, %struct.atmtcp_control* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @ATM_VF_ADDR, align 4
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 2
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @ATM_VF_READY, align 4
  %57 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %58 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %57, i32 0, i32 2
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %61 = load i32, i32* @ATMTCP_CTRL_OPEN, align 4
  %62 = load i32, i32* @ATM_VF_READY, align 4
  %63 = call i32 @atmtcp_send_control(%struct.atm_vcc* %60, i32 %61, %struct.atmtcp_control* %4, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %45
  %69 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %70 = call %struct.TYPE_8__* @sk_atm(%struct.atm_vcc* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %66, %44
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.atmtcp_control*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atmtcp_send_control(%struct.atm_vcc*, i32, %struct.atmtcp_control*, i32) #1

declare dso_local %struct.TYPE_8__* @sk_atm(%struct.atm_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
