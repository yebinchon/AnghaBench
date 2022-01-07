; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_set_ipa_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_reset.c_kvm_set_ipa_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_ID_AA64MMFR0_EL1 = common dso_local global i32 0, align 4
@PHYS_MASK_SHIFT = common dso_local global i32 0, align 4
@PGDIR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"kvm: Limiting the IPA size due to kernel %s Address limit\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Virtual\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@KVM_PHYS_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"KVM IPA limit (%d bit) is smaller than default size\0A\00", align 1
@kvm_ipa_limit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"IPA Size Limit: %dbits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_set_ipa_limit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SYS_ID_AA64MMFR0_EL1, align 4
  %6 = call i32 @read_sanitised_ftr_reg(i32 %5)
  %7 = and i32 %6, 7
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @id_aa64mmfr0_parange_to_phys_shift(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PHYS_MASK_SHIFT, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @PHYS_MASK_SHIFT, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @PGDIR_SHIFT, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = add nsw i32 %19, %20
  %22 = sub nsw i32 %21, 3
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ult i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %34, %30
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @KVM_PHYS_SHIFT, align 4
  %44 = icmp ult i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @WARN(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %1, align 4
  store i32 %48, i32* @kvm_ipa_limit, align 4
  %49 = load i32, i32* @kvm_ipa_limit, align 4
  %50 = call i32 @kvm_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local i32 @read_sanitised_ftr_reg(i32) #1

declare dso_local i32 @id_aa64mmfr0_parange_to_phys_shift(i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @kvm_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
