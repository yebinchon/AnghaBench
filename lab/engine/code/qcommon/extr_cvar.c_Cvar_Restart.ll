; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Restart.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32, i32 }

@cvar_vars = common dso_local global %struct.TYPE_5__* null, align 8
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@CVAR_VM_CREATED = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_NORESTART = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_Restart(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvar_vars, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  br label %5

5:                                                ; preds = %48, %25, %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CVAR_USER_CREATED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CVAR_VM_CREATED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = call %struct.TYPE_5__* @Cvar_Unset(%struct.TYPE_5__* %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %3, align 8
  br label %5

28:                                               ; preds = %18, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CVAR_ROM, align 4
  %33 = load i32, i32* @CVAR_INIT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CVAR_NORESTART, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @qfalse, align 4
  %47 = call i32 @Cvar_Set2(i32 %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %28
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %3, align 8
  br label %5

52:                                               ; preds = %5
  ret void
}

declare dso_local %struct.TYPE_5__* @Cvar_Unset(%struct.TYPE_5__*) #1

declare dso_local i32 @Cvar_Set2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
