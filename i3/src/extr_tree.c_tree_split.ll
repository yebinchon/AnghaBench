; ModuleID = '/home/carl/AnghaBench/i3/src/extr_tree.c_tree_split.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_tree.c_tree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, double, %struct.TYPE_13__*, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Floating containers can't be split.\0A\00", align 1
@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Changing workspace_layout to L_DEFAULT\0A\00", align 1
@L_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Changing orientation of workspace\0A\00", align 1
@HORIZ = common dso_local global i64 0, align 8
@L_SPLITH = common dso_local global i64 0, align 8
@L_SPLITV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Just changing orientation of existing container\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Splitting in orientation %d\0A\00", align 1
@nodes = common dso_local global i32 0, align 4
@focused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree_split(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = call i64 @con_is_floating(%struct.TYPE_13__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %122

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CT_WORKSPACE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = call i32 @con_num_children(%struct.TYPE_13__* %19)
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = call i32 @con_num_children(%struct.TYPE_13__* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @L_DEFAULT, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @HORIZ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @L_SPLITH, align 8
  br label %40

38:                                               ; preds = %31
  %39 = load i64, i64* @L_SPLITV, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %122

44:                                               ; preds = %18
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = call %struct.TYPE_13__* @workspace_encapsulate(%struct.TYPE_13__* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %3, align 8
  br label %47

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %12
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %5, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = call i32 @con_force_split_parents_redraw(%struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = call i32 @con_num_children(%struct.TYPE_13__* %54)
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %82

57:                                               ; preds = %48
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @L_SPLITH, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @L_SPLITV, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63, %57
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @HORIZ, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @L_SPLITH, align 8
  br label %77

75:                                               ; preds = %69
  %76 = load i64, i64* @L_SPLITV, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %122

82:                                               ; preds = %63, %48
  %83 = load i64, i64* %4, align 8
  %84 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %83)
  %85 = call %struct.TYPE_13__* @con_new(i32* null, i32* null)
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %6, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = load i32, i32* @nodes, align 4
  %91 = call i32 @TAILQ_REPLACE(i32* %87, %struct.TYPE_13__* %88, %struct.TYPE_13__* %89, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = load i32, i32* @focused, align 4
  %97 = call i32 @TAILQ_REPLACE(i32* %93, %struct.TYPE_13__* %94, %struct.TYPE_13__* %95, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %100, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @HORIZ, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = load i64, i64* @L_SPLITH, align 8
  br label %108

106:                                              ; preds = %82
  %107 = load i64, i64* @L_SPLITV, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load double, double* %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  store double %114, double* %116, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  store double 0.000000e+00, double* %118, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = call i32 @con_attach(%struct.TYPE_13__* %119, %struct.TYPE_13__* %120, i32 0)
  br label %122

122:                                              ; preds = %108, %77, %40, %10
  ret void
}

declare dso_local i64 @con_is_floating(%struct.TYPE_13__*) #1

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @con_num_children(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @workspace_encapsulate(%struct.TYPE_13__*) #1

declare dso_local i32 @con_force_split_parents_redraw(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @con_new(i32*, i32*) #1

declare dso_local i32 @TAILQ_REPLACE(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @con_attach(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
