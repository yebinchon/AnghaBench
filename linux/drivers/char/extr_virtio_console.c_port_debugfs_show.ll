; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_debugfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_debugfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.port* }
%struct.port = type { i8*, i8*, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"guest_connected: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"host_connected: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"outvq_full: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"bytes_sent: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"bytes_received: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"bytes_discarded: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"is_console: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"console_vtermno: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @port_debugfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_debugfs_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.port*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.port*, %struct.port** %7, align 8
  store %struct.port* %8, %struct.port** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.port*, %struct.port** %5, align 8
  %11 = getelementptr inbounds %struct.port, %struct.port* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.port*, %struct.port** %5, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.port*, %struct.port** %5, align 8
  %24 = getelementptr inbounds %struct.port, %struct.port* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.port*, %struct.port** %5, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.port*, %struct.port** %5, align 8
  %34 = getelementptr inbounds %struct.port, %struct.port* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.port*, %struct.port** %5, align 8
  %39 = getelementptr inbounds %struct.port, %struct.port* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.port*, %struct.port** %5, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %50 = load %struct.port*, %struct.port** %5, align 8
  %51 = getelementptr inbounds %struct.port, %struct.port* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = load %struct.port*, %struct.port** %5, align 8
  %57 = call i64 @is_console_port(%struct.port* %56)
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %61 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = load %struct.port*, %struct.port** %5, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %66)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i64 @is_console_port(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
