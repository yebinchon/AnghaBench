; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_CommandCompletion.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cmd.c_Cmd_CommandCompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@cmd_functions = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_CommandCompletion(void (i8*)* %0) #0 {
  %2 = alloca void (i8*)*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store void (i8*)* %0, void (i8*)** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_functions, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %3, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load void (i8*)*, void (i8*)** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  call void %9(i8* %12)
  br label %13

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %3, align 8
  br label %5

17:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
