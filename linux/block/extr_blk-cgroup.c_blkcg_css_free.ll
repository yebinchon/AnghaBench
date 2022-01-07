; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_css_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkcg_css_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64)* }
%struct.cgroup_subsys_state = type { i32 }
%struct.blkcg = type { i64*, i32 }

@blkcg_pol_mutex = common dso_local global i32 0, align 4
@BLKCG_MAX_POLS = common dso_local global i32 0, align 4
@blkcg_policy = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys_state*)* @blkcg_css_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkcg_css_free(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.blkcg*, align 8
  %4 = alloca i32, align 4
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %2, align 8
  %5 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %6 = call %struct.blkcg* @css_to_blkcg(%struct.cgroup_subsys_state* %5)
  store %struct.blkcg* %6, %struct.blkcg** %3, align 8
  %7 = call i32 @mutex_lock(i32* @blkcg_pol_mutex)
  %8 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %9 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %8, i32 0, i32 1
  %10 = call i32 @list_del(i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %41, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BLKCG_MAX_POLS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %17 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @blkcg_policy, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i64)*, i32 (i64)** %30, align 8
  %32 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %33 = getelementptr inbounds %struct.blkcg, %struct.blkcg* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %31(i64 %38)
  br label %40

40:                                               ; preds = %24, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %11

44:                                               ; preds = %11
  %45 = call i32 @mutex_unlock(i32* @blkcg_pol_mutex)
  %46 = load %struct.blkcg*, %struct.blkcg** %3, align 8
  %47 = call i32 @kfree(%struct.blkcg* %46)
  ret void
}

declare dso_local %struct.blkcg* @css_to_blkcg(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.blkcg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
