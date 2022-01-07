; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_one_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_one_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%union.kvmppc_one_reg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_set_one_reg(%struct.kvm_vcpu* %0, i32 %1, %union.kvmppc_one_reg* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.kvmppc_one_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.kvmppc_one_reg* %2, %union.kvmppc_one_reg** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %108 [
    i32 135, label %14
    i32 134, label %24
    i32 139, label %34
    i32 138, label %44
    i32 136, label %54
    i32 131, label %63
    i32 140, label %72
    i32 129, label %81
    i32 130, label %90
    i32 128, label %99
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %17 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @set_reg_val(i32 %15, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store i8* %19, i8** %23, align 8
  br label %122

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %27 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @set_reg_val(i32 %25, i32 %28)
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i8* %29, i8** %33, align 8
  br label %122

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %37 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @set_reg_val(i32 %35, i32 %38)
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  br label %122

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %47 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @set_reg_val(i32 %45, i32 %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  br label %122

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %57 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @set_reg_val(i32 %55, i32 %58)
  store i8* %59, i8** %8, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @kvmppc_set_epr(%struct.kvm_vcpu* %60, i8* %61)
  br label %122

63:                                               ; preds = %3
  %64 = load i32, i32* %5, align 4
  %65 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %66 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @set_reg_val(i32 %64, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @kvmppc_set_tsr_bits(%struct.kvm_vcpu* %69, i8* %70)
  br label %122

72:                                               ; preds = %3
  %73 = load i32, i32* %5, align 4
  %74 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %75 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @set_reg_val(i32 %73, i32 %76)
  store i8* %77, i8** %10, align 8
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @kvmppc_clr_tsr_bits(%struct.kvm_vcpu* %78, i8* %79)
  br label %122

81:                                               ; preds = %3
  %82 = load i32, i32* %5, align 4
  %83 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %84 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @set_reg_val(i32 %82, i32 %85)
  store i8* %86, i8** %11, align 8
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @kvmppc_set_tsr(%struct.kvm_vcpu* %87, i8* %88)
  br label %122

90:                                               ; preds = %3
  %91 = load i32, i32* %5, align 4
  %92 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %93 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @set_reg_val(i32 %91, i32 %94)
  store i8* %95, i8** %12, align 8
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @kvmppc_set_tcr(%struct.kvm_vcpu* %96, i8* %97)
  br label %122

99:                                               ; preds = %3
  %100 = load i32, i32* %5, align 4
  %101 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %102 = getelementptr inbounds %union.kvmppc_one_reg, %union.kvmppc_one_reg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @set_reg_val(i32 %100, i32 %103)
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %122

108:                                              ; preds = %3
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = bitcast {}** %115 to i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)**
  %117 = load i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)*, i32 (%struct.kvm_vcpu*, i32, %union.kvmppc_one_reg*)** %116, align 8
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %union.kvmppc_one_reg*, %union.kvmppc_one_reg** %6, align 8
  %121 = call i32 %117(%struct.kvm_vcpu* %118, i32 %119, %union.kvmppc_one_reg* %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %108, %99, %90, %81, %72, %63, %54, %44, %34, %24, %14
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i8* @set_reg_val(i32, i32) #1

declare dso_local i32 @kvmppc_set_epr(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvmppc_set_tsr_bits(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvmppc_clr_tsr_bits(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvmppc_set_tsr(%struct.kvm_vcpu*, i8*) #1

declare dso_local i32 @kvmppc_set_tcr(%struct.kvm_vcpu*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
