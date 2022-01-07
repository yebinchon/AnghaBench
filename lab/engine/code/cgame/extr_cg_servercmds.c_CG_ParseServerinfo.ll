; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseServerinfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ParseServerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CS_SERVERINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@cgs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dmflags\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"teamflags\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"capturelimit\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"g_redTeam\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"g_blueTeam\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParseServerinfo() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @CS_SERVERINFO, align 4
  %4 = call i8* @CG_ConfigString(i32 %3)
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i8* @Info_ValueForKey(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = call i8* @atoi(i8* %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 9), align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 9), align 8
  %9 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  %10 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8*, i8** %1, align 8
  %12 = call i8* @Info_ValueForKey(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i8* @atoi(i8* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 8), align 8
  %14 = load i8*, i8** %1, align 8
  %15 = call i8* @Info_ValueForKey(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i8* @atoi(i8* %15)
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 7), align 8
  %17 = load i8*, i8** %1, align 8
  %18 = call i8* @Info_ValueForKey(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i8* @atoi(i8* %18)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 6), align 8
  %20 = load i8*, i8** %1, align 8
  %21 = call i8* @Info_ValueForKey(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i8* @atoi(i8* %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 5), align 8
  %23 = load i8*, i8** %1, align 8
  %24 = call i8* @Info_ValueForKey(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %25 = call i8* @atoi(i8* %24)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 4), align 8
  %26 = load i8*, i8** %1, align 8
  %27 = call i8* @Info_ValueForKey(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %28 = call i8* @atoi(i8* %27)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 3), align 8
  %29 = load i8*, i8** %1, align 8
  %30 = call i8* @Info_ValueForKey(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i8* %30, i8** %2, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 2), align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @Com_sprintf(i32 %31, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 1), align 4
  %35 = load i8*, i8** %1, align 8
  %36 = call i8* @Info_ValueForKey(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %37 = call i32 @Q_strncpyz(i32 %34, i8* %36, i32 4)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 1), align 4
  %39 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %41 = load i8*, i8** %1, align 8
  %42 = call i8* @Info_ValueForKey(i8* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %43 = call i32 @Q_strncpyz(i32 %40, i8* %42, i32 4)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %45 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
