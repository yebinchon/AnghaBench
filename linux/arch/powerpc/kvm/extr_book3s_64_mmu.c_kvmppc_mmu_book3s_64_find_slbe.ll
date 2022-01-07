; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_find_slbe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_kvmppc_mmu_book3s_64_find_slbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_slb = type { i64, i64, i64, i64, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kvmppc_slb* }

@.str = private unnamed_addr constant [49 x i8] c"KVM: No SLB entry found for 0x%lx [%llx | %llx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"  %d: %c%c%c %llx %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvmppc_slb* (%struct.kvm_vcpu*, i32)* @kvmppc_mmu_book3s_64_find_slbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvmppc_slb* @kvmppc_mmu_book3s_64_find_slbe(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvmppc_slb*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @GET_ESID(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @GET_ESID_1T(i32 %12)
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %68, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %26, i64 %28
  %30 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  br label %68

34:                                               ; preds = %21
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %38, i64 %40
  %42 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %34
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %51, i64 %53
  %55 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %63, i64 %65
  store %struct.kvmppc_slb* %66, %struct.kvmppc_slb** %3, align 8
  br label %160

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %14

71:                                               ; preds = %14
  %72 = load i32, i32* %5, align 4
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i8
  %75 = load i64, i64* %8, align 8
  %76 = trunc i64 %75 to i8
  %77 = call i32 (i8*, i32, i8, i8, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %72, i8 signext %74, i8 signext %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %156, %71
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %159

85:                                               ; preds = %78
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %89, i64 %91
  %93 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %155

96:                                               ; preds = %85
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %101, i64 %103
  %105 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 118, i32 32
  %110 = trunc i32 %109 to i8
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %114, i64 %116
  %118 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 108, i32 32
  %123 = trunc i32 %122 to i8
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %125 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %127, i64 %129
  %131 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 116, i32 32
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %137 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %139, i64 %141
  %143 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %148, i64 %150
  %152 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i8*, i32, i8, i8, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %97, i8 signext %110, i8 signext %123, i32 %135, i64 %144, i64 %153)
  br label %155

155:                                              ; preds = %96, %85
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %78

159:                                              ; preds = %78
  store %struct.kvmppc_slb* null, %struct.kvmppc_slb** %3, align 8
  br label %160

160:                                              ; preds = %159, %59
  %161 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %3, align 8
  ret %struct.kvmppc_slb* %161
}

declare dso_local i64 @GET_ESID(i32) #1

declare dso_local i64 @GET_ESID_1T(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i8 signext, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
