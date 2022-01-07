; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_process_rts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_process_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ldc_packet = type { i64, i64, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GOT RTS stype[%x] seqid[%x] env[%x]\0A\00", align 1
@LDC_INFO = common dso_local global i64 0, align 8
@LDC_HS_GOTVERS = common dso_local global i64 0, align 8
@LDC_HS_SENTRTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, %struct.ldc_packet*)* @process_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_rts(%struct.ldc_channel* %0, %struct.ldc_packet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca %struct.ldc_packet*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store %struct.ldc_packet* %1, %struct.ldc_packet** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %8 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %11 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %14 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ldcdbg(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i64 %15)
  %17 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %18 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LDC_INFO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %2
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LDC_HS_GOTVERS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %30 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %28, %22, %2
  %38 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %39 = call i32 @LDC_ABORT(%struct.ldc_channel* %38)
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %28
  %41 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %42 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %45 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ldc_packet*, %struct.ldc_packet** %5, align 8
  %47 = getelementptr inbounds %struct.ldc_packet, %struct.ldc_packet* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* @LDC_HS_SENTRTR, align 8
  %52 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %55 = call i64 @send_rtr(%struct.ldc_channel* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %59 = call i32 @LDC_ABORT(%struct.ldc_channel* %58)
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %37
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ldcdbg(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @LDC_ABORT(%struct.ldc_channel*) #1

declare dso_local i64 @send_rtr(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
