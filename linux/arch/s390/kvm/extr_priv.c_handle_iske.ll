; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_iske.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_priv.c_handle_iske.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_18__*, i32, %struct.TYPE_15__, %struct.TYPE_12__ }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_iske to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_iske(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
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
  br label %157

30:                                               ; preds = %1
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @try_handle_skey(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %2, align 4
  br label %157

45:                                               ; preds = %30
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = call i32 @kvm_s390_get_regs_rre(%struct.kvm_vcpu* %46, i32* %7, i32* %8)
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = and i64 %58, %59
  store i64 %60, i64* %4, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @kvm_s390_logical_to_effective(%struct.kvm_vcpu* %61, i64 %62)
  store i64 %63, i64* %4, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @kvm_s390_real_to_abs(%struct.kvm_vcpu* %64, i64 %65)
  store i64 %66, i64* %4, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @gpa_to_gfn(i64 %70)
  %72 = call i64 @gfn_to_hva(i32 %69, i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @kvm_is_error_hva(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %45
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %78 = load i32, i32* @PGM_ADDRESSING, align 4
  %79 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %77, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %157

80:                                               ; preds = %45
  br label %81

81:                                               ; preds = %104, %80
  store i32 0, i32* %9, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = call i32 @down_read(i32* %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @get_guest_storage_key(%struct.TYPE_19__* %89, i64 %90, i8* %6)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %81
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %101 = call i32 @fixup_user_fault(%struct.TYPE_20__* %95, %struct.TYPE_19__* %98, i64 %99, i32 %100, i32* %9)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %94
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = call i32 @up_read(i32* %108)
  br label %81

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %81
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** @current, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = call i32 @up_read(i32* %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @EFAULT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %123 = load i32, i32* @PGM_ADDRESSING, align 4
  %124 = call i32 @kvm_s390_inject_program_int(%struct.kvm_vcpu* %122, i32 %123)
  store i32 %124, i32* %2, align 4
  br label %157

125:                                              ; preds = %111
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %2, align 4
  br label %157

130:                                              ; preds = %125
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = and i64 %141, -256
  store i64 %142, i64* %140, align 8
  %143 = load i8, i8* %6, align 1
  %144 = zext i8 %143 to i64
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %146 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %145, i32 0, i32 0
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %155, %144
  store i64 %156, i64* %154, align 8
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %130, %128, %121, %76, %43, %26
  %158 = load i32, i32* %2, align 4
  ret i32 %158
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

declare dso_local i32 @get_guest_storage_key(%struct.TYPE_19__*, i64, i8*) #1

declare dso_local i32 @fixup_user_fault(%struct.TYPE_20__*, %struct.TYPE_19__*, i64, i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
