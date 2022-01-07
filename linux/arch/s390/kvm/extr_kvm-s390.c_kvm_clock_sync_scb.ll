; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_clock_sync_scb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_clock_sync_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_s390_sie_block = type { i32, i32, i64 }

@ECD_MEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_s390_sie_block*, i64)* @kvm_clock_sync_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_clock_sync_scb(%struct.kvm_s390_sie_block* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_s390_sie_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_s390_sie_block* %0, %struct.kvm_s390_sie_block** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = sub nsw i64 0, %6
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ECD_MEF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %30 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %23
  br label %40

40:                                               ; preds = %39, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
