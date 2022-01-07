; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_submit_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_submit_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.fs_dev = type { i32 }
%struct.queue = type { i32 }
%struct.FS_QENTRY = type { i8*, i8*, i8*, i8* }

@pq = common dso_local global %struct.TYPE_2__* null, align 8
@qp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_dev*, %struct.queue*, i8*, i8*, i8*, i8*)* @submit_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_queue(%struct.fs_dev* %0, %struct.queue* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.fs_dev*, align 8
  %8 = alloca %struct.queue*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.FS_QENTRY*, align 8
  store %struct.fs_dev* %0, %struct.fs_dev** %7, align 8
  store %struct.queue* %1, %struct.queue** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %15 = load %struct.queue*, %struct.queue** %8, align 8
  %16 = call %struct.FS_QENTRY* @get_qentry(%struct.fs_dev* %14, %struct.queue* %15)
  store %struct.FS_QENTRY* %16, %struct.FS_QENTRY** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %19 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %22 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %25 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %28 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.fs_dev*, %struct.fs_dev** %7, align 8
  %30 = load %struct.queue*, %struct.queue** %8, align 8
  %31 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %13, align 8
  %32 = call i32 @submit_qentry(%struct.fs_dev* %29, %struct.queue* %30, %struct.FS_QENTRY* %31)
  ret void
}

declare dso_local %struct.FS_QENTRY* @get_qentry(%struct.fs_dev*, %struct.queue*) #1

declare dso_local i32 @submit_qentry(%struct.fs_dev*, %struct.queue*, %struct.FS_QENTRY*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
