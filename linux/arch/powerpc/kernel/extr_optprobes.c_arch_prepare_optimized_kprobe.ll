; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_arch_prepare_optimized_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_optprobes.c_arch_prepare_optimized_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.optimized_kprobe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.kprobe = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32* }

@MAX_OPTINSN_SIZE = common dso_local global i32 0, align 4
@kprobe_ppc_optinsn_slots = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TMPL_RET_IDX = common dso_local global i32 0, align 4
@TMPL_END_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Copying template to %p, size %lu\0A\00", align 1
@optprobe_template_entry = common dso_local global i32* null, align 8
@TMPL_OP_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"optimized_callback\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"emulate_step\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Unable to lookup optimized_callback()/emulate_step()\0A\00", align 1
@TMPL_CALL_HDLR_IDX = common dso_local global i32 0, align 4
@BRANCH_SET_LINK = common dso_local global i32 0, align 4
@TMPL_EMULATE_IDX = common dso_local global i32 0, align 4
@TMPL_INSN_IDX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_prepare_optimized_kprobe(%struct.optimized_kprobe* %0, %struct.kprobe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.optimized_kprobe*, align 8
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.optimized_kprobe* %0, %struct.optimized_kprobe** %4, align 8
  store %struct.kprobe* %1, %struct.kprobe** %5, align 8
  %16 = load i32, i32* @MAX_OPTINSN_SIZE, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @kprobe_ppc_optinsn_slots, i32 0, i32 0), align 4
  %17 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %18 = call i64 @can_optimize(%struct.kprobe* %17)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EILSEQ, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %173

24:                                               ; preds = %2
  %25 = call i32* (...) @get_ppc_optinsn_slot()
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %173

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %35 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %33, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @is_offset_in_branch_range(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %168

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @TMPL_RET_IDX, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = ptrtoint i32* %46 to i64
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @is_offset_in_branch_range(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %168

54:                                               ; preds = %42
  %55 = load i32, i32* @TMPL_END_IDX, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = udiv i64 %57, 4
  store i64 %58, i64* %13, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @pr_devel(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %59, i64 %60)
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %82, %54
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %13, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** @optprobe_template_entry, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @patch_instruction(i32* %71, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %168

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %4, align 8
  %87 = ptrtoint %struct.optimized_kprobe* %86 to i64
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* @TMPL_OP_IDX, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @patch_imm64_load_insns(i64 %87, i32* %91)
  %93 = call i64 @ppc_kallsyms_lookup_name(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %9, align 8
  %95 = call i64 @ppc_kallsyms_lookup_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %10, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99, %85
  %103 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %168

104:                                              ; preds = %99
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* @TMPL_CALL_HDLR_IDX, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32*, i32** %9, align 8
  %110 = ptrtoint i32* %109 to i64
  %111 = load i32, i32* @BRANCH_SET_LINK, align 4
  %112 = call i32 @create_branch(i32* %108, i64 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @TMPL_EMULATE_IDX, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32*, i32** %10, align 8
  %118 = ptrtoint i32* %117 to i64
  %119 = load i32, i32* @BRANCH_SET_LINK, align 4
  %120 = call i32 @create_branch(i32* %116, i64 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %104
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123, %104
  br label %168

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* @TMPL_CALL_HDLR_IDX, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @patch_instruction(i32* %131, i32 %132)
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @TMPL_EMULATE_IDX, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @patch_instruction(i32* %137, i32 %138)
  %140 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %141 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* @TMPL_INSN_IDX, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = call i32 @patch_imm32_load_insns(i32 %144, i32* %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @TMPL_RET_IDX, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @patch_branch(i32* %153, i64 %154, i32 0)
  %156 = load i32*, i32** %6, align 8
  %157 = ptrtoint i32* %156 to i64
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* @TMPL_END_IDX, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = ptrtoint i32* %161 to i64
  %163 = call i32 @flush_icache_range(i64 %157, i64 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.optimized_kprobe*, %struct.optimized_kprobe** %4, align 8
  %166 = getelementptr inbounds %struct.optimized_kprobe, %struct.optimized_kprobe* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  store i32* %164, i32** %167, align 8
  store i32 0, i32* %3, align 4
  br label %173

168:                                              ; preds = %126, %102, %80, %53, %41
  %169 = load i32*, i32** %6, align 8
  %170 = call i32 @free_ppc_optinsn_slot(i32* %169, i32 0)
  %171 = load i32, i32* @ERANGE, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %168, %127, %28, %21
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @can_optimize(%struct.kprobe*) #1

declare dso_local i32* @get_ppc_optinsn_slot(...) #1

declare dso_local i32 @is_offset_in_branch_range(i64) #1

declare dso_local i32 @pr_devel(i8*, i32*, i64) #1

declare dso_local i32 @patch_instruction(i32*, i32) #1

declare dso_local i32 @patch_imm64_load_insns(i64, i32*) #1

declare dso_local i64 @ppc_kallsyms_lookup_name(i8*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @create_branch(i32*, i64, i32) #1

declare dso_local i32 @patch_imm32_load_insns(i32, i32*) #1

declare dso_local i32 @patch_branch(i32*, i64, i32) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @free_ppc_optinsn_slot(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
