; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_kill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_kill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.binderfs_info* }
%struct.binderfs_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @binderfs_kill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binderfs_kill_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.binderfs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = getelementptr inbounds %struct.super_block, %struct.super_block* %4, i32 0, i32 0
  %6 = load %struct.binderfs_info*, %struct.binderfs_info** %5, align 8
  store %struct.binderfs_info* %6, %struct.binderfs_info** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @kill_litter_super(%struct.super_block* %7)
  %9 = load %struct.binderfs_info*, %struct.binderfs_info** %3, align 8
  %10 = icmp ne %struct.binderfs_info* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.binderfs_info*, %struct.binderfs_info** %3, align 8
  %13 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.binderfs_info*, %struct.binderfs_info** %3, align 8
  %18 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @put_ipc_ns(i64 %19)
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.binderfs_info*, %struct.binderfs_info** %3, align 8
  %23 = call i32 @kfree(%struct.binderfs_info* %22)
  ret void
}

declare dso_local i32 @kill_litter_super(%struct.super_block*) #1

declare dso_local i32 @put_ipc_ns(i64) #1

declare dso_local i32 @kfree(%struct.binderfs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
