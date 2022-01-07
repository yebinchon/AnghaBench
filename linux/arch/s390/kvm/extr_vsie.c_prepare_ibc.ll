; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prepare_ibc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_prepare_ibc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.vsie_page = type { %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block }
%struct.kvm_s390_sie_block = type { i32 }

@sclp = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.vsie_page*)* @prepare_ibc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_ibc(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vsie_page*, align 8
  %5 = alloca %struct.kvm_s390_sie_block*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %4, align 8
  %10 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %11 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %10, i32 0, i32 1
  store %struct.kvm_s390_sie_block* %11, %struct.kvm_s390_sie_block** %5, align 8
  %12 = load %struct.vsie_page*, %struct.vsie_page** %4, align 8
  %13 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %12, i32 0, i32 0
  %14 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %13, align 8
  store %struct.kvm_s390_sie_block* %14, %struct.kvm_s390_sie_block** %6, align 8
  %15 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  %20 = and i32 %19, 4095
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sclp, i32 0, i32 0), align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 4095
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %41 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %52 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %38
  %54 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %57, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %53
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %53
  br label %78

78:                                               ; preds = %77, %35, %2
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
