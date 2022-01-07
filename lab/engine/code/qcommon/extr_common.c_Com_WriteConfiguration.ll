; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_WriteConfiguration.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_WriteConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@com_fullyInitialized = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@com_writeConfig = common dso_local global %struct.TYPE_3__* null, align 8
@Q3CONFIG_CFG = common dso_local global i32 0, align 4
@com_standalone = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@cl_cdkey = common dso_local global i32* null, align 8
@BASEGAME = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_WriteConfiguration() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @com_fullyInitialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %48

5:                                                ; preds = %0
  %6 = load i32, i32* @cvar_modifiedFlags, align 4
  %7 = load i32, i32* @CVAR_ARCHIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %48

11:                                               ; preds = %5
  %12 = load i32, i32* @CVAR_ARCHIVE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @cvar_modifiedFlags, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @cvar_modifiedFlags, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @com_writeConfig, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %48

21:                                               ; preds = %11
  %22 = load i32, i32* @Q3CONFIG_CFG, align 4
  %23 = call i32 @Com_WriteConfigToFile(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_standalone, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %21
  %29 = call i8* @Cvar_VariableString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %1, align 8
  %30 = call i64 (...) @UI_usesUniqueCDKey()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8*, i8** %1, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i8*, i8** %1, align 8
  %40 = load i32*, i32** @cl_cdkey, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 16
  %42 = call i32 @Com_WriteCDKey(i8* %39, i32* %41)
  br label %47

43:                                               ; preds = %32, %28
  %44 = load i8*, i8** @BASEGAME, align 8
  %45 = load i32*, i32** @cl_cdkey, align 8
  %46 = call i32 @Com_WriteCDKey(i8* %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %4, %10, %20, %47, %21
  ret void
}

declare dso_local i32 @Com_WriteConfigToFile(i32) #1

declare dso_local i8* @Cvar_VariableString(i8*) #1

declare dso_local i64 @UI_usesUniqueCDKey(...) #1

declare dso_local i32 @Com_WriteCDKey(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
