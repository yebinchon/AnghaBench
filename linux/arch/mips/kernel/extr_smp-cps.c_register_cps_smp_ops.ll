; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-cps.c_register_cps_smp_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_smp-cps.c_register_cps_smp_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"MIPS CPS SMP unable to proceed without a CM\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CM_GCR_GIC_STATUS_EX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"MIPS CPS SMP unable to proceed without a GIC\0A\00", align 1
@cps_smp_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_cps_smp_ops() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mips_cm_present()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = call i32 (...) @read_gcr_gic_status()
  %10 = load i32, i32* @CM_GCR_GIC_STATUS_EX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %8
  %18 = call i32 @register_smp_ops(i32* @cps_smp_ops)
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %13, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @mips_cm_present(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @read_gcr_gic_status(...) #1

declare dso_local i32 @register_smp_ops(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
