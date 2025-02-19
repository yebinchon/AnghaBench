; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_smca_get_bank_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_smca_get_bank_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smca_bank = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_NR_BANKS = common dso_local global i32 0, align 4
@N_SMCA_BANK_TYPES = common dso_local global i32 0, align 4
@smca_banks = common dso_local global %struct.smca_bank* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @smca_get_bank_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smca_get_bank_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smca_bank*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_NR_BANKS, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @N_SMCA_BANK_TYPES, align 4
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.smca_bank*, %struct.smca_bank** @smca_banks, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.smca_bank, %struct.smca_bank* %11, i64 %13
  store %struct.smca_bank* %14, %struct.smca_bank** %4, align 8
  %15 = load %struct.smca_bank*, %struct.smca_bank** %4, align 8
  %16 = getelementptr inbounds %struct.smca_bank, %struct.smca_bank* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = load i32, i32* @N_SMCA_BANK_TYPES, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %10
  %22 = load %struct.smca_bank*, %struct.smca_bank** %4, align 8
  %23 = getelementptr inbounds %struct.smca_bank, %struct.smca_bank* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %19, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
