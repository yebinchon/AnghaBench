; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Command.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cvar_Command() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32 @Cmd_Argv(i32 0)
  %4 = call %struct.TYPE_4__* @Cvar_FindVar(i32 %3)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @qfalse, align 4
  store i32 %8, i32* %1, align 4
  br label %24

9:                                                ; preds = %0
  %10 = call i32 (...) @Cmd_Argc()
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = call i32 @Cvar_Print(%struct.TYPE_4__* %13)
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %1, align 4
  br label %24

16:                                               ; preds = %9
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (...) @Cmd_Args()
  %21 = load i32, i32* @qfalse, align 4
  %22 = call i32 @Cvar_Set2(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %16, %12, %7
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_4__* @Cvar_FindVar(i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Cvar_Print(%struct.TYPE_4__*) #1

declare dso_local i32 @Cvar_Set2(i32, i32, i32) #1

declare dso_local i32 @Cmd_Args(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
