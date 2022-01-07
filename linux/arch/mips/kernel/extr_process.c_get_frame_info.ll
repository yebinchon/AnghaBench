; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_get_frame_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_process.c_get_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_frame_info = type { i32, i32, i64 }
%union.mips_instruction = type { i32* }

@CONFIG_CPU_MICROMIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mips_frame_info*)* @get_frame_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame_info(%struct.mips_frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mips_frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.mips_instruction, align 8
  %6 = alloca %union.mips_instruction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mips_frame_info* %0, %struct.mips_frame_info** %3, align 8
  %11 = load i32, i32* @CONFIG_CPU_MICROMIPS, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  store i32 %12, i32* %4, align 4
  store i32 128, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %14 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %16 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %18 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @msk_isa16_mode(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %union.mips_instruction*
  store %union.mips_instruction* %23, %union.mips_instruction** %6, align 8
  %24 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %25 = icmp ne %union.mips_instruction* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %134

27:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %113, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %29, 128
  br i1 %30, label %31, label %116

31:                                               ; preds = %28
  %32 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %33 = bitcast %union.mips_instruction* %32 to i8*
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to %union.mips_instruction*
  store %union.mips_instruction* %37, %union.mips_instruction** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %42 = bitcast %union.mips_instruction* %41 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @mm_insn_16bit(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %50 = bitcast %union.mips_instruction* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = bitcast %union.mips_instruction* %5 to i32*
  store i32 %54, i32* %55, align 8
  store i32 2, i32* %8, align 4
  br label %79

56:                                               ; preds = %40, %31
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %61 = bitcast %union.mips_instruction* %60 to i32**
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %67 = bitcast %union.mips_instruction* %66 to i32**
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %65, %70
  %72 = bitcast %union.mips_instruction* %5 to i32*
  store i32 %71, i32* %72, align 8
  store i32 4, i32* %8, align 4
  br label %78

73:                                               ; preds = %56
  %74 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %75 = bitcast %union.mips_instruction* %74 to i32*
  %76 = load i32, i32* %75, align 8
  %77 = bitcast %union.mips_instruction* %5 to i32*
  store i32 %76, i32* %77, align 8
  store i32 4, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %59
  br label %79

79:                                               ; preds = %78, %48
  %80 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %81 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %86 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %85, i32 0, i32 1
  %87 = call i32 @is_sp_move_ins(%union.mips_instruction* %5, i32* %86)
  br label %113

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %union.mips_instruction*, %union.mips_instruction** %6, align 8
  %93 = call i64 @is_jump_ins(%union.mips_instruction* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %10, align 4
  br label %113

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %99 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %104 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %103, i32 0, i32 0
  %105 = call i64 @is_ra_save_ins(%union.mips_instruction* %5, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %116

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %116

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %95, %84
  %114 = load i32, i32* %9, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %28

116:                                              ; preds = %111, %107, %28
  %117 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %118 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %123 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %135

127:                                              ; preds = %121, %116
  %128 = load %struct.mips_frame_info*, %struct.mips_frame_info** %3, align 8
  %129 = getelementptr inbounds %struct.mips_frame_info, %struct.mips_frame_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %2, align 4
  br label %135

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %26
  store i32 -1, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %132, %126
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @msk_isa16_mode(i32) #1

declare dso_local i64 @mm_insn_16bit(i32) #1

declare dso_local i32 @is_sp_move_ins(%union.mips_instruction*, i32*) #1

declare dso_local i64 @is_jump_ins(%union.mips_instruction*) #1

declare dso_local i64 @is_ra_save_ins(%union.mips_instruction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
