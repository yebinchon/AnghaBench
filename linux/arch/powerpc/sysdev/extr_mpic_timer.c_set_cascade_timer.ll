; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_set_cascade_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_set_cascade_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_group_priv = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.cascade_priv* }
%struct.cascade_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MPIC_TIMER_TCR_ROVR_OFFSET = common dso_local global i32 0, align 4
@MAX_TICKS_CASCADE = common dso_local global i32 0, align 4
@TIMER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_group_priv*, i32, i32)* @set_cascade_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cascade_timer(%struct.timer_group_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timer_group_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cascade_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.timer_group_priv* %0, %struct.timer_group_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %13 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.cascade_priv*, %struct.cascade_priv** %18, align 8
  store %struct.cascade_priv* %19, %struct.cascade_priv** %8, align 8
  %20 = load %struct.cascade_priv*, %struct.cascade_priv** %8, align 8
  %21 = icmp ne %struct.cascade_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %81

25:                                               ; preds = %3
  %26 = load %struct.cascade_priv*, %struct.cascade_priv** %8, align 8
  %27 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cascade_priv*, %struct.cascade_priv** %8, align 8
  %30 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MPIC_TIMER_TCR_ROVR_OFFSET, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %36 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @setbits32(i32 %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAX_TICKS_CASCADE, align 4
  %42 = call i32 @div_u64_rem(i32 %40, i32 %41, i32* %11)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %44 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @out_be32(i32* %49, i32 0)
  %51 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %52 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @TIMER_STOP, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @out_be32(i32* %57, i32 %60)
  %62 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %63 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sub i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = call i32 @out_be32(i32* %69, i32 0)
  %71 = load %struct.timer_group_priv*, %struct.timer_group_priv** %5, align 8
  %72 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sub i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @out_be32(i32* %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %25, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @setbits32(i32, i32) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
