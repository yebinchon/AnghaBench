; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisc_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisc_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_s390_gisa_interrupt }
%struct.kvm_s390_gisa_interrupt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_ISC = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_gisc_unregister(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_s390_gisa_interrupt*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.kvm_s390_gisa_interrupt* %10, %struct.kvm_s390_gisa_interrupt** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAX_ISC, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %18
  %26 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %77

41:                                               ; preds = %25
  %42 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %41
  %59 = load i64, i64* %5, align 8
  %60 = trunc i64 %59 to i32
  %61 = ashr i32 128, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %62
  store i32 %67, i32* %65, align 8
  %68 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %72 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @gisa_set_iam(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %58, %41
  br label %77

77:                                               ; preds = %76, %38
  %78 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %79 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %77, %22, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gisa_set_iam(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
