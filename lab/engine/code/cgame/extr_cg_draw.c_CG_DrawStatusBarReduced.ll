; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawStatusBarReduced.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawStatusBarReduced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@CHAR_WIDTH = common dso_local global i32 0, align 4
@TEXT_ICON_SPACE = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PW_REDFLAG = common dso_local global i64 0, align 8
@ICON_SIZE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i32 0, align 4
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawStatusBarReduced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawStatusBarReduced() #0 {
  %1 = load i32, i32* @CHAR_WIDTH, align 4
  %2 = mul nsw i32 %1, 3
  %3 = add nsw i32 185, %2
  %4 = sext i32 %3 to i64
  %5 = load i64, i64* @TEXT_ICON_SPACE, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @CG_DrawStatusBarHead(i64 %6)
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0, i32 0), align 8
  %9 = load i64, i64* @PW_REDFLAG, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %0
  %14 = load i32, i32* @CHAR_WIDTH, align 4
  %15 = mul nsw i32 %14, 3
  %16 = add nsw i32 185, %15
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @TEXT_ICON_SPACE, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @ICON_SIZE, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* @TEAM_RED, align 4
  %23 = call i32 @CG_DrawStatusBarFlag(i64 %21, i32 %22)
  br label %60

24:                                               ; preds = %0
  %25 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0, i32 0), align 8
  %26 = load i64, i64* @PW_BLUEFLAG, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* @CHAR_WIDTH, align 4
  %32 = mul nsw i32 %31, 3
  %33 = add nsw i32 185, %32
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @TEXT_ICON_SPACE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @ICON_SIZE, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @TEAM_BLUE, align 4
  %40 = call i32 @CG_DrawStatusBarFlag(i64 %38, i32 %39)
  br label %59

41:                                               ; preds = %24
  %42 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0, i32 0), align 8
  %43 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* @CHAR_WIDTH, align 4
  %49 = mul nsw i32 %48, 3
  %50 = add nsw i32 185, %49
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @TEXT_ICON_SPACE, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @ICON_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @TEAM_FREE, align 4
  %57 = call i32 @CG_DrawStatusBarFlag(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %47, %41
  br label %59

59:                                               ; preds = %58, %30
  br label %60

60:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32 @CG_DrawStatusBarHead(i64) #1

declare dso_local i32 @CG_DrawStatusBarFlag(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
