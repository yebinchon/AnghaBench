; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_retry_vsie_icpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_retry_vsie_icpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsie_page = type { %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsie_page*)* @retry_vsie_icpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_vsie_icpt(%struct.vsie_page* %0) #0 {
  %2 = alloca %struct.vsie_page*, align 8
  %3 = alloca %struct.kvm_s390_sie_block*, align 8
  %4 = alloca i32, align 4
  store %struct.vsie_page* %0, %struct.vsie_page** %2, align 8
  %5 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %6 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %5, i32 0, i32 0
  store %struct.kvm_s390_sie_block* %6, %struct.kvm_s390_sie_block** %3, align 8
  %7 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 8
  %11 = call i32 @insn_length(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 6
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 4, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %28, i32 0, i32 2
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__rewind_psw(i32 %32, i32 %30)
  %34 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %3, align 8
  %35 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.vsie_page*, %struct.vsie_page** %2, align 8
  %38 = call i32 @clear_vsie_icpt(%struct.vsie_page* %37)
  ret void
}

declare dso_local i32 @insn_length(i32) #1

declare dso_local i32 @__rewind_psw(i32, i32) #1

declare dso_local i32 @clear_vsie_icpt(%struct.vsie_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
