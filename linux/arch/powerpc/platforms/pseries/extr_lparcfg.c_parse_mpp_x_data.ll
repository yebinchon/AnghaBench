; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_mpp_x_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_lparcfg.c_parse_mpp_x_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hvcall_mpp_x_data = type { i64, i64, i64, i64 }

@FW_FEATURE_XCMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"coalesced_bytes=%ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pool_coalesced_bytes=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"coalesce_pool_purr=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"coalesce_pool_spurr=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @parse_mpp_x_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mpp_x_data(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.hvcall_mpp_x_data, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = load i32, i32* @FW_FEATURE_XCMO, align 4
  %5 = call i32 @firmware_has_feature(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = call i64 @h_get_mpp_x(%struct.hvcall_mpp_x_data* %3)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %43

12:                                               ; preds = %8
  %13 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %14 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %22 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %31 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %40 = getelementptr inbounds %struct.hvcall_mpp_x_data, %struct.hvcall_mpp_x_data* %3, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %7, %11, %38, %34
  ret void
}

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i64 @h_get_mpp_x(%struct.hvcall_mpp_x_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
