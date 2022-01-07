; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_prfill_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_prfill_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }
%struct.iolatency_grp = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s target=%llu\0A\00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @iolatency_prfill_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iolatency_prfill_limit(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.blkg_policy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iolatency_grp*, align 8
  %9 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %11 = call %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data* %10)
  store %struct.iolatency_grp* %11, %struct.iolatency_grp** %8, align 8
  %12 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %13 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @blkg_dev_name(i32 %14)
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %20 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %33

24:                                               ; preds = %18
  %25 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.iolatency_grp*, %struct.iolatency_grp** %8, align 8
  %28 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NSEC_PER_USEC, align 4
  %31 = call i32 @div_u64(i32 %29, i32 %30)
  %32 = call i32 @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.iolatency_grp* @pd_to_lat(%struct.blkg_policy_data*) #1

declare dso_local i8* @blkg_dev_name(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
