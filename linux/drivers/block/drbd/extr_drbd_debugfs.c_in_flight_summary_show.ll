; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_in_flight_summary_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_in_flight_summary_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drbd_resource* }
%struct.drbd_resource = type { i32 }
%struct.drbd_connection = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"v: %u\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"oldest bitmap IO\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"meta data IO\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"socket buffer stats\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unread receive buffer: %u Byte\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"unacked send buffer: %u Byte\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"oldest peer requests\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"application requests waiting for activity log\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"oldest application requests\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"generated in %d ms\0A\00", align 1
@drbd_destroy_connection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @in_flight_summary_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_flight_summary_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drbd_resource*, align 8
  %7 = alloca %struct.drbd_connection*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.drbd_resource*, %struct.drbd_resource** %12, align 8
  store %struct.drbd_resource* %13, %struct.drbd_resource** %6, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %16 = call %struct.drbd_connection* @first_connection(%struct.drbd_resource* %15)
  store %struct.drbd_connection* %16, %struct.drbd_connection** %7, align 8
  %17 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %18 = icmp ne %struct.drbd_connection* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %21 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %20, i32 0, i32 0
  %22 = call i32 @kref_get_unless_zero(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @ESTALE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %126

27:                                               ; preds = %19
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = call i32 @seq_puts(%struct.seq_file* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @seq_print_resource_pending_bitmap_io(%struct.seq_file* %32, %struct.drbd_resource* %33, i64 %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = call i32 @seq_putc(%struct.seq_file* %36, i8 signext 10)
  %38 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @seq_print_resource_pending_meta_io(%struct.seq_file* %40, %struct.drbd_resource* %41, i64 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 @seq_putc(%struct.seq_file* %44, i8 signext 10)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %50 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %27
  %55 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %56 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.tcp_sock* @tcp_sk(i32 %60)
  store %struct.tcp_sock* %61, %struct.tcp_sock** %9, align 8
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %10, align 4
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %10, align 4
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %54, %27
  %83 = call i32 (...) @rcu_read_unlock()
  %84 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %85 = call i32 @seq_putc(%struct.seq_file* %84, i8 signext 10)
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = call i32 @seq_puts(%struct.seq_file* %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %89 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @seq_print_resource_pending_peer_requests(%struct.seq_file* %88, %struct.drbd_resource* %89, i64 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %93 = call i32 @seq_putc(%struct.seq_file* %92, i8 signext 10)
  %94 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %95 = call i32 @seq_puts(%struct.seq_file* %94, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @seq_print_waiting_for_AL(%struct.seq_file* %96, %struct.drbd_resource* %97, i64 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %101 = call i32 @seq_putc(%struct.seq_file* %100, i8 signext 10)
  %102 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  %106 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @seq_print_resource_transfer_log_summary(%struct.seq_file* %104, %struct.drbd_resource* %105, %struct.drbd_connection* %106, i64 %107)
  %109 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %110 = call i32 @seq_putc(%struct.seq_file* %109, i8 signext 10)
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i64, i64* %8, align 8
  %113 = sub i64 %111, %112
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %82
  %117 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @jiffies_to_msecs(i64 %118)
  %120 = call i32 @seq_printf(%struct.seq_file* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %116, %82
  %122 = load %struct.drbd_connection*, %struct.drbd_connection** %7, align 8
  %123 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %122, i32 0, i32 0
  %124 = load i32, i32* @drbd_destroy_connection, align 4
  %125 = call i32 @kref_put(i32* %123, i32 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %24
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.drbd_connection* @first_connection(%struct.drbd_resource*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_print_resource_pending_bitmap_io(%struct.seq_file*, %struct.drbd_resource*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_print_resource_pending_meta_io(%struct.seq_file*, %struct.drbd_resource*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_sock* @tcp_sk(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @seq_print_resource_pending_peer_requests(%struct.seq_file*, %struct.drbd_resource*, i64) #1

declare dso_local i32 @seq_print_waiting_for_AL(%struct.seq_file*, %struct.drbd_resource*, i64) #1

declare dso_local i32 @seq_print_resource_transfer_log_summary(%struct.seq_file*, %struct.drbd_resource*, %struct.drbd_connection*, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
