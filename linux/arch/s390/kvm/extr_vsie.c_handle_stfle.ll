; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_handle_stfle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_handle_stfle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { i32, %struct.TYPE_2__*, %struct.kvm_s390_sie_block }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_s390_sie_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vsie_page*)* @handle_stfle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_stfle(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vsie_page*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %5, align 8
  %8 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %9 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %8, i32 0, i32 2
  store %struct.kvm_s390_sie_block* %9, %struct.kvm_s390_sie_block** %6, align 8
  %10 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %11 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @READ_ONCE(i32 %14)
  %16 = and i32 %15, 2147483640
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_kvm_facility(i32 %22, i32 7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %27 = call i32 @retry_vsie_icpt(%struct.vsie_page* %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %31 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %30, i32 0, i32 0
  %32 = call i64 @read_guest_real(%struct.kvm_vcpu* %28, i32 %29, i32* %31, i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %36 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %35, i32 4240)
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %39 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %38, i32 0, i32 0
  %40 = ptrtoint i32* %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %19, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @test_kvm_facility(i32, i32) #1

declare dso_local i32 @retry_vsie_icpt(%struct.vsie_page*) #1

declare dso_local i64 @read_guest_real(%struct.kvm_vcpu*, i32, i32*, i32) #1

declare dso_local i32 @set_validity_icpt(%struct.kvm_s390_sie_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
