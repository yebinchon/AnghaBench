; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_callback_history_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_callback_history_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.drbd_connection* }
%struct.drbd_connection = type { i32 }
%struct.file = type { i32 }

@callback_history_show = common dso_local global i32 0, align 4
@drbd_destroy_connection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @callback_history_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback_history_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.drbd_connection*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  store %struct.drbd_connection* %8, %struct.drbd_connection** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = load i32, i32* @callback_history_show, align 4
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %12 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %13 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %12, i32 0, i32 0
  %14 = load i32, i32* @drbd_destroy_connection, align 4
  %15 = call i32 @drbd_single_open(%struct.file* %9, i32 %10, %struct.drbd_connection* %11, i32* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @drbd_single_open(%struct.file*, i32, %struct.drbd_connection*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
