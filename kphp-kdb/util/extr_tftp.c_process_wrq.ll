; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_process_wrq.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_process_wrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@recv_wrq_packets = common dso_local global i32 0, align 4
@port = common dso_local global i64 0, align 8
@tftp_undef = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Write request packet wasn't sent to the TFTP port\00", align 1
@working_mode = common dso_local global i64 0, align 8
@CLIENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Write request packet was sent to client\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @process_wrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_wrq(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load i32, i32* @recv_wrq_packets, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @recv_wrq_packets, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @port, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @tftp_undef, align 4
  %13 = call i32 @tftp_store_error(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i64, i64* @working_mode, align 8
  %16 = load i64, i64* @CLIENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @tftp_undef, align 4
  %20 = call i32 @tftp_store_error(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @tftp_undef, align 4
  %23 = call i32 @tftp_store_error(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %18, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @tftp_store_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
