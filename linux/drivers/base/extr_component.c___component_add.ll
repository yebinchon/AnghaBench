; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c___component_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c___component_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_ops = type { i32 }
%struct.component = type { i32, i32, i64, %struct.device*, %struct.component_ops* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"adding component (ops %ps)\0A\00", align 1
@component_mutex = common dso_local global i32 0, align 4
@component_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.component_ops*, i32)* @__component_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__component_add(%struct.device* %0, %struct.component_ops* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.component_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.component*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.component_ops* %1, %struct.component_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.component* @kzalloc(i32 32, i32 %10)
  store %struct.component* %11, %struct.component** %8, align 8
  %12 = load %struct.component*, %struct.component** %8, align 8
  %13 = icmp ne %struct.component* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.component_ops*, %struct.component_ops** %6, align 8
  %19 = load %struct.component*, %struct.component** %8, align 8
  %20 = getelementptr inbounds %struct.component, %struct.component* %19, i32 0, i32 4
  store %struct.component_ops* %18, %struct.component_ops** %20, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.component*, %struct.component** %8, align 8
  %23 = getelementptr inbounds %struct.component, %struct.component* %22, i32 0, i32 3
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.component*, %struct.component** %8, align 8
  %26 = getelementptr inbounds %struct.component, %struct.component* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.component_ops*, %struct.component_ops** %6, align 8
  %29 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.component_ops* %28)
  %30 = call i32 @mutex_lock(i32* @component_mutex)
  %31 = load %struct.component*, %struct.component** %8, align 8
  %32 = getelementptr inbounds %struct.component, %struct.component* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %32, i32* @component_list)
  %34 = load %struct.component*, %struct.component** %8, align 8
  %35 = call i32 @try_to_bring_up_masters(%struct.component* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %17
  %39 = load %struct.component*, %struct.component** %8, align 8
  %40 = getelementptr inbounds %struct.component, %struct.component* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.component*, %struct.component** %8, align 8
  %45 = getelementptr inbounds %struct.component, %struct.component* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.component*, %struct.component** %8, align 8
  %48 = call i32 @remove_component(i64 %46, %struct.component* %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.component*, %struct.component** %8, align 8
  %51 = getelementptr inbounds %struct.component, %struct.component* %50, i32 0, i32 1
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.component*, %struct.component** %8, align 8
  %54 = call i32 @kfree(%struct.component* %53)
  br label %55

55:                                               ; preds = %49, %17
  %56 = call i32 @mutex_unlock(i32* @component_mutex)
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.component* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.component_ops*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @try_to_bring_up_masters(%struct.component*) #1

declare dso_local i32 @remove_component(i64, %struct.component*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.component*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
