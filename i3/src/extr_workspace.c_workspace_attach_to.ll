; ModuleID = '/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_attach_to.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_workspace.c_workspace_attach_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [41 x i8] c"Attaching a window to workspace %p / %s\0A\00", align 1
@L_DEFAULT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"Default layout, just attaching it to the workspace itself.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Non-default layout, creating a new split container\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Attaching new split %p to workspace %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @workspace_attach_to(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %5, %struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @L_DEFAULT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %2, align 8
  br label %38

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %20 = call %struct.TYPE_8__* @con_new(i32* null, i32* null)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__* %29, %struct.TYPE_8__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i32 @con_attach(%struct.TYPE_8__* %32, %struct.TYPE_8__* %33, i32 0)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @con_fix_percent(%struct.TYPE_8__* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %2, align 8
  br label %38

38:                                               ; preds = %18, %15
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %39
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @con_new(i32*, i32*) #1

declare dso_local i32 @con_attach(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @con_fix_percent(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
