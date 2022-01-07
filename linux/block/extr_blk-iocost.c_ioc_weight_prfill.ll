; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_weight_prfill.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_weight_prfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }
%struct.ioc_gq = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"%s %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @ioc_weight_prfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc_weight_prfill(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.blkg_policy_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ioc_gq*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %5, align 8
  %10 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @blkg_dev_name(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %5, align 8
  %14 = call %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data* %13)
  store %struct.ioc_gq* %14, %struct.ioc_gq** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.ioc_gq*, %struct.ioc_gq** %8, align 8
  %19 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.ioc_gq*, %struct.ioc_gq** %8, align 8
  %26 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %27)
  br label %29

29:                                               ; preds = %22, %17, %3
  ret i32 0
}

declare dso_local i8* @blkg_dev_name(i32) #1

declare dso_local %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
