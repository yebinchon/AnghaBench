; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_writable_disc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_writable_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Wrong disc profile (%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown disc - no track?\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"wrong disc type (%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"disc not erasable\0A\00", align 1
@PACKET_SESSION_RESERVED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"can't write to last track (reserved)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, %struct.TYPE_3__*)* @pkt_writable_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_writable_disc(%struct.pktcdvd_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %7 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %11 [
    i32 10, label %9
    i32 65535, label %9
    i32 26, label %10
    i32 19, label %10
    i32 18, label %10
  ]

9:                                                ; preds = %2, %2
  br label %17

10:                                               ; preds = %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %13 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %14 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pkt_dbg(i32 2, %struct.pktcdvd_device* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %3, align 4
  br label %59

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 255
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %24 = call i32 @pkt_notice(%struct.pktcdvd_device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 32
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 0, i32* %3, align 4
  br label %59

41:                                               ; preds = %30, %25
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %48 = call i32 @pkt_notice(%struct.pktcdvd_device* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %41
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PACKET_SESSION_RESERVED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %57 = call i32 (%struct.pktcdvd_device*, i8*, ...) @pkt_err(%struct.pktcdvd_device* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %46, %35, %22, %11, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, i32) #1

declare dso_local i32 @pkt_notice(%struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @pkt_err(%struct.pktcdvd_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
