; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_kvm_handle_sie_intercept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_kvm_handle_sie_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_handle_sie_intercept(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @kvm_is_ucontrol(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %92

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %60 [
    i32 137, label %21
    i32 135, label %27
    i32 136, label %33
    i32 131, label %36
    i32 138, label %39
    i32 128, label %42
    i32 129, label %45
    i32 130, label %48
    i32 133, label %51
    i32 132, label %54
    i32 134, label %57
  ]

21:                                               ; preds = %14
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %92

27:                                               ; preds = %14
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  store i32 0, i32* %2, align 4
  br label %92

33:                                               ; preds = %14
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @handle_instruction(%struct.kvm_vcpu* %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %14
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @handle_prog(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %14
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @handle_external_interrupt(%struct.kvm_vcpu* %40)
  store i32 %41, i32* %2, align 4
  br label %92

42:                                               ; preds = %14
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = call i32 @kvm_s390_handle_wait(%struct.kvm_vcpu* %43)
  store i32 %44, i32* %2, align 4
  br label %92

45:                                               ; preds = %14
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @handle_validity(%struct.kvm_vcpu* %46)
  store i32 %47, i32* %2, align 4
  br label %92

48:                                               ; preds = %14
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 @handle_stop(%struct.kvm_vcpu* %49)
  store i32 %50, i32* %2, align 4
  br label %92

51:                                               ; preds = %14
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @handle_operexc(%struct.kvm_vcpu* %52)
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %14
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i32 @handle_partial_execution(%struct.kvm_vcpu* %55)
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %14
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @kvm_s390_skey_check_enable(%struct.kvm_vcpu* %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %14
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %92

63:                                               ; preds = %57, %54, %51, %33
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %63
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %72
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = call i32 @kvm_s390_handle_per_ifetch_icpt(%struct.kvm_vcpu* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %75, %63
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  br label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %60, %48, %45, %42, %39, %36, %27, %21, %11
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @kvm_is_ucontrol(i32) #1

declare dso_local i32 @handle_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_prog(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_external_interrupt(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_wait(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_validity(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_stop(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_operexc(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_partial_execution(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_skey_check_enable(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_per_ifetch_icpt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
