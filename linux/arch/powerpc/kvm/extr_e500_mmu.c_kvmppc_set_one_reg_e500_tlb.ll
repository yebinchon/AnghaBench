; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_set_one_reg_e500_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_set_one_reg_e500_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8**, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%union.kvmppc_one_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_set_one_reg_e500_tlb(%struct.kvm_vcpu* %0, i32 %1, %union.kvmppc_one_reg* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.kvmppc_one_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.kvmppc_one_reg* %2, %union.kvmppc_one_reg** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %156 [
    i32 142, label %14
    i32 141, label %25
    i32 140, label %36
    i32 137, label %47
    i32 139, label %58
    i32 138, label %69
    i32 136, label %80
    i32 143, label %96
    i32 135, label %112
    i32 133, label %112
    i32 131, label %112
    i32 129, label %112
    i32 134, label %134
    i32 132, label %134
    i32 130, label %134
    i32 128, label %134
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %17 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @set_reg_val(i32 %15, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  store i8* %19, i8** %24, align 8
  br label %159

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %28 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @set_reg_val(i32 %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i8* %30, i8** %35, align 8
  br label %159

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %39 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @set_reg_val(i32 %37, i32 %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  store i8* %41, i8** %46, align 8
  br label %159

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %50 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @set_reg_val(i32 %48, i32 %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i8* %52, i8** %57, align 8
  br label %159

58:                                               ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %61 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @set_reg_val(i32 %59, i32 %62)
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i8* %63, i8** %68, align 8
  br label %159

69:                                               ; preds = %3
  %70 = load i32, i32* %5, align 4
  %71 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %72 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @set_reg_val(i32 %70, i32 %73)
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i8* %74, i8** %79, align 8
  br label %159

80:                                               ; preds = %3
  %81 = load i32, i32* %5, align 4
  %82 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %83 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @set_reg_val(i32 %81, i32 %84)
  store i8* %85, i8** %9, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %86, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %80
  br label %159

96:                                               ; preds = %3
  %97 = load i32, i32* %5, align 4
  %98 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %99 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @set_reg_val(i32 %97, i32 %100)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %108, %96
  br label %159

112:                                              ; preds = %3, %3, %3, %3
  %113 = load i32, i32* %5, align 4
  %114 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %115 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @set_reg_val(i32 %113, i32 %116)
  store i8* %117, i8** %11, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, 135
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %121, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %130, %112
  br label %159

134:                                              ; preds = %3, %3, %3, %3
  %135 = load i32, i32* %5, align 4
  %136 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %137 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @set_reg_val(i32 %135, i32 %138)
  store i8* %139, i8** %12, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sub nsw i32 %140, 134
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %8, align 8
  %143 = load i8*, i8** %12, align 8
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %145 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %143, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %134
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %152, %134
  br label %159

156:                                              ; preds = %3
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %156, %155, %133, %111, %95, %69, %58, %47, %36, %25, %14
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i8* @set_reg_val(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
