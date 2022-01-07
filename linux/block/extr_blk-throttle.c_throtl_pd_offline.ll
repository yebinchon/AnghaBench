; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_offline.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pd_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.throtl_grp = type { %struct.TYPE_3__*, i64**, i64** }
%struct.TYPE_3__ = type { i64, i32* }

@READ = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @throtl_pd_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_pd_offline(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.throtl_grp*, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %4 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %5 = call %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data* %4)
  store %struct.throtl_grp* %5, %struct.throtl_grp** %3, align 8
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 2
  %8 = load i64**, i64*** %7, align 8
  %9 = load i64, i64* @READ, align 8
  %10 = getelementptr inbounds i64*, i64** %8, i64 %9
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* @LIMIT_LOW, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 2
  %16 = load i64**, i64*** %15, align 8
  %17 = load i64, i64* @WRITE, align 8
  %18 = getelementptr inbounds i64*, i64** %16, i64 %17
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @LIMIT_LOW, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %23 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %22, i32 0, i32 1
  %24 = load i64**, i64*** %23, align 8
  %25 = load i64, i64* @READ, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @LIMIT_LOW, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %31 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %30, i32 0, i32 1
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64, i64* @WRITE, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @LIMIT_LOW, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %39 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @blk_throtl_update_limit_valid(%struct.TYPE_3__* %40)
  %42 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %43 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %48 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %1
  %56 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %57 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @throtl_upgrade_state(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %55, %1
  ret void
}

declare dso_local %struct.throtl_grp* @pd_to_tg(%struct.blkg_policy_data*) #1

declare dso_local i32 @blk_throtl_update_limit_valid(%struct.TYPE_3__*) #1

declare dso_local i32 @throtl_upgrade_state(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
