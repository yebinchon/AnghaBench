; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_one_parent_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_one_parent_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list*, %struct.TYPE_2__ }
%struct.commit_list = type { i32, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.commit_stack = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit_stack*)* @mark_one_parent_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_one_parent_uninteresting(%struct.commit* %0, %struct.commit_stack* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_stack*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit_stack* %1, %struct.commit_stack** %4, align 8
  %6 = load %struct.commit*, %struct.commit** %3, align 8
  %7 = getelementptr inbounds %struct.commit, %struct.commit* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @UNINTERESTING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* @UNINTERESTING, align 4
  %16 = load %struct.commit*, %struct.commit** %3, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %15
  store i32 %20, i32* %18, align 8
  %21 = load %struct.commit*, %struct.commit** %3, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = load %struct.commit_list*, %struct.commit_list** %22, align 8
  store %struct.commit_list* %23, %struct.commit_list** %5, align 8
  br label %24

24:                                               ; preds = %33, %14
  %25 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %26 = icmp ne %struct.commit_list* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.commit_stack*, %struct.commit_stack** %4, align 8
  %29 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %30 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @commit_stack_push(%struct.commit_stack* %28, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %35 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %34, i32 0, i32 1
  %36 = load %struct.commit_list*, %struct.commit_list** %35, align 8
  store %struct.commit_list* %36, %struct.commit_list** %5, align 8
  br label %24

37:                                               ; preds = %13, %24
  ret void
}

declare dso_local i32 @commit_stack_push(%struct.commit_stack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
