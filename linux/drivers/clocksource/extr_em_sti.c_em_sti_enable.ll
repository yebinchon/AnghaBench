; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_sti_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@STI_SET_H = common dso_local global i32 0, align 4
@STI_SET_L = common dso_local global i32 0, align 4
@STI_INTENCLR = common dso_local global i32 0, align 4
@STI_INTFFCLR = common dso_local global i32 0, align 4
@STI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em_sti_priv*)* @em_sti_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_sti_enable(%struct.em_sti_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em_sti_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.em_sti_priv* %0, %struct.em_sti_priv** %3, align 8
  %5 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %6 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %13 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %20 = load i32, i32* @STI_SET_H, align 4
  %21 = call i32 @em_sti_write(%struct.em_sti_priv* %19, i32 %20, i32 1073741824)
  %22 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %23 = load i32, i32* @STI_SET_L, align 4
  %24 = call i32 @em_sti_write(%struct.em_sti_priv* %22, i32 %23, i32 0)
  %25 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %26 = load i32, i32* @STI_INTENCLR, align 4
  %27 = call i32 @em_sti_write(%struct.em_sti_priv* %25, i32 %26, i32 3)
  %28 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %29 = load i32, i32* @STI_INTFFCLR, align 4
  %30 = call i32 @em_sti_write(%struct.em_sti_priv* %28, i32 %29, i32 3)
  %31 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %32 = load i32, i32* @STI_CONTROL, align 4
  %33 = call i32 @em_sti_write(%struct.em_sti_priv* %31, i32 %32, i32 1)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %18, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @em_sti_write(%struct.em_sti_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
