; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.queue = type { i32, i32 }

@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Free queue: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_dev*, %struct.queue*)* @free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_queue(%struct.fs_dev* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.queue*, align 8
  store %struct.fs_dev* %0, %struct.fs_dev** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  %5 = call i32 (...) @func_enter()
  %6 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %7 = load %struct.queue*, %struct.queue** %4, align 8
  %8 = getelementptr inbounds %struct.queue, %struct.queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @Q_SA(i32 %9)
  %11 = call i32 @write_fs(%struct.fs_dev* %6, i32 %10, i32 0)
  %12 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %13 = load %struct.queue*, %struct.queue** %4, align 8
  %14 = getelementptr inbounds %struct.queue, %struct.queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Q_EA(i32 %15)
  %17 = call i32 @write_fs(%struct.fs_dev* %12, i32 %16, i32 0)
  %18 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %19 = load %struct.queue*, %struct.queue** %4, align 8
  %20 = getelementptr inbounds %struct.queue, %struct.queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Q_RP(i32 %21)
  %23 = call i32 @write_fs(%struct.fs_dev* %18, i32 %22, i32 0)
  %24 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %25 = load %struct.queue*, %struct.queue** %4, align 8
  %26 = getelementptr inbounds %struct.queue, %struct.queue* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Q_WP(i32 %27)
  %29 = call i32 @write_fs(%struct.fs_dev* %24, i32 %28, i32 0)
  %30 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %31 = load %struct.queue*, %struct.queue** %4, align 8
  %32 = getelementptr inbounds %struct.queue, %struct.queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fs_dprintk(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.queue*, %struct.queue** %4, align 8
  %36 = getelementptr inbounds %struct.queue, %struct.queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

declare dso_local i32 @Q_SA(i32) #1

declare dso_local i32 @Q_EA(i32) #1

declare dso_local i32 @Q_RP(i32) #1

declare dso_local i32 @Q_WP(i32) #1

declare dso_local i32 @fs_dprintk(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
