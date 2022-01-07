; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_handshake_compose_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_handshake_compose_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_packet = type { %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ldc_channel = type { i32 }

@LDC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ldc_packet* (%struct.ldc_channel*, i8*, i8*, i8*, i32, i64*)* @handshake_compose_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ldc_packet* @handshake_compose_ctrl(%struct.ldc_channel* %0, i8* %1, i8* %2, i8* %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.ldc_channel*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ldc_packet*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %7, align 8
  %15 = load i64*, i64** %12, align 8
  %16 = call %struct.ldc_packet* @handshake_get_tx_packet(%struct.ldc_channel* %14, i64* %15)
  store %struct.ldc_packet* %16, %struct.ldc_packet** %13, align 8
  %17 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %18 = icmp ne %struct.ldc_packet* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %6
  %20 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %21 = call i32 @memset(%struct.ldc_packet* %20, i32 0, i32 32)
  %22 = load i32, i32* @LDC_CTRL, align 4
  %23 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %24 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %27 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %30 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %19
  %34 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  %35 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @memcpy(i32 %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %19
  br label %42

42:                                               ; preds = %41, %6
  %43 = load %struct.ldc_packet*, %struct.ldc_packet** %13, align 8
  ret %struct.ldc_packet* %43
}

declare dso_local %struct.ldc_packet* @handshake_get_tx_packet(%struct.ldc_channel*, i64*) #1

declare dso_local i32 @memset(%struct.ldc_packet*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
