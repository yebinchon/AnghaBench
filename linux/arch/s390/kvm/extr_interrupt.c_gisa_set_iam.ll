; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_gisa_set_iam.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_gisa_set_iam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_s390_gisa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_s390_gisa*, i32)* @gisa_set_iam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gisa_set_iam(%struct.kvm_s390_gisa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_s390_gisa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_s390_gisa* %0, %struct.kvm_s390_gisa** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load %struct.kvm_s390_gisa*, %struct.kvm_s390_gisa** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_s390_gisa, %struct.kvm_s390_gisa* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ_ONCE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.kvm_s390_gisa*, %struct.kvm_s390_gisa** %4, align 8
  %17 = ptrtoint %struct.kvm_s390_gisa* %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, -256
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = or i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load %struct.kvm_s390_gisa*, %struct.kvm_s390_gisa** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_gisa, %struct.kvm_s390_gisa* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @cmpxchg(i32* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %8, label %43

43:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
