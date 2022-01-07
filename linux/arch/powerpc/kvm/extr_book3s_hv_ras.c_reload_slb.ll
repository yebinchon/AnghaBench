; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_reload_slb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_ras.c_reload_slb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.slb_shadow* }
%struct.slb_shadow = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@u32 = common dso_local global i32 0, align 4
@SLB_MIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @reload_slb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_slb(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.slb_shadow*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  call void asm sideeffect "slbmte $0,$0; slbia", "r,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !2
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.slb_shadow*, %struct.slb_shadow** %11, align 8
  store %struct.slb_shadow* %12, %struct.slb_shadow** %3, align 8
  %13 = load %struct.slb_shadow*, %struct.slb_shadow** %3, align 8
  %14 = icmp ne %struct.slb_shadow* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %68

16:                                               ; preds = %1
  %17 = load i32, i32* @u32, align 4
  %18 = load %struct.slb_shadow*, %struct.slb_shadow** %3, align 8
  %19 = getelementptr inbounds %struct.slb_shadow, %struct.slb_shadow* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = load i32, i32* @SLB_MIN_SIZE, align 4
  %23 = call i64 @min_t(i32 %17, i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.slb_shadow*, %struct.slb_shadow** %3, align 8
  %25 = getelementptr inbounds %struct.slb_shadow, %struct.slb_shadow* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = bitcast %struct.TYPE_4__* %28 to i8*
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ugt i8* %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %68

37:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load %struct.slb_shadow*, %struct.slb_shadow** %3, align 8
  %44 = getelementptr inbounds %struct.slb_shadow, %struct.slb_shadow* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be64_to_cpu(i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load %struct.slb_shadow*, %struct.slb_shadow** %3, align 8
  %52 = getelementptr inbounds %struct.slb_shadow, %struct.slb_shadow* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be64_to_cpu(i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = and i64 %59, -4096
  %61 = load i64, i64* %4, align 8
  %62 = or i64 %60, %61
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  call void asm sideeffect "slbmte $0,$1", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %63, i64 %64) #2, !srcloc !3
  br label %65

65:                                               ; preds = %42
  %66 = load i64, i64* %4, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %4, align 8
  br label %38

68:                                               ; preds = %15, %36, %38
  ret void
}

declare dso_local i64 @min_t(i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 762}
!3 = !{i32 1194}
