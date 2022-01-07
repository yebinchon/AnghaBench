; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OtherTeamHasFlag.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_OtherTeamHasFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@cgs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@FLAG_TAKEN_BLUE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@FLAG_TAKEN_RED = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@FLAG_TAKEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_OtherTeamHasFlag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %4 = load i64, i64* @GT_CTF, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %8 = load i64, i64* @GT_1FCTF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %65

10:                                               ; preds = %6, %0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @PERS_TEAM, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 0), align 8
  %19 = load i64, i64* @GT_1FCTF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %10
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @TEAM_RED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 8
  %27 = load i64, i64* @FLAG_TAKEN_BLUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @qtrue, align 4
  store i32 %30, i32* %1, align 4
  br label %67

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @TEAM_BLUE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 1), align 8
  %37 = load i64, i64* @FLAG_TAKEN_RED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @qtrue, align 4
  store i32 %40, i32* %1, align 4
  br label %67

41:                                               ; preds = %35, %31
  %42 = load i32, i32* @qfalse, align 4
  store i32 %42, i32* %1, align 4
  br label %67

43:                                               ; preds = %10
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @TEAM_RED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 2), align 8
  %49 = load i64, i64* @FLAG_TAKEN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @qtrue, align 4
  store i32 %52, i32* %1, align 4
  br label %67

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @TEAM_BLUE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cgs, i32 0, i32 3), align 8
  %59 = load i64, i64* @FLAG_TAKEN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @qtrue, align 4
  store i32 %62, i32* %1, align 4
  br label %67

63:                                               ; preds = %57, %53
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %1, align 4
  br label %67

65:                                               ; preds = %6
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %65, %63, %61, %51, %41, %39, %29
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
