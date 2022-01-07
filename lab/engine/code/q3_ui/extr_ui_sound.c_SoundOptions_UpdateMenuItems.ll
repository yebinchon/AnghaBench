; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sound.c_SoundOptions_UpdateMenuItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_sound.c_SoundOptions_UpdateMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@soundOptionsInfo = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@UISND_SDL = common dso_local global i64 0, align 8
@QMF_GRAYED = common dso_local global i32 0, align 4
@QMF_HIDDEN = common dso_local global i32 0, align 4
@QMF_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SoundOptions_UpdateMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SoundOptions_UpdateMenuItems() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 6, i32 0), align 8
  %2 = load i64, i64* @UISND_SDL, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @QMF_GRAYED, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 5, i32 1, i32 0), align 8
  %8 = and i32 %7, %6
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 5, i32 1, i32 0), align 8
  br label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @QMF_GRAYED, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 5, i32 1, i32 0), align 8
  %12 = or i32 %11, %10
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 5, i32 1, i32 0), align 8
  br label %13

13:                                               ; preds = %9, %4
  %14 = load i32, i32* @QMF_HIDDEN, align 4
  %15 = load i32, i32* @QMF_INACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %18 = or i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 8, i32 0), align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32, i32* @QMF_HIDDEN, align 4
  %24 = load i32, i32* @QMF_INACTIVE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %28 = and i32 %27, %26
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %29

29:                                               ; preds = %22, %13
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 1), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 7, i32 0), align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @QMF_HIDDEN, align 4
  %35 = load i32, i32* @QMF_INACTIVE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %39 = and i32 %38, %37
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %40

40:                                               ; preds = %33, %29
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 6, i32 0), align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @QMF_HIDDEN, align 4
  %46 = load i32, i32* @QMF_INACTIVE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %50 = and i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 3), align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 5, i32 0), align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* @QMF_HIDDEN, align 4
  %57 = load i32, i32* @QMF_INACTIVE, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  %61 = and i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @soundOptionsInfo, i32 0, i32 4, i32 0, i32 0), align 8
  br label %62

62:                                               ; preds = %55, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
