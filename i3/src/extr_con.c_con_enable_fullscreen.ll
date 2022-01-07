; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_enable_fullscreen.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_enable_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }

@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"You cannot make a workspace fullscreen.\0A\00", align 1
@CF_GLOBAL = common dso_local global i32 0, align 4
@CF_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"enabling global fullscreen for %p / %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"enabling fullscreen for %p / %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"fullscreen already enabled for %p / %s\0A\00", align 1
@croot = common dso_local global %struct.TYPE_13__* null, align 8
@focused = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_enable_fullscreen(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CT_WORKSPACE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %104

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CF_GLOBAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CF_OUTPUT, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @CF_GLOBAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %32, i32 %35)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %50, i32 %53)
  br label %104

55:                                               ; preds = %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = call %struct.TYPE_13__* @con_get_workspace(%struct.TYPE_13__* %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @croot, align 8
  %59 = load i32, i32* @CF_GLOBAL, align 4
  %60 = call %struct.TYPE_13__* @con_get_fullscreen_con(%struct.TYPE_13__* %58, i32 %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %6, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = icmp eq %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* @CF_OUTPUT, align 4
  %66 = call %struct.TYPE_13__* @con_get_fullscreen_con(%struct.TYPE_13__* %64, i32 %65)
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %6, align 8
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = call i32 @con_disable_fullscreen(%struct.TYPE_13__* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @focused, align 8
  %75 = call %struct.TYPE_13__* @con_get_workspace(%struct.TYPE_13__* %74)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %7, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** @focused, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @CF_GLOBAL, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = icmp ne %struct.TYPE_13__* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = call i32 @workspace_show(%struct.TYPE_13__* %85)
  br label %87

87:                                               ; preds = %84, %80, %73
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = call i32 @con_activate(%struct.TYPE_13__* %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @CF_GLOBAL, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = icmp ne %struct.TYPE_13__* %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = call i32 @con_activate(%struct.TYPE_13__* %98)
  br label %100

100:                                              ; preds = %97, %93, %87
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @con_set_fullscreen_mode(%struct.TYPE_13__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %49, %14
  ret void
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @con_get_workspace(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @con_get_fullscreen_con(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @con_disable_fullscreen(%struct.TYPE_13__*) #1

declare dso_local i32 @workspace_show(%struct.TYPE_13__*) #1

declare dso_local i32 @con_activate(%struct.TYPE_13__*) #1

declare dso_local i32 @con_set_fullscreen_mode(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
