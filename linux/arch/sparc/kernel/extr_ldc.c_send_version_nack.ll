; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_version_nack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_send_version_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32 }
%struct.ldc_packet = type { i32 }
%struct.ldc_version = type { i8*, i8* }

@LDC_NACK = common dso_local global i32 0, align 4
@LDC_VERS = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SEND VER NACK maj[%u] min[%u]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i8*, i8*)* @send_version_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_version_nack(%struct.ldc_channel* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ldc_packet*, align 8
  %9 = alloca %struct.ldc_version, align 8
  %10 = alloca i64, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %9, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %9, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %16 = load i32, i32* @LDC_NACK, align 4
  %17 = load i32, i32* @LDC_VERS, align 4
  %18 = call %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel* %15, i32 %16, i32 %17, %struct.ldc_version* %9, i32 16, i64* %10)
  store %struct.ldc_packet* %18, %struct.ldc_packet** %8, align 8
  %19 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %20 = icmp ne %struct.ldc_packet* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load i32, i32* @HS, align 4
  %23 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %9, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.ldc_version, %struct.ldc_version* %9, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @ldcdbg(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %26)
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %29 = load %struct.ldc_packet*, %struct.ldc_packet** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @send_tx_packet(%struct.ldc_channel* %28, %struct.ldc_packet* %29, i64 %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel*, i32, i32, %struct.ldc_version*, i32, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i8*, i8*) #1

declare dso_local i32 @send_tx_packet(%struct.ldc_channel*, %struct.ldc_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
