; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_Cache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i8*, i8*, i32* }

@ART_LEVELFRAME_FOCUS = common dso_local global i32 0, align 4
@ART_LEVELFRAME_SELECTED = common dso_local global i32 0, align 4
@ART_ARROW = common dso_local global i32 0, align 4
@ART_ARROW_FOCUS = common dso_local global i32 0, align 4
@ART_MAP_UNKNOWN = common dso_local global i32 0, align 4
@ART_MAP_COMPLETE1 = common dso_local global i32 0, align 4
@ART_MAP_COMPLETE2 = common dso_local global i32 0, align 4
@ART_MAP_COMPLETE3 = common dso_local global i32 0, align 4
@ART_MAP_COMPLETE4 = common dso_local global i32 0, align 4
@ART_MAP_COMPLETE5 = common dso_local global i32 0, align 4
@ART_BACK0 = common dso_local global i32 0, align 4
@ART_BACK1 = common dso_local global i32 0, align 4
@ART_FIGHT0 = common dso_local global i32 0, align 4
@ART_FIGHT1 = common dso_local global i32 0, align 4
@ART_RESET0 = common dso_local global i32 0, align 4
@ART_RESET1 = common dso_local global i32 0, align 4
@ART_CUSTOM0 = common dso_local global i32 0, align 4
@ART_CUSTOM1 = common dso_local global i32 0, align 4
@ui_medalPicNames = common dso_local global i32* null, align 8
@ui_medalSounds = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SPLevelMenu_Cache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ART_LEVELFRAME_FOCUS, align 4
  %3 = call i8* @trap_R_RegisterShaderNoMip(i32 %2)
  %4 = load i32, i32* @ART_LEVELFRAME_SELECTED, align 4
  %5 = call i8* @trap_R_RegisterShaderNoMip(i32 %4)
  %6 = load i32, i32* @ART_ARROW, align 4
  %7 = call i8* @trap_R_RegisterShaderNoMip(i32 %6)
  %8 = load i32, i32* @ART_ARROW_FOCUS, align 4
  %9 = call i8* @trap_R_RegisterShaderNoMip(i32 %8)
  %10 = load i32, i32* @ART_MAP_UNKNOWN, align 4
  %11 = call i8* @trap_R_RegisterShaderNoMip(i32 %10)
  %12 = load i32, i32* @ART_MAP_COMPLETE1, align 4
  %13 = call i8* @trap_R_RegisterShaderNoMip(i32 %12)
  %14 = load i32, i32* @ART_MAP_COMPLETE2, align 4
  %15 = call i8* @trap_R_RegisterShaderNoMip(i32 %14)
  %16 = load i32, i32* @ART_MAP_COMPLETE3, align 4
  %17 = call i8* @trap_R_RegisterShaderNoMip(i32 %16)
  %18 = load i32, i32* @ART_MAP_COMPLETE4, align 4
  %19 = call i8* @trap_R_RegisterShaderNoMip(i32 %18)
  %20 = load i32, i32* @ART_MAP_COMPLETE5, align 4
  %21 = call i8* @trap_R_RegisterShaderNoMip(i32 %20)
  %22 = load i32, i32* @ART_BACK0, align 4
  %23 = call i8* @trap_R_RegisterShaderNoMip(i32 %22)
  %24 = load i32, i32* @ART_BACK1, align 4
  %25 = call i8* @trap_R_RegisterShaderNoMip(i32 %24)
  %26 = load i32, i32* @ART_FIGHT0, align 4
  %27 = call i8* @trap_R_RegisterShaderNoMip(i32 %26)
  %28 = load i32, i32* @ART_FIGHT1, align 4
  %29 = call i8* @trap_R_RegisterShaderNoMip(i32 %28)
  %30 = load i32, i32* @ART_RESET0, align 4
  %31 = call i8* @trap_R_RegisterShaderNoMip(i32 %30)
  %32 = load i32, i32* @ART_RESET1, align 4
  %33 = call i8* @trap_R_RegisterShaderNoMip(i32 %32)
  %34 = load i32, i32* @ART_CUSTOM0, align 4
  %35 = call i8* @trap_R_RegisterShaderNoMip(i32 %34)
  %36 = load i32, i32* @ART_CUSTOM1, align 4
  %37 = call i8* @trap_R_RegisterShaderNoMip(i32 %36)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %59, %0
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32*, i32** @ui_medalPicNames, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @trap_R_RegisterShaderNoMip(i32 %46)
  %48 = load i32*, i32** @ui_medalSounds, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @qfalse, align 4
  %54 = call i32 @trap_S_RegisterSound(i32 %52, i32 %53)
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 3), align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i32, i32* @ART_LEVELFRAME_SELECTED, align 4
  %64 = call i8* @trap_R_RegisterShaderNoMip(i32 %63)
  store i8* %64, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 2), align 8
  %65 = load i32, i32* @ART_LEVELFRAME_FOCUS, align 4
  %66 = call i8* @trap_R_RegisterShaderNoMip(i32 %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 1), align 8
  %67 = load i32, i32* @ART_MAP_COMPLETE1, align 4
  %68 = call i8* @trap_R_RegisterShaderNoMip(i32 %67)
  %69 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @ART_MAP_COMPLETE2, align 4
  %72 = call i8* @trap_R_RegisterShaderNoMip(i32 %71)
  %73 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @ART_MAP_COMPLETE3, align 4
  %76 = call i8* @trap_R_RegisterShaderNoMip(i32 %75)
  %77 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @ART_MAP_COMPLETE4, align 4
  %80 = call i8* @trap_R_RegisterShaderNoMip(i32 %79)
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @ART_MAP_COMPLETE5, align 4
  %84 = call i8* @trap_R_RegisterShaderNoMip(i32 %83)
  %85 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @levelMenuInfo, i32 0, i32 0), align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 4
  store i8* %84, i8** %86, align 8
  ret void
}

declare dso_local i8* @trap_R_RegisterShaderNoMip(i32) #1

declare dso_local i32 @trap_S_RegisterSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
