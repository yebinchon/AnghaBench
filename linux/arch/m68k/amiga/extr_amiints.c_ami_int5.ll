; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_amiints.c_ami_int5.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_amiints.c_ami_int5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16, i16, i16 }
%struct.irq_desc = type { i32 }

@amiga_custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 2
@IF_RBF = common dso_local global i16 0, align 2
@IRQ_AMIGA_RBF = common dso_local global i32 0, align 4
@IF_DSKSYN = common dso_local global i16 0, align 2
@IRQ_AMIGA_DSKSYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ami_int5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ami_int5(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i16, align 2
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 0), align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 1), align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %5, %7
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %3, align 2
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @IF_RBF, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @IRQ_AMIGA_RBF, align 4
  %18 = call i32 @generic_handle_irq(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @IF_DSKSYN, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i16, i16* @IF_DSKSYN, align 2
  store i16 %27, i16* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amiga_custom, i32 0, i32 2), align 2
  %28 = load i32, i32* @IRQ_AMIGA_DSKSYN, align 4
  %29 = call i32 @generic_handle_irq(i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
