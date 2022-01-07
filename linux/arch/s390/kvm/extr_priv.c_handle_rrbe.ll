; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_rrbe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_rrbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_18__*, %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@PGM_PRIVILEGED_OP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PGM_ADDRESSING = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_20__* null, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_rrbe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rrbe(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
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
  br label %133

29:                                               ; preds = %1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @try_handle_skey(%struct.kvm_vcpu* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  store i32 %43, i32* %2, align 4
  br label %133

44:                                               ; preds = %29
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %45, i32* %6, i32* %7)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PAGE_MASK, align 8
  %59 = and i64 %57, %58
  store i64 %59, i64* %5, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %60, i64 %61)
  store i64 %62, i64* %5, align 8
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %63, i64 %64)
  store i64 %65, i64* %5, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @gpa_to_gfn(i64 %69)
  %71 = call i64 @gfn_to_hva(i32 %68, i32 %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @kvm_is_error_hva(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %44
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i32, i32* @PGM_ADDRESSING, align 4
  %78 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %76, i32 %77)
  store i32 %78, i32* %2, align 4
  br label %133

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %103, %79
  store i32 0, i32* %8, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = call i32 @down_read(i32* %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @reset_guest_reference_bit(%struct.TYPE_19__* %88, i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %80
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %100 = call i32 @fixup_user_fault(%struct.TYPE_20__* %94, %struct.TYPE_19__* %97, i64 %98, i32 %99, i32* %8)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %93
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = call i32 @up_read(i32* %107)
  br label %80

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %80
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = call i32 @up_read(i32* %114)
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @EFAULT, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = load i32, i32* @PGM_ADDRESSING, align 4
  %123 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %121, i32 %122)
  store i32 %123, i32* %2, align 4
  br label %133

124:                                              ; preds = %110
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %124
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu* %130, i32 %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %127, %120, %75, %42, %25
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @try_handle_skey(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @gfn_to_hva(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @kvm_is_error_hva(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @reset_guest_reference_bit(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @fixup_user_fault(%struct.TYPE_20__*, %struct.TYPE_19__*, i64, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kvm_s390_set_psw_cc(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
