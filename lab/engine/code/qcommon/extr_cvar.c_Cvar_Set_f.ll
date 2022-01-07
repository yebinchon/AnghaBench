; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Set_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Set_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"usage: %s <variable> <value>\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_USERINFO = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cvar_Set_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = call i32 (...) @Cmd_Argc()
  store i32 %4, i32* %1, align 4
  %5 = call i8* @Cmd_Argv(i32 0)
  store i8* %5, i8** %2, align 8
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %80

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @Cvar_Print_f()
  br label %80

16:                                               ; preds = %11
  %17 = call i8* @Cmd_Argv(i32 1)
  %18 = call i32 @Cmd_ArgsFrom(i32 2)
  %19 = load i32, i32* @qfalse, align 4
  %20 = call %struct.TYPE_3__* @Cvar_Set2(i8* %17, i32 %18, i32 %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %80

24:                                               ; preds = %16
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %80 [
    i32 97, label %29
    i32 117, label %46
    i32 115, label %63
  ]

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CVAR_ARCHIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @CVAR_ARCHIVE, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @CVAR_ARCHIVE, align 4
  %43 = load i32, i32* @cvar_modifiedFlags, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* @cvar_modifiedFlags, align 4
  br label %45

45:                                               ; preds = %36, %29
  br label %80

46:                                               ; preds = %24
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CVAR_USERINFO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @CVAR_USERINFO, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @CVAR_USERINFO, align 4
  %60 = load i32, i32* @cvar_modifiedFlags, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @cvar_modifiedFlags, align 4
  br label %62

62:                                               ; preds = %53, %46
  br label %80

63:                                               ; preds = %24
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CVAR_SERVERINFO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @CVAR_SERVERINFO, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @CVAR_SERVERINFO, align 4
  %77 = load i32, i32* @cvar_modifiedFlags, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @cvar_modifiedFlags, align 4
  br label %79

79:                                               ; preds = %70, %63
  br label %80

80:                                               ; preds = %8, %14, %23, %24, %79, %62, %45
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @Cvar_Print_f(...) #1

declare dso_local %struct.TYPE_3__* @Cvar_Set2(i8*, i32, i32) #1

declare dso_local i32 @Cmd_ArgsFrom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
