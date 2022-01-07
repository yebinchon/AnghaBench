; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_tree_next.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_tree_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_16__*, i32 }

@CT_WORKSPACE = common dso_local global i64 0, align 8
@CF_NONE = common dso_local global i64 0, align 8
@CT_FLOATING_CON = common dso_local global i64 0, align 8
@floating_head = common dso_local global i32 0, align 4
@floating_windows = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_next(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_16__* @get_tree_next(%struct.TYPE_16__* %10, i32 %11)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %88

16:                                               ; preds = %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CT_WORKSPACE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call %struct.TYPE_16__* @con_descend_focused(%struct.TYPE_16__* %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CF_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = call %struct.TYPE_16__* @con_descend_tiling_focused(%struct.TYPE_16__* %31)
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %7, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = icmp ne %struct.TYPE_16__* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %6, align 8
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @workspace_show(%struct.TYPE_16__* %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @con_activate(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = call i32 @x_set_warp_to(i32* %45)
  br label %88

47:                                               ; preds = %16
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CT_FLOATING_CON, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %8, align 8
  br label %57

57:                                               ; preds = %64, %53
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* @floating_head, align 4
  %61 = call %struct.TYPE_16__* @TAILQ_LAST(i32* %59, i32 %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = icmp ne %struct.TYPE_16__* %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32, i32* @floating_head, align 4
  %68 = call %struct.TYPE_16__* @TAILQ_LAST(i32* %66, i32 %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %9, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = load i32, i32* @floating_windows, align 4
  %73 = call i32 @TAILQ_REMOVE(i32* %70, %struct.TYPE_16__* %71, i32 %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = load i32, i32* @floating_windows, align 4
  %78 = call i32 @TAILQ_INSERT_HEAD(i32* %75, %struct.TYPE_16__* %76, i32 %77)
  br label %57

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = call %struct.TYPE_16__* @con_get_workspace(%struct.TYPE_16__* %82)
  %84 = call i32 @workspace_show(%struct.TYPE_16__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = call %struct.TYPE_16__* @con_descend_focused(%struct.TYPE_16__* %85)
  %87 = call i32 @con_activate(%struct.TYPE_16__* %86)
  br label %88

88:                                               ; preds = %81, %39, %15
  ret void
}

declare dso_local %struct.TYPE_16__* @get_tree_next(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @con_descend_focused(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @con_descend_tiling_focused(%struct.TYPE_16__*) #1

declare dso_local i32 @workspace_show(%struct.TYPE_16__*) #1

declare dso_local i32 @con_activate(%struct.TYPE_16__*) #1

declare dso_local i32 @x_set_warp_to(i32*) #1

declare dso_local %struct.TYPE_16__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @con_get_workspace(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
