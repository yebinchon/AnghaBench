; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_RegisterCvars.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_main.c_CG_RegisterCvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@cvarTable = common dso_local global %struct.TYPE_5__* null, align 8
@cvarTableSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sv_running\00", align 1
@cgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cg_forceModel = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@forceModelModificationCount = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@DEFAULT_MODEL = common dso_local global i32 0, align 4
@CVAR_USERINFO = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"team_model\00", align 1
@DEFAULT_TEAM_MODEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"team_headmodel\00", align 1
@DEFAULT_TEAM_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_RegisterCvars() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  store i32 0, i32* %1, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cvarTable, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %2, align 8
  br label %10

10:                                               ; preds = %28, %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @cvarTableSize, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @trap_Cvar_Register(i32* %17, i8* %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 1
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %2, align 8
  br label %10

33:                                               ; preds = %10
  %34 = trunc i64 %6 to i32
  %35 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %34)
  %36 = call i32 @atoi(i8* %8)
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_forceModel, i32 0, i32 0), align 4
  store i32 %37, i32* @forceModelModificationCount, align 4
  %38 = load i32, i32* @DEFAULT_MODEL, align 4
  %39 = load i32, i32* @CVAR_USERINFO, align 4
  %40 = load i32, i32* @CVAR_ARCHIVE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @trap_Cvar_Register(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @DEFAULT_MODEL, align 4
  %44 = load i32, i32* @CVAR_USERINFO, align 4
  %45 = load i32, i32* @CVAR_ARCHIVE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @trap_Cvar_Register(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @DEFAULT_TEAM_MODEL, align 4
  %49 = load i32, i32* @CVAR_USERINFO, align 4
  %50 = load i32, i32* @CVAR_ARCHIVE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @trap_Cvar_Register(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load i32, i32* @DEFAULT_TEAM_HEAD, align 4
  %54 = load i32, i32* @CVAR_USERINFO, align 4
  %55 = load i32, i32* @CVAR_ARCHIVE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @trap_Cvar_Register(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_Register(i32*, i8*, i32, i32) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
