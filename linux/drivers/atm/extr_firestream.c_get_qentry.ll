; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_get_qentry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_get_qentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FS_QENTRY = type { i32 }
%struct.fs_dev = type { i32 }
%struct.queue = type { i32 }

@Q_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.FS_QENTRY* (%struct.fs_dev*, %struct.queue*)* @get_qentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.FS_QENTRY* @get_qentry(%struct.fs_dev* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.queue*, align 8
  store %struct.fs_dev* %0, %struct.fs_dev** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %5 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %6 = load %struct.queue*, %struct.queue** %4, align 8
  %7 = getelementptr inbounds %struct.queue, %struct.queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @Q_WP(i32 %8)
  %10 = call i32 @read_fs(%struct.fs_dev* %5, i32 %9)
  %11 = load i32, i32* @Q_ADDR_MASK, align 4
  %12 = and i32 %10, %11
  %13 = call %struct.FS_QENTRY* @bus_to_virt(i32 %12)
  ret %struct.FS_QENTRY* %13
}

declare dso_local %struct.FS_QENTRY* @bus_to_virt(i32) #1

declare dso_local i32 @read_fs(%struct.fs_dev*, i32) #1

declare dso_local i32 @Q_WP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
