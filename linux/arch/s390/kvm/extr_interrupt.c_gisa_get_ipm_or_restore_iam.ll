; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_gisa_get_ipm_or_restore_iam.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_gisa_get_ipm_or_restore_iam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_s390_gisa_interrupt = type { %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_s390_gisa_interrupt*)* @gisa_get_ipm_or_restore_iam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gisa_get_ipm_or_restore_iam(%struct.kvm_s390_gisa_interrupt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_s390_gisa_interrupt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_s390_gisa_interrupt* %0, %struct.kvm_s390_gisa_interrupt** %3, align 8
  br label %8

8:                                                ; preds = %39, %1
  %9 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @READ_ONCE(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @READ_ONCE(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 24
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %53

31:                                               ; preds = %8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, -256
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = or i64 %34, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load %struct.kvm_s390_gisa_interrupt*, %struct.kvm_s390_gisa_interrupt** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_s390_gisa_interrupt, %struct.kvm_s390_gisa_interrupt* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cmpxchg(i32* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %8, label %52

52:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %29
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
