; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_network.c_UI_NetworkOptionsMenu_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_network.c_UI_NetworkOptionsMenu_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@networkOptionsInfo = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @UI_NetworkOptionsMenu_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_NetworkOptionsMenu_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %56

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %56 [
    i32 131, label %14
    i32 132, label %17
    i32 128, label %20
    i32 130, label %23
    i32 129, label %24
    i32 133, label %54
  ]

14:                                               ; preds = %9
  %15 = call i32 (...) @UI_PopMenu()
  %16 = call i32 (...) @UI_GraphicsOptionsMenu()
  br label %56

17:                                               ; preds = %9
  %18 = call i32 (...) @UI_PopMenu()
  %19 = call i32 (...) @UI_DisplayOptionsMenu()
  br label %56

20:                                               ; preds = %9
  %21 = call i32 (...) @UI_PopMenu()
  %22 = call i32 (...) @UI_SoundOptionsMenu()
  br label %56

23:                                               ; preds = %9
  br label %56

24:                                               ; preds = %9
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @networkOptionsInfo, i32 0, i32 0, i32 0), align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2500)
  br label %53

29:                                               ; preds = %24
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @networkOptionsInfo, i32 0, i32 0, i32 0), align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 3000)
  br label %52

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @networkOptionsInfo, i32 0, i32 0, i32 0), align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4000)
  br label %51

39:                                               ; preds = %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @networkOptionsInfo, i32 0, i32 0, i32 0), align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5000)
  br label %50

44:                                               ; preds = %39
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @networkOptionsInfo, i32 0, i32 0, i32 0), align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 25000)
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %27
  br label %56

54:                                               ; preds = %9
  %55 = call i32 (...) @UI_PopMenu()
  br label %56

56:                                               ; preds = %8, %9, %54, %53, %23, %20, %17, %14
  ret void
}

declare dso_local i32 @UI_PopMenu(...) #1

declare dso_local i32 @UI_GraphicsOptionsMenu(...) #1

declare dso_local i32 @UI_DisplayOptionsMenu(...) #1

declare dso_local i32 @UI_SoundOptionsMenu(...) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
