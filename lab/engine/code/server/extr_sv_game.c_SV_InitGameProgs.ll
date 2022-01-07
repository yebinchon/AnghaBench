; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_game.c_SV_InitGameProgs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_game.c_SV_InitGameProgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"bot_enable\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@bot_enable = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"qagame\00", align 1
@SV_GameSystemCalls = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"vm_game\00", align 1
@gvm = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"VM_Create on game failed\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_InitGameProgs() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @CVAR_LATCH, align 4
  %3 = call %struct.TYPE_3__* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @bot_enable, align 4
  br label %11

10:                                               ; preds = %0
  store i32 0, i32* @bot_enable, align 4
  br label %11

11:                                               ; preds = %10, %6
  %12 = load i32, i32* @SV_GameSystemCalls, align 4
  %13 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @VM_Create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %13)
  store i32 %14, i32* @gvm, align 4
  %15 = load i32, i32* @gvm, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @ERR_FATAL, align 4
  %19 = call i32 @Com_Error(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @qfalse, align 4
  %22 = call i32 @SV_InitGameVM(i32 %21)
  ret void
}

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @VM_Create(i8*, i32, i32) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SV_InitGameVM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
