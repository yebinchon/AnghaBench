; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_instruction(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @trace_kvm_s390_intercept_instruction(%struct.kvm_vcpu* %9, i32 %15, i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 8
  switch i32 %29, label %66 [
    i32 1, label %30
    i32 130, label %33
    i32 131, label %36
    i32 170, label %39
    i32 174, label %42
    i32 178, label %45
    i32 182, label %48
    i32 183, label %51
    i32 185, label %54
    i32 227, label %57
    i32 229, label %60
    i32 235, label %63
  ]

30:                                               ; preds = %1
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvm_s390_handle_01(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %1
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @kvm_s390_handle_lpsw(%struct.kvm_vcpu* %34)
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %1
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @kvm_s390_handle_diag(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %2, align 4
  br label %69

39:                                               ; preds = %1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @kvm_s390_handle_aa(%struct.kvm_vcpu* %40)
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %1
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_s390_handle_sigp(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %1
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @kvm_s390_handle_b2(%struct.kvm_vcpu* %46)
  store i32 %47, i32* %2, align 4
  br label %69

48:                                               ; preds = %1
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 @kvm_s390_handle_stctl(%struct.kvm_vcpu* %49)
  store i32 %50, i32* %2, align 4
  br label %69

51:                                               ; preds = %1
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @kvm_s390_handle_lctl(%struct.kvm_vcpu* %52)
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %1
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i32 @kvm_s390_handle_b9(%struct.kvm_vcpu* %55)
  store i32 %56, i32* %2, align 4
  br label %69

57:                                               ; preds = %1
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @kvm_s390_handle_e3(%struct.kvm_vcpu* %58)
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %1
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = call i32 @kvm_s390_handle_e5(%struct.kvm_vcpu* %61)
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %1
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 @kvm_s390_handle_eb(%struct.kvm_vcpu* %64)
  store i32 %65, i32* %2, align 4
  br label %69

66:                                               ; preds = %1
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @trace_kvm_s390_intercept_instruction(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_s390_handle_01(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_lpsw(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_diag(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_aa(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_sigp(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_b2(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_stctl(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_lctl(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_b9(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_e3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_e5(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_eb(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
