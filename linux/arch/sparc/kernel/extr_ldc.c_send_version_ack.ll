; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_version_ack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_version_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_version = type { i32, i32 }
%struct.ldc_packet = type { i32 }

@LDC_ACK = common dso_local global i32 0, align 4
@LDC_VERS = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SEND VER ACK maj[%u] min[%u]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_version*)* @send_version_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_version_ack(%struct.ldc_channel* %0, %struct.ldc_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_version*, align 8
  %6 = alloca %struct.ldc_packet*, align 8
  %7 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_version* %1, %struct.ldc_version** %5, align 8
  %8 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %9 = load i32, i32* @LDC_ACK, align 4
  %10 = load i32, i32* @LDC_VERS, align 4
  %11 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %12 = call %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel* %8, i32 %9, i32 %10, %struct.ldc_version* %11, i32 8, i64* %7)
  store %struct.ldc_packet* %12, %struct.ldc_packet** %6, align 8
  %13 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %14 = icmp ne %struct.ldc_packet* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @HS, align 4
  %17 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %18 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ldc_version*, %struct.ldc_version** %5, align 8
  %21 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ldcdbg(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %25 = load %struct.ldc_packet*, %struct.ldc_packet** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @send_tx_packet(%struct.ldc_channel* %24, %struct.ldc_packet* %25, i64 %26)
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel*, i32, i32, %struct.ldc_version*, i32, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i32, i32) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
