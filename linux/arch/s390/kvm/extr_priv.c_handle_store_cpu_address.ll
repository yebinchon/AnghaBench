; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_store_cpu_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_store_cpu_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"STAP: storing cpu address (%u) to 0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_store_cpu_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_store_cpu_address(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %29 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu* %31, i32* %7)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = load i32, i32* @PGM_SPECIFICATION, align 4
  %39 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %37, i32 %38)
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @write_guest(%struct.kvm_vcpu* %41, i32 %42, i32 %43, i32* %4, i32 4)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %40
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %52, i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @trace_kvm_s390_handle_stap(%struct.kvm_vcpu* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %51, %47, %36, %26
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @write_guest(%struct.kvm_vcpu*, i32, i32, i32*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

declare dso_local i32 @trace_kvm_s390_handle_stap(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
