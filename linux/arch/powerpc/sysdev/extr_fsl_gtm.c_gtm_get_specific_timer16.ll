; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_get_specific_timer16.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_gtm.c_gtm_get_specific_timer16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtm_timer = type { i32 }
%struct.gtm = type { i32, %struct.gtm_timer* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gtm_timer* @gtm_get_specific_timer16(%struct.gtm* %0, i32 %1) #0 {
  %3 = alloca %struct.gtm_timer*, align 8
  %4 = alloca %struct.gtm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gtm_timer*, align 8
  store %struct.gtm* %0, %struct.gtm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  %9 = call %struct.gtm_timer* @ERR_PTR(i32 %8)
  store %struct.gtm_timer* %9, %struct.gtm_timer** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.gtm_timer* @ERR_PTR(i32 %14)
  store %struct.gtm_timer* %15, %struct.gtm_timer** %3, align 8
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.gtm*, %struct.gtm** %4, align 8
  %18 = getelementptr inbounds %struct.gtm, %struct.gtm* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.gtm*, %struct.gtm** %4, align 8
  %21 = getelementptr inbounds %struct.gtm, %struct.gtm* %20, i32 0, i32 1
  %22 = load %struct.gtm_timer*, %struct.gtm_timer** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %22, i64 %24
  %26 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %39

30:                                               ; preds = %16
  %31 = load %struct.gtm*, %struct.gtm** %4, align 8
  %32 = getelementptr inbounds %struct.gtm, %struct.gtm* %31, i32 0, i32 1
  %33 = load %struct.gtm_timer*, %struct.gtm_timer** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %33, i64 %35
  store %struct.gtm_timer* %36, %struct.gtm_timer** %6, align 8
  %37 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  %38 = getelementptr inbounds %struct.gtm_timer, %struct.gtm_timer* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %29
  %40 = load %struct.gtm*, %struct.gtm** %4, align 8
  %41 = getelementptr inbounds %struct.gtm, %struct.gtm* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.gtm_timer*, %struct.gtm_timer** %6, align 8
  store %struct.gtm_timer* %43, %struct.gtm_timer** %3, align 8
  br label %44

44:                                               ; preds = %39, %12
  %45 = load %struct.gtm_timer*, %struct.gtm_timer** %3, align 8
  ret %struct.gtm_timer* %45
}

declare dso_local %struct.gtm_timer* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
