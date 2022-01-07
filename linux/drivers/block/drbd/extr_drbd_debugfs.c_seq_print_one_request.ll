; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_one_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_one_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_request = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"0x%x\09%llu\09%u\09%s\00", align 1
@RQ_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@RQ_IN_ACT_LOG = common dso_local global i32 0, align 4
@RQ_LOCAL_PENDING = common dso_local global i32 0, align 4
@RQ_NET_SENT = common dso_local global i32 0, align 4
@RQ_NET_PENDING = common dso_local global i32 0, align 4
@RQ_NET_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.drbd_request*, i64)* @seq_print_one_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_one_request(%struct.seq_file* %0, %struct.drbd_request* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.drbd_request*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %9 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %13 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %16 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 9
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RQ_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %18, i32 %23, i8* %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %34 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = call i32 @jiffies_to_msecs(i64 %36)
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @RQ_IN_ACT_LOG, align 4
  %42 = and i32 %40, %41
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %45 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = sub i64 %43, %46
  %48 = call i32 @seq_print_age_or_dash(%struct.seq_file* %39, i32 %42, i64 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %52 = and i32 %50, %51
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %55 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = call i32 @seq_print_age_or_dash(%struct.seq_file* %49, i32 %52, i64 %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @RQ_NET_SENT, align 4
  %62 = and i32 %60, %61
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %65 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = call i32 @seq_print_age_or_dash(%struct.seq_file* %59, i32 %62, i64 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RQ_NET_SENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %3
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RQ_NET_PENDING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %74, %3
  %81 = phi i1 [ false, %3 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %85 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %83, %86
  %88 = call i32 @seq_print_age_or_dash(%struct.seq_file* %69, i32 %82, i64 %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @RQ_NET_DONE, align 4
  %92 = and i32 %90, %91
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %95 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %93, %96
  %98 = call i32 @seq_print_age_or_dash(%struct.seq_file* %89, i32 %92, i64 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %100 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %101 = call i32 @seq_print_request_state(%struct.seq_file* %99, %struct.drbd_request* %100)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @seq_print_age_or_dash(%struct.seq_file*, i32, i64) #1

declare dso_local i32 @seq_print_request_state(%struct.seq_file*, %struct.drbd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
