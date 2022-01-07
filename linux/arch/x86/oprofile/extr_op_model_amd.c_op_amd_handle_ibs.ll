; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_handle_ibs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_op_model_amd.c_op_amd_handle_ibs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.pt_regs = type { i32 }
%struct.op_msrs = type { i32 }
%struct.op_entry = type { i32 }

@ibs_caps = common dso_local global i32 0, align 4
@ibs_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MSR_AMD64_IBSFETCHCTL = common dso_local global i32 0, align 4
@IBS_FETCH_VAL = common dso_local global i32 0, align 4
@MSR_AMD64_IBSFETCHLINAD = common dso_local global i32 0, align 4
@IBS_FETCH_CODE = common dso_local global i32 0, align 4
@IBS_FETCH_SIZE = common dso_local global i32 0, align 4
@MSR_AMD64_IBSFETCHPHYSAD = common dso_local global i32 0, align 4
@IBS_FETCH_CNT = common dso_local global i32 0, align 4
@IBS_FETCH_ENABLE = common dso_local global i32 0, align 4
@MSR_AMD64_IBSOPCTL = common dso_local global i32 0, align 4
@IBS_OP_VAL = common dso_local global i32 0, align 4
@MSR_AMD64_IBSOPRIP = common dso_local global i32 0, align 4
@IBS_OP_CODE = common dso_local global i32 0, align 4
@ibs_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MSR_AMD64_IBSOPDATA = common dso_local global i32 0, align 4
@MSR_AMD64_IBSOPDATA2 = common dso_local global i32 0, align 4
@MSR_AMD64_IBSOPDATA3 = common dso_local global i32 0, align 4
@MSR_AMD64_IBSDCLINAD = common dso_local global i32 0, align 4
@MSR_AMD64_IBSDCPHYSAD = common dso_local global i32 0, align 4
@MSR_AMD64_IBSBRTARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_msrs*)* @op_amd_handle_ibs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_amd_handle_ibs(%struct.pt_regs* %0, %struct.op_msrs* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_msrs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.op_entry, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_msrs* %1, %struct.op_msrs** %4, align 8
  %8 = load i32, i32* @ibs_caps, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %118

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ibs_config, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load i32, i32* @MSR_AMD64_IBSFETCHCTL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rdmsrl(i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @IBS_FETCH_VAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %14
  %23 = load i32, i32* @MSR_AMD64_IBSFETCHLINAD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @rdmsrl(i32 %23, i32 %24)
  %26 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IBS_FETCH_CODE, align 4
  %29 = load i32, i32* @IBS_FETCH_SIZE, align 4
  %30 = call i32 @oprofile_write_reserve(%struct.op_entry* %7, %struct.pt_regs* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %33)
  %35 = load i32, i32* @MSR_AMD64_IBSFETCHPHYSAD, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @rdmsrl(i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %38)
  %40 = call i32 @oprofile_write_commit(%struct.op_entry* %7)
  %41 = load i32, i32* @IBS_FETCH_VAL, align 4
  %42 = load i32, i32* @IBS_FETCH_CNT, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @IBS_FETCH_ENABLE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @MSR_AMD64_IBSFETCHCTL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wrmsrl(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %22, %14
  br label %54

54:                                               ; preds = %53, %11
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ibs_config, i32 0, i32 0), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %54
  %58 = load i32, i32* @MSR_AMD64_IBSOPCTL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @rdmsrl(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @IBS_OP_VAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %117

65:                                               ; preds = %57
  %66 = load i32, i32* @MSR_AMD64_IBSOPRIP, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @rdmsrl(i32 %66, i32 %67)
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IBS_OP_CODE, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibs_state, i32 0, i32 2), align 8
  %73 = call i32 @oprofile_write_reserve(%struct.op_entry* %7, %struct.pt_regs* %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %74)
  %76 = load i32, i32* @MSR_AMD64_IBSOPDATA, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @rdmsrl(i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %79)
  %81 = load i32, i32* @MSR_AMD64_IBSOPDATA2, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rdmsrl(i32 %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %84)
  %86 = load i32, i32* @MSR_AMD64_IBSOPDATA3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @rdmsrl(i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %89)
  %91 = load i32, i32* @MSR_AMD64_IBSDCLINAD, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @rdmsrl(i32 %91, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %94)
  %96 = load i32, i32* @MSR_AMD64_IBSDCPHYSAD, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @rdmsrl(i32 %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @oprofile_add_data64(%struct.op_entry* %7, i32 %99)
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibs_state, i32 0, i32 1), align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %65
  %104 = load i32, i32* @MSR_AMD64_IBSBRTARGET, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @rdmsrl(i32 %104, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 @oprofile_add_data(%struct.op_entry* %7, i64 %108)
  br label %110

110:                                              ; preds = %103, %65
  %111 = call i32 @oprofile_write_commit(%struct.op_entry* %7)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibs_state, i32 0, i32 0), align 8
  %113 = call i32 @op_amd_randomize_ibs_op(i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @MSR_AMD64_IBSOPCTL, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @wrmsrl(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %57
  br label %118

118:                                              ; preds = %10, %117, %54
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @oprofile_write_reserve(%struct.op_entry*, %struct.pt_regs*, i32, i32, i32) #1

declare dso_local i32 @oprofile_add_data64(%struct.op_entry*, i32) #1

declare dso_local i32 @oprofile_write_commit(%struct.op_entry*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @oprofile_add_data(%struct.op_entry*, i64) #1

declare dso_local i32 @op_amd_randomize_ibs_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
