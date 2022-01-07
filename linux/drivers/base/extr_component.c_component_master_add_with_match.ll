; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_master_add_with_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_master_add_with_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_master_ops = type { i32 }
%struct.component_match = type { i32 }
%struct.master = type { i32, %struct.component_match*, %struct.component_master_ops*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@component_mutex = common dso_local global i32 0, align 4
@masters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @component_master_add_with_match(%struct.device* %0, %struct.component_master_ops* %1, %struct.component_match* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.component_master_ops*, align 8
  %7 = alloca %struct.component_match*, align 8
  %8 = alloca %struct.master*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.component_master_ops* %1, %struct.component_master_ops** %6, align 8
  store %struct.component_match* %2, %struct.component_match** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.component_match*, %struct.component_match** %7, align 8
  %12 = load %struct.component_match*, %struct.component_match** %7, align 8
  %13 = getelementptr inbounds %struct.component_match, %struct.component_match* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @component_match_realloc(%struct.device* %10, %struct.component_match* %11, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.master* @kzalloc(i32 32, i32 %21)
  store %struct.master* %22, %struct.master** %8, align 8
  %23 = load %struct.master*, %struct.master** %8, align 8
  %24 = icmp ne %struct.master* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.master*, %struct.master** %8, align 8
  %31 = getelementptr inbounds %struct.master, %struct.master* %30, i32 0, i32 3
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.component_master_ops*, %struct.component_master_ops** %6, align 8
  %33 = load %struct.master*, %struct.master** %8, align 8
  %34 = getelementptr inbounds %struct.master, %struct.master* %33, i32 0, i32 2
  store %struct.component_master_ops* %32, %struct.component_master_ops** %34, align 8
  %35 = load %struct.component_match*, %struct.component_match** %7, align 8
  %36 = load %struct.master*, %struct.master** %8, align 8
  %37 = getelementptr inbounds %struct.master, %struct.master* %36, i32 0, i32 1
  store %struct.component_match* %35, %struct.component_match** %37, align 8
  %38 = load %struct.master*, %struct.master** %8, align 8
  %39 = call i32 @component_master_debugfs_add(%struct.master* %38)
  %40 = call i32 @mutex_lock(i32* @component_mutex)
  %41 = load %struct.master*, %struct.master** %8, align 8
  %42 = getelementptr inbounds %struct.master, %struct.master* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %42, i32* @masters)
  %44 = load %struct.master*, %struct.master** %8, align 8
  %45 = call i32 @try_to_bring_up_master(%struct.master* %44, i32* null)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %28
  %49 = load %struct.master*, %struct.master** %8, align 8
  %50 = call i32 @free_master(%struct.master* %49)
  br label %51

51:                                               ; preds = %48, %28
  %52 = call i32 @mutex_unlock(i32* @component_mutex)
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %25, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @component_match_realloc(%struct.device*, %struct.component_match*, i32) #1

declare dso_local %struct.master* @kzalloc(i32, i32) #1

declare dso_local i32 @component_master_debugfs_add(%struct.master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @try_to_bring_up_master(%struct.master*, i32*) #1

declare dso_local i32 @free_master(%struct.master*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
