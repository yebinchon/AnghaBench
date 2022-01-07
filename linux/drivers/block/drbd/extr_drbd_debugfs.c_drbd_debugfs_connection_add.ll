; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_connection_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_connection_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.TYPE_2__* }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [5 x i8] c"peer\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"callback_history\00", align 1
@connection_callback_history_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"oldest_requests\00", align 1
@connection_oldest_requests_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_debugfs_connection_add(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  %5 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %14 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %13, i32 0, i32 1
  store %struct.dentry* %12, %struct.dentry** %14, align 8
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %16 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %15, i32 0, i32 1
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  %18 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %19 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 288, %struct.dentry* %17, %struct.drbd_connection* %18, i32* @connection_callback_history_fops)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %22 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %21, i32 0, i32 2
  store %struct.dentry* %20, %struct.dentry** %22, align 8
  %23 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %24 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %23, i32 0, i32 1
  %25 = load %struct.dentry*, %struct.dentry** %24, align 8
  %26 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %27 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 288, %struct.dentry* %25, %struct.drbd_connection* %26, i32* @connection_oldest_requests_fops)
  store %struct.dentry* %27, %struct.dentry** %4, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %30 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %29, i32 0, i32 0
  store %struct.dentry* %28, %struct.dentry** %30, align 8
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.drbd_connection*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
