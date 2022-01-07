; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_tree_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_tree_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { %struct.object }
%struct.object = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_tree_uninteresting(%struct.repository* %0, %struct.tree* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.tree* %1, %struct.tree** %4, align 8
  %6 = load %struct.tree*, %struct.tree** %4, align 8
  %7 = icmp ne %struct.tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %28

9:                                                ; preds = %2
  %10 = load %struct.tree*, %struct.tree** %4, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  store %struct.object* %11, %struct.object** %5, align 8
  %12 = load %struct.object*, %struct.object** %5, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UNINTERESTING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %28

19:                                               ; preds = %9
  %20 = load i32, i32* @UNINTERESTING, align 4
  %21 = load %struct.object*, %struct.object** %5, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.repository*, %struct.repository** %3, align 8
  %26 = load %struct.tree*, %struct.tree** %4, align 8
  %27 = call i32 @mark_tree_contents_uninteresting(%struct.repository* %25, %struct.tree* %26)
  br label %28

28:                                               ; preds = %19, %18, %8
  ret void
}

declare dso_local i32 @mark_tree_contents_uninteresting(%struct.repository*, %struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
