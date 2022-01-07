; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsShutdown.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_vfs.c_vfsShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@g_unzFiles = common dso_local global %struct.TYPE_9__* null, align 8
@g_pakFiles = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfsShutdown() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_unzFiles, align 8
  %4 = icmp ne %struct.TYPE_9__* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_unzFiles, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = ptrtoint %struct.TYPE_8__* %8 to i32
  %10 = call i32 @unzClose(i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_unzFiles, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_unzFiles, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call %struct.TYPE_9__* @g_slist_remove(%struct.TYPE_9__* %11, %struct.TYPE_8__* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** @g_unzFiles, align 8
  br label %2

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %20, %16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pakFiles, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pakFiles, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %1, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = call i32 @free(%struct.TYPE_8__* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = call i32 @free(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_pakFiles, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %32 = call %struct.TYPE_9__* @g_slist_remove(%struct.TYPE_9__* %30, %struct.TYPE_8__* %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** @g_pakFiles, align 8
  br label %17

33:                                               ; preds = %17
  ret void
}

declare dso_local i32 @unzClose(i32) #1

declare dso_local %struct.TYPE_9__* @g_slist_remove(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
