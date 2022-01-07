; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_sender.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32* }
%struct.ssif_info = type { i32, %struct.TYPE_2__*, %struct.ipmi_smi_msg* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i64, i64 }

@SSIF_DEBUG_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"**Enqueue %02x %02x: %lld.%6.6ld\0A\00", align 1
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ipmi_smi_msg*)* @sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sender(i8* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca %struct.ssif_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.timespec64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ssif_info*
  store %struct.ssif_info* %10, %struct.ssif_info** %5, align 8
  %11 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %12 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %11, i32 0, i32 2
  %13 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %12, align 8
  %14 = call i32 @BUG_ON(%struct.ipmi_smi_msg* %13)
  %15 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %16 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %17 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %16, i32 0, i32 2
  store %struct.ipmi_smi_msg* %15, %struct.ipmi_smi_msg** %17, align 8
  %18 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %19 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %18, i64* %6)
  store i64* %19, i64** %7, align 8
  %20 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i32 @start_next_msg(%struct.ssif_info* %20, i64* %21)
  %23 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %24 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SSIF_DEBUG_TIMING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = call i32 @ktime_get_real_ts64(%struct.timespec64* %8)
  %31 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %32 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NSEC_PER_USEC, align 8
  %50 = sdiv i64 %48, %49
  %51 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %44, i64 %46, i64 %50)
  br label %52

52:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @BUG_ON(%struct.ipmi_smi_msg*) #1

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @start_next_msg(%struct.ssif_info*, i64*) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
