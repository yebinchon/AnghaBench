; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32, i32, i32 }

@pkt_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@debug_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_debugfs_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_debugfs_dev_new(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load i32, i32* @pkt_debugfs_root, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @pkt_debugfs_root, align 4
  %11 = call i32 @debugfs_create_dir(i32 %9, i32 %10)
  %12 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %13 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %15 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  br label %27

19:                                               ; preds = %6
  %20 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %21 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %24 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 292, i32 %22, %struct.pktcdvd_device* %23, i32* @debug_fops)
  %25 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %26 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %18, %5
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.pktcdvd_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
