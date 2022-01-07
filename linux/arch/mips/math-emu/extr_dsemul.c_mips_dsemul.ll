; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dsemul.c_mips_dsemul.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dsemul.c_mips_dsemul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.pt_regs = type { i32, i64* }
%struct.emuframe = type { i32, i32 }
%union.mips_instruction = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }

@MM_NOP16 = common dso_local global i32 0, align 4
@mm_addiupc_op = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"dsemul 0x%08lx cont at 0x%08lx\0A\00", align 1
@current = common dso_local global %struct.TYPE_7__* null, align 8
@BD_EMUFRAME_NONE = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_dsemul(%struct.pt_regs* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.emuframe, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.mips_instruction, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %union.mips_instruction, align 8
  %20 = alloca %union.mips_instruction, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @get_isa16_mode(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %163

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %28
  %32 = bitcast %union.mips_instruction* %16 to i32*
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 16
  %36 = load i32, i32* @MM_NOP16, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %163

39:                                               ; preds = %31
  %40 = bitcast %union.mips_instruction* %16 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @mm_addiupc_op, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = bitcast %union.mips_instruction* %16 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 14
  %50 = and i32 %49, 15
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %17, align 4
  %52 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, -4
  store i32 %55, i32* %18, align 4
  %56 = bitcast %union.mips_instruction* %16 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %63, i64* %69, align 8
  store i32 -1, i32* %5, align 4
  br label %163

70:                                               ; preds = %39
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %74, i64 %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = call i32 @atomic_read(i32* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @BD_EMUFRAME_NONE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = call i32 (...) @alloc_emuframe()
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %84, %71
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @BD_EMUFRAME_NONE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @SIGBUS, align 4
  store i32 %91, i32* %5, align 4
  br label %163

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @BREAK_MATH(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = bitcast %union.mips_instruction* %19 to i32*
  %99 = load i32, i32* %7, align 4
  %100 = ashr i32 %99, 16
  store i32 %100, i32* %98, align 8
  %101 = bitcast %union.mips_instruction* %20 to i32*
  %102 = load i32, i32* %11, align 4
  %103 = ashr i32 %102, 16
  store i32 %103, i32* %101, align 8
  %104 = bitcast %union.mips_instruction* %19 to i32*
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.emuframe, %struct.emuframe* %13, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = bitcast %union.mips_instruction* %20 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.emuframe, %struct.emuframe* %13, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  br label %115

110:                                              ; preds = %92
  %111 = load i32, i32* %7, align 4
  %112 = getelementptr inbounds %struct.emuframe, %struct.emuframe* %13, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = getelementptr inbounds %struct.emuframe, %struct.emuframe* %13, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %97
  %116 = call i32* (...) @dsemul_page()
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = ptrtoint i32* %119 to i64
  store i64 %120, i64* %12, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %122 = load i64, i64* %12, align 8
  %123 = load i32, i32* @FOLL_FORCE, align 4
  %124 = load i32, i32* @FOLL_WRITE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @access_process_vm(%struct.TYPE_7__* %121, i64 %122, %struct.emuframe* %13, i32 8, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %128, 8
  %130 = zext i1 %129 to i32
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %115
  %134 = load i32, i32* @errors, align 4
  %135 = call i32 @MIPS_FPU_EMU_INC_STATS(i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @free_emuframe(i32 %136, i32 %139)
  %141 = load i32, i32* @SIGBUS, align 4
  store i32 %141, i32* %5, align 4
  br label %163

142:                                              ; preds = %115
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @atomic_set(i32* %153, i32 %154)
  %156 = load i64, i64* %12, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = or i64 %156, %158
  %160 = trunc i64 %159 to i32
  %161 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %142, %133, %90, %45, %38, %27
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @get_isa16_mode(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @alloc_emuframe(...) #1

declare dso_local i32 @BREAK_MATH(i32) #1

declare dso_local i32* @dsemul_page(...) #1

declare dso_local i32 @access_process_vm(%struct.TYPE_7__*, i64, %struct.emuframe*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MIPS_FPU_EMU_INC_STATS(i32) #1

declare dso_local i32 @free_emuframe(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
