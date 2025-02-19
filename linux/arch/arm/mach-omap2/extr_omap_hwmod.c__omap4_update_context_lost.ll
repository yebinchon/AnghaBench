; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__omap4_update_context_lost.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__omap4_update_context_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hwmod*)* @_omap4_update_context_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_omap4_update_context_lost(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %3 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %4 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  %13 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %14 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %22 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %30 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @prm_was_any_context_lost_old(i32 %20, i32 %28, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %12
  br label %66

37:                                               ; preds = %12
  %38 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %39 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %45 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %61 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @prm_clear_context_loss_flags_old(i32 %51, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %37, %36, %11
  ret void
}

declare dso_local i32 @prm_was_any_context_lost_old(i32, i32, i32) #1

declare dso_local i32 @prm_clear_context_loss_flags_old(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
