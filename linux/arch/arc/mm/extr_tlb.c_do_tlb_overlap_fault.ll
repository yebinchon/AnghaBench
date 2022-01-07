; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_do_tlb_overlap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_do_tlb_overlap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpuinfo_arc_mmu }
%struct.cpuinfo_arc_mmu = type { i32, i32 }
%struct.pt_regs = type { i32 }

@cpuinfo_arc700 = common dso_local global %struct.TYPE_2__* null, align 8
@ARC_REG_TLBINDEX = common dso_local global i32 0, align 4
@ARC_REG_TLBCOMMAND = common dso_local global i32 0, align 4
@TLBRead = common dso_local global i32 0, align 4
@ARC_REG_TLBPD0 = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@dup_pd_silent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Dup TLB PD0 %08x @ set %d ways %d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_tlb_overlap_fault(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.cpuinfo_arc_mmu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpuinfo_arc700, align 8
  %16 = call i64 (...) @smp_processor_id()
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.cpuinfo_arc_mmu* %18, %struct.cpuinfo_arc_mmu** %7, align 8
  %19 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %7, align 8
  %20 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @min(i32 %22, i32 4)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %7, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 4
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %141, %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %7, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_arc_mmu, %struct.cpuinfo_arc_mmu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %144

38:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %72, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load i32, i32* @ARC_REG_TLBINDEX, align 4
  %45 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @SET_WAY_TO_IDX(%struct.cpuinfo_arc_mmu* %45, i32 %46, i32 %47)
  %49 = call i32 @write_aux_reg(i32 %44, i32 %48)
  %50 = load i32, i32* @ARC_REG_TLBCOMMAND, align 4
  %51 = load i32, i32* @TLBRead, align 4
  %52 = call i32 @write_aux_reg(i32 %50, i32 %51)
  %53 = load i32, i32* @ARC_REG_TLBPD0, align 4
  %54 = call i32 @read_aux_reg(i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @_PAGE_PRESENT, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @PAGE_MASK, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %43
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %39

75:                                               ; preds = %39
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %141

79:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %137, %79
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %140

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %137

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %133, %92
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %136

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %133

110:                                              ; preds = %99
  %111 = load i32, i32* @dup_pd_silent, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %110
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %124
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* @ARC_REG_TLBINDEX, align 4
  %127 = load %struct.cpuinfo_arc_mmu*, %struct.cpuinfo_arc_mmu** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @SET_WAY_TO_IDX(%struct.cpuinfo_arc_mmu* %127, i32 %128, i32 %129)
  %131 = call i32 @write_aux_reg(i32 %126, i32 %130)
  %132 = call i32 (...) @__tlb_entry_erase()
  br label %133

133:                                              ; preds = %122, %109
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %95

136:                                              ; preds = %95
  br label %137

137:                                              ; preds = %136, %91
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %80

140:                                              ; preds = %80
  br label %141

141:                                              ; preds = %140, %78
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %32

144:                                              ; preds = %32
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @local_irq_restore(i64 %145)
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i32 @SET_WAY_TO_IDX(%struct.cpuinfo_arc_mmu*, i32, i32) #1

declare dso_local i32 @read_aux_reg(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @__tlb_entry_erase(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
