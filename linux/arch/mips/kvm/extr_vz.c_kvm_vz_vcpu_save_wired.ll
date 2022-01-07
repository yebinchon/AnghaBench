; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_save_wired.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_save_wired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_mips_tlb* }
%struct.kvm_mips_tlb = type { i64, i64*, i32 }

@MIPSR6_WIRED_WIRED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvm_vz_vcpu_save_wired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_vcpu_save_wired(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mips_tlb*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = call i32 (...) @read_gc0_wired()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @MIPSR6_WIRED_WIRED, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ugt i32 %10, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 24
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.kvm_mips_tlb* @krealloc(%struct.kvm_mips_tlb* %20, i32 %24, i32 %25)
  store %struct.kvm_mips_tlb* %26, %struct.kvm_mips_tlb** %4, align 8
  %27 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %28 = icmp ne %struct.kvm_mips_tlb* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %16
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %16
  %39 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %4, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store %struct.kvm_mips_tlb* %39, %struct.kvm_mips_tlb** %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  br label %47

47:                                               ; preds = %38, %33
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @kvm_vz_save_guesttlb(%struct.kvm_mips_tlb* %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %106, %58
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @UNIQUE_GUEST_ENTRYHI(i32 %68)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %73, i64 %75
  %77 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %76, i32 0, i32 2
  store i32 %69, i32* %77, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %81, i64 %83
  %85 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %91, i64 %93
  %95 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load %struct.kvm_mips_tlb*, %struct.kvm_mips_tlb** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %101, i64 %103
  %105 = getelementptr inbounds %struct.kvm_mips_tlb, %struct.kvm_mips_tlb* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %67
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %60

109:                                              ; preds = %60
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  ret void
}

declare dso_local i32 @read_gc0_wired(...) #1

declare dso_local %struct.kvm_mips_tlb* @krealloc(%struct.kvm_mips_tlb*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kvm_vz_save_guesttlb(%struct.kvm_mips_tlb*, i32, i32) #1

declare dso_local i32 @UNIQUE_GUEST_ENTRYHI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
