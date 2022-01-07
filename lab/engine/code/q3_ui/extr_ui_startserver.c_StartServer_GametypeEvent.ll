; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_StartServer_GametypeEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_StartServer_GametypeEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_startserver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@gametype_remap = common dso_local global i32* null, align 8
@GT_FFA = common dso_local global i32 0, align 4
@GT_SINGLE_PLAYER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@MAX_MAPSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @StartServer_GametypeEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartServer_GametypeEvent(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QM_ACTIVATED, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %69

14:                                               ; preds = %2
  %15 = call i32 (...) @UI_GetNumArenas()
  store i32 %15, i32* %6, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 0), align 8
  %16 = load i32*, i32** @gametype_remap, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 5, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32*, i32** @gametype_remap, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 5, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GT_FFA, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load i32, i32* @GT_SINGLE_PLAYER, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %14
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %55, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @UI_GetArenaInfoByNumber(i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @Info_ValueForKey(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @GametypeBits(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 1), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 0), align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 0), align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %48, %47
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %33

58:                                               ; preds = %33
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 0), align 8
  %60 = load i32, i32* @MAX_MAPSPERPAGE, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = sub i64 %62, 1
  %64 = load i32, i32* @MAX_MAPSPERPAGE, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %63, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_startserver, i32 0, i32 3), align 8
  %68 = call i32 (...) @StartServer_Update()
  br label %69

69:                                               ; preds = %58, %13
  ret void
}

declare dso_local i32 @UI_GetNumArenas(...) #1

declare dso_local i8* @UI_GetArenaInfoByNumber(i32) #1

declare dso_local i32 @GametypeBits(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @StartServer_Update(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
