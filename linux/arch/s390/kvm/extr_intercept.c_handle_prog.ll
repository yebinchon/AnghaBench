; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_prog.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PGM_SPECIFICATION = common dso_local global i64 0, align 8
@__LC_PGM_NEW_PSW = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_prog(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i64 @guestdbg_enabled(%struct.kvm_vcpu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i64 @per_event(%struct.kvm_vcpu* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32 @kvm_s390_handle_per_event(%struct.kvm_vcpu* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %18
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %77

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %14, %1
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @trace_kvm_s390_intercept_prog(%struct.kvm_vcpu* %36, i64 %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PGM_SPECIFICATION, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %35
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = load i32, i32* @__LC_PGM_NEW_PSW, align 4
  %55 = call i32 @read_guest_lc(%struct.kvm_vcpu* %53, i32 %54, i32* %4, i32 4)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %52
  %61 = call i32 @is_valid_psw(i32* %4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %77

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @handle_itdb(%struct.kvm_vcpu* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = call i32 @inject_prog_on_prog_intercept(%struct.kvm_vcpu* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %72, %63, %58, %33, %23
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @guestdbg_enabled(%struct.kvm_vcpu*) #1

declare dso_local i64 @per_event(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_handle_per_event(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_s390_intercept_prog(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @read_guest_lc(%struct.kvm_vcpu*, i32, i32*, i32) #1

declare dso_local i32 @is_valid_psw(i32*) #1

declare dso_local i32 @handle_itdb(%struct.kvm_vcpu*) #1

declare dso_local i32 @inject_prog_on_prog_intercept(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
