; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_lpsw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_kvm_s390_handle_lpsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@PGM_SPECIFICATION = common dso_local global i32 0, align 4
@PSW32_MASK_BASE = common dso_local global i32 0, align 4
@PSW32_ADDR_AMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_handle_lpsw(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load i32, i32* @PGM_PRIVILEGED_OP, align 4
  %28 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %26, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu* %30, i32* %8)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 7
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @PGM_SPECIFICATION, align 4
  %38 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %92

39:                                               ; preds = %29
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @read_guest(%struct.kvm_vcpu* %40, i32 %41, i32 %42, %struct.TYPE_12__* %5, i32 8)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu* %47, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %92

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PSW32_MASK_BASE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = load i32, i32* @PGM_SPECIFICATION, align 4
  %59 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %92

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PSW32_MASK_BASE, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = shl i32 %65, 32
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PSW32_ADDR_AMODE, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PSW32_ADDR_AMODE, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = call i32 @is_valid_psw(%struct.TYPE_11__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %60
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = load i32, i32* @PGM_SPECIFICATION, align 4
  %90 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %88, i32 %89)
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %87, %56, %46, %35, %25
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_s390_get_base_disp_s(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @read_guest(%struct.kvm_vcpu*, i32, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kvm_s390_inject_prog_cond(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_valid_psw(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
