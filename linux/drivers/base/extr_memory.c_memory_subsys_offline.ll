; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_memory_subsys_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_memory_subsys_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.memory_block = type { i64, i64 }

@MEM_OFFLINE = common dso_local global i64 0, align 8
@sections_per_block = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MEM_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @memory_subsys_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_subsys_offline(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.memory_block*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.memory_block* @to_memory_block(%struct.device* %5)
  store %struct.memory_block* %6, %struct.memory_block** %4, align 8
  %7 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %8 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MEM_OFFLINE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %15 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @sections_per_block, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.memory_block*, %struct.memory_block** %4, align 8
  %24 = load i64, i64* @MEM_OFFLINE, align 8
  %25 = load i32, i32* @MEM_ONLINE, align 4
  %26 = call i32 @memory_block_change_state(%struct.memory_block* %23, i64 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %19, %12
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.memory_block* @to_memory_block(%struct.device*) #1

declare dso_local i32 @memory_block_change_state(%struct.memory_block*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
