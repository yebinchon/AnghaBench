; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_rewrite_one_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_rewrite_one_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.prio_queue = type { i32 }

@rewrite_one_error = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@rewrite_one_ok = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@rewrite_one_noparents = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.commit**, %struct.prio_queue*)* @rewrite_one_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rewrite_one_1(%struct.rev_info* %0, %struct.commit** %1, %struct.prio_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit**, align 8
  %7 = alloca %struct.prio_queue*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit** %1, %struct.commit*** %6, align 8
  store %struct.prio_queue* %2, %struct.prio_queue** %7, align 8
  br label %9

9:                                                ; preds = %61, %3
  %10 = load %struct.commit**, %struct.commit*** %6, align 8
  %11 = load %struct.commit*, %struct.commit** %10, align 8
  store %struct.commit* %11, %struct.commit** %8, align 8
  %12 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = load %struct.commit*, %struct.commit** %8, align 8
  %19 = load %struct.prio_queue*, %struct.prio_queue** %7, align 8
  %20 = call i64 @process_parents(%struct.rev_info* %17, %struct.commit* %18, i32* null, %struct.prio_queue* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @rewrite_one_error, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %9
  %26 = load %struct.commit*, %struct.commit** %8, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UNINTERESTING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %34, i32* %4, align 4
  br label %64

35:                                               ; preds = %25
  %36 = load %struct.commit*, %struct.commit** %8, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TREESAME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %35
  %46 = load %struct.commit*, %struct.commit** %8, align 8
  %47 = getelementptr inbounds %struct.commit, %struct.commit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @rewrite_one_noparents, align 4
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %45
  %53 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %54 = load %struct.commit*, %struct.commit** %8, align 8
  %55 = getelementptr inbounds %struct.commit, %struct.commit* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.commit* @one_relevant_parent(%struct.rev_info* %53, i32 %56)
  store %struct.commit* %57, %struct.commit** %8, align 8
  %58 = icmp eq %struct.commit* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @rewrite_one_ok, align 4
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %52
  %62 = load %struct.commit*, %struct.commit** %8, align 8
  %63 = load %struct.commit**, %struct.commit*** %6, align 8
  store %struct.commit* %62, %struct.commit** %63, align 8
  br label %9

64:                                               ; preds = %59, %50, %43, %33, %22
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @process_parents(%struct.rev_info*, %struct.commit*, i32*, %struct.prio_queue*) #1

declare dso_local %struct.commit* @one_relevant_parent(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
