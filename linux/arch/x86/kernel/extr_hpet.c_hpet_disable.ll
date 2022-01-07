; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@hpet_virt_address = common dso_local global i32 0, align 4
@hpet_base = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@HPET_CFG_ENABLE = common dso_local global i32 0, align 4
@HPET_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_disable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @is_hpet_capable()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @hpet_virt_address, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  br label %44

9:                                                ; preds = %5
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hpet_base, i32 0, i32 0), align 8
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @HPET_CFG_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @HPET_CFG, align 4
  %17 = call i32 @hpet_writel(i32 %15, i32 %16)
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %32, %9
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hpet_base, i32 0, i32 1), align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hpet_base, i32 0, i32 2), align 8
  %24 = load i32, i32* %1, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @HPET_Tn_CFG(i32 %29)
  %31 = call i32 @hpet_writel(i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %1, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hpet_base, i32 0, i32 0), align 8
  %37 = load i32, i32* @HPET_CFG_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hpet_base, i32 0, i32 0), align 8
  %42 = load i32, i32* @HPET_CFG, align 4
  %43 = call i32 @hpet_writel(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %8, %40, %35
  ret void
}

declare dso_local i32 @is_hpet_capable(...) #1

declare dso_local i32 @hpet_writel(i32, i32) #1

declare dso_local i32 @HPET_Tn_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
