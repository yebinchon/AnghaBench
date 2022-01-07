; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_next_focused.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_next_focused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, i32 }

@CT_DOCKAREA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"selecting workspace for dock client\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Using first entry %p\0A\00", align 1
@focused = common dso_local global i32 0, align 4
@CT_FLOATING_CON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @con_next_focused(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CT_DOCKAREA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = call %struct.TYPE_12__* @output_get_content(%struct.TYPE_12__* %18)
  %20 = call %struct.TYPE_12__* @con_descend_focused(%struct.TYPE_12__* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %2, align 8
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = call i64 @con_is_floating(%struct.TYPE_12__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %3, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = call %struct.TYPE_12__* @TAILQ_FIRST(i32* %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %4, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = icmp ne %struct.TYPE_12__* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %39)
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* @focused, align 4
  %44 = call %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__* %42, i32 %43)
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %4, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %4, align 8
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %65, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = call i32 @TAILQ_EMPTY(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = call %struct.TYPE_12__* @TAILQ_FIRST(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = icmp ne %struct.TYPE_12__* %60, %61
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = call %struct.TYPE_12__* @TAILQ_FIRST(i32* %67)
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %4, align 8
  br label %52

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CT_FLOATING_CON, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = icmp ne %struct.TYPE_12__* %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = call %struct.TYPE_12__* @con_descend_focused(%struct.TYPE_12__* %82)
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %4, align 8
  br label %84

84:                                               ; preds = %81, %75, %69
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %2, align 8
  br label %86

86:                                               ; preds = %84, %12
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %87
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @con_descend_focused(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @output_get_content(%struct.TYPE_12__*) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_12__* @TAILQ_NEXT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
