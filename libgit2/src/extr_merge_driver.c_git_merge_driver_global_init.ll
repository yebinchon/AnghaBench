; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_global_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge_driver.c_git_merge_driver_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@merge_driver_registry = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@merge_driver_entry_cmp = common dso_local global i32 0, align 4
@merge_driver_name__text = common dso_local global i32 0, align 4
@git_merge_driver__text = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@merge_driver_name__union = common dso_local global i32 0, align 4
@git_merge_driver__union = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@merge_driver_name__binary = common dso_local global i32 0, align 4
@git_merge_driver__binary = common dso_local global i32 0, align 4
@git_merge_driver_global_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_driver_global_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @git_rwlock_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @merge_driver_registry, i32 0, i32 1))
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %34

6:                                                ; preds = %0
  %7 = load i32, i32* @merge_driver_entry_cmp, align 4
  %8 = call i32 @git_vector_init(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @merge_driver_registry, i32 0, i32 0), i32 3, i32 %7)
  store i32 %8, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %27

11:                                               ; preds = %6
  %12 = load i32, i32* @merge_driver_name__text, align 4
  %13 = call i32 @merge_driver_registry_insert(i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @git_merge_driver__text, i32 0, i32 0))
  store i32 %13, i32* %2, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @merge_driver_name__union, align 4
  %17 = call i32 @merge_driver_registry_insert(i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @git_merge_driver__union, i32 0, i32 0))
  store i32 %17, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @merge_driver_name__binary, align 4
  %21 = call i32 @merge_driver_registry_insert(i32 %20, i32* @git_merge_driver__binary)
  store i32 %21, i32* %2, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %11
  br label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @git_merge_driver_global_shutdown, align 4
  %26 = call i32 @git__on_shutdown(i32 %25)
  br label %27

27:                                               ; preds = %24, %23, %10
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @git_vector_free_deep(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @merge_driver_registry, i32 0, i32 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %5
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @git_rwlock_init(i32*) #1

declare dso_local i32 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32 @merge_driver_registry_insert(i32, i32*) #1

declare dso_local i32 @git__on_shutdown(i32) #1

declare dso_local i32 @git_vector_free_deep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
