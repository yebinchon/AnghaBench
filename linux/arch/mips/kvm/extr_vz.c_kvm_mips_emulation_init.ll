; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_mips_emulation_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_mips_emulation_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mips_callbacks = type { i32 }

@cpu_has_vz = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@pgd_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pgd_reg not allocated even though cpu_has_vz\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Starting KVM with MIPS VZ extensions\0A\00", align 1
@kvm_vz_callbacks = common dso_local global %struct.kvm_mips_callbacks zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulation_init(%struct.kvm_mips_callbacks** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_mips_callbacks**, align 8
  store %struct.kvm_mips_callbacks** %0, %struct.kvm_mips_callbacks*** %3, align 8
  %4 = load i32, i32* @cpu_has_vz, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @pgd_reg, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %9
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.kvm_mips_callbacks**, %struct.kvm_mips_callbacks*** %3, align 8
  store %struct.kvm_mips_callbacks* @kvm_vz_callbacks, %struct.kvm_mips_callbacks** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %15, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
