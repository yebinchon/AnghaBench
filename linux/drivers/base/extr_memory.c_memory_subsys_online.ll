; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_memory_subsys_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_memory_subsys_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.memory_block = type { i64, i32 }

@MEM_ONLINE = common dso_local global i64 0, align 8
@MMOP_ONLINE_KEEP = common dso_local global i32 0, align 4
@MEM_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @memory_subsys_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_subsys_online(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.memory_block*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.memory_block* @to_memory_block(%struct.device* %6)
  store %struct.memory_block* %7, %struct.memory_block** %4, align 8
  %8 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %9 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEM_ONLINE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %16 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @MMOP_ONLINE_KEEP, align 4
  %21 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %22 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %25 = load i64, i64* @MEM_ONLINE, align 8
  %26 = load i32, i32* @MEM_OFFLINE, align 4
  %27 = call i32 @memory_block_change_state(%struct.memory_block* %24, i64 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %29 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.memory_block* @to_memory_block(%struct.device*) #1

declare dso_local i32 @memory_block_change_state(%struct.memory_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
