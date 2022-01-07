; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_prfill.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_prfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }
%struct.ioc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.ioc* }

@.str = private unnamed_addr constant [103 x i8] c"%s ctrl=%s model=linear rbps=%llu rseqiops=%llu rrandiops=%llu wbps=%llu wseqiops=%llu wrandiops=%llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@I_LCOEF_RBPS = common dso_local global i64 0, align 8
@I_LCOEF_RSEQIOPS = common dso_local global i64 0, align 8
@I_LCOEF_RRANDIOPS = common dso_local global i64 0, align 8
@I_LCOEF_WBPS = common dso_local global i64 0, align 8
@I_LCOEF_WSEQIOPS = common dso_local global i64 0, align 8
@I_LCOEF_WRANDIOPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @ioc_cost_model_prfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc_cost_model_prfill(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.blkg_policy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ioc*, align 8
  %10 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %12 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @blkg_dev_name(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %16 = call %struct.TYPE_4__* @pd_to_iocg(%struct.blkg_policy_data* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ioc*, %struct.ioc** %17, align 8
  store %struct.ioc* %18, %struct.ioc** %9, align 8
  %19 = load %struct.ioc*, %struct.ioc** %9, align 8
  %20 = getelementptr inbounds %struct.ioc, %struct.ioc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

26:                                               ; preds = %3
  %27 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.ioc*, %struct.ioc** %9, align 8
  %30 = getelementptr inbounds %struct.ioc, %struct.ioc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* @I_LCOEF_RBPS, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i64, i64* @I_LCOEF_RSEQIOPS, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* @I_LCOEF_RRANDIOPS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* @I_LCOEF_WBPS, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* @I_LCOEF_WSEQIOPS, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* @I_LCOEF_WRANDIOPS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %26, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i8* @blkg_dev_name(i32) #1

declare dso_local %struct.TYPE_4__* @pd_to_iocg(%struct.blkg_policy_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
