; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_prfill_conf_uint.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_prfill_conf_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }
%struct.throtl_grp = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @tg_prfill_conf_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_prfill_conf_uint(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.blkg_policy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.throtl_grp*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %11 = call %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data* %10)
  store %struct.throtl_grp* %11, %struct.throtl_grp** %8, align 8
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %8, align 8
  %13 = bitcast %struct.throtl_grp* %12 to i8*
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr i8, i8* %13, i64 %15
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @UINT_MAX, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %25 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @__blkg_prfill_u64(%struct.seq_file* %24, %struct.blkg_policy_data* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data*) #1

declare dso_local i32 @__blkg_prfill_u64(%struct.seq_file*, %struct.blkg_policy_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
