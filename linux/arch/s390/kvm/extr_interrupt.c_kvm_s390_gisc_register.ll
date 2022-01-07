; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisc_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_gisc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_s390_gisa_interrupt }
%struct.kvm_s390_gisa_interrupt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@MAX_ISC = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@gib = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_gisc_register(%struct.kvm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_s390_gisa_interrupt*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.kvm*, %struct.kvm** %4, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.kvm_s390_gisa_interrupt* %9, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %10 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %11 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MAX_ISC, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ERANGE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %30 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %24
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 128, %47
  %49 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @gisa_set_iam(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %45, %24
  %63 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gib, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62, %21, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
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
