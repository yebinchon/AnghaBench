; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_peek_cmma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_peek_cmma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_s390_cmma_log = type { i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_s390_cmma_log*, i64*, i64)* @kvm_s390_peek_cmma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_peek_cmma(%struct.kvm* %0, %struct.kvm_s390_cmma_log* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_s390_cmma_log*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_s390_cmma_log* %1, %struct.kvm_s390_cmma_log** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %14 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %17 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %50, %4
  %19 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %18
  %25 = load %struct.kvm*, %struct.kvm** %6, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i64 @gfn_to_hva(%struct.kvm* %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @kvm_is_error_hva(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %33 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ 0, %36 ], [ %39, %37 ]
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %24
  %43 = load %struct.kvm*, %struct.kvm** %6, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @get_pgste(i32 %45, i64 %46, i64* %10)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i64, i64* %10, align 8
  %52 = lshr i64 %51, 24
  %53 = and i64 %52, 67
  %54 = load i64*, i64** %8, align 8
  %55 = load %struct.kvm_s390_cmma_log*, %struct.kvm_s390_cmma_log** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_s390_cmma_log, %struct.kvm_s390_cmma_log* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %53, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %18

62:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @gfn_to_hva(%struct.kvm*, i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i64 @get_pgste(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
