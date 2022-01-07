; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c_unwind_next_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c_unwind_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32, i64, i64, i32, i32, %struct.stack_info, %struct.pt_regs*, i32, i32 }
%struct.stack_info = type { i32 }
%struct.pt_regs = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.stack_frame = type { i32*, i32 }

@STACK_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@PSW_MASK_PSTATE = common dso_local global i32 0, align 4
@STACK_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@return_to_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind_next_frame(%struct.unwind_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unwind_state*, align 8
  %4 = alloca %struct.stack_info*, align 8
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %10 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %11 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %10, i32 0, i32 5
  store %struct.stack_info* %11, %struct.stack_info** %4, align 8
  %12 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %13 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %12, i32 0, i32 6
  %14 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  store %struct.pt_regs* %14, %struct.pt_regs** %6, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = call i64 @unlikely(%struct.pt_regs* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %1
  %19 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %25 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %28 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %50

29:                                               ; preds = %18
  %30 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 15
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @READ_ONCE_NOCHECK(i32 %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %7, align 8
  %37 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call %struct.pt_regs* @outside_of_stack(%struct.unwind_state* %37, i64 %38)
  %40 = call i64 @unlikely(%struct.pt_regs* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @update_stack_info(%struct.unwind_state* %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %140

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to %struct.stack_frame*
  store %struct.stack_frame* %52, %struct.stack_frame** %5, align 8
  %53 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %54 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @READ_ONCE_NOCHECK(i32 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.pt_regs* null, %struct.pt_regs** %6, align 8
  br label %127

60:                                               ; preds = %1
  %61 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %62 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.stack_frame*
  store %struct.stack_frame* %64, %struct.stack_frame** %5, align 8
  %65 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %66 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @READ_ONCE_NOCHECK(i32 %67)
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @likely(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %60
  %74 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call %struct.pt_regs* @outside_of_stack(%struct.unwind_state* %74, i64 %75)
  %77 = call i64 @unlikely(%struct.pt_regs* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @update_stack_info(%struct.unwind_state* %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  br label %140

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i64, i64* %7, align 8
  %88 = inttoptr i64 %87 to %struct.stack_frame*
  store %struct.stack_frame* %88, %struct.stack_frame** %5, align 8
  %89 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %90 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @READ_ONCE_NOCHECK(i32 %93)
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %126

96:                                               ; preds = %60
  %97 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %98 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @STACK_FRAME_OVERHEAD, align 8
  %101 = add i64 %99, %100
  store i64 %101, i64* %7, align 8
  %102 = load %struct.stack_info*, %struct.stack_info** %4, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @on_stack(%struct.stack_info* %102, i64 %103, i32 16)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  br label %143

107:                                              ; preds = %96
  %108 = load i64, i64* %7, align 8
  %109 = inttoptr i64 %108 to %struct.pt_regs*
  store %struct.pt_regs* %109, %struct.pt_regs** %6, align 8
  %110 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @READ_ONCE_NOCHECK(i32 %113)
  %115 = load i32, i32* @PSW_MASK_PSTATE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %143

119:                                              ; preds = %107
  %120 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %121 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @READ_ONCE_NOCHECK(i32 %123)
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %126

126:                                              ; preds = %119, %86
  br label %127

127:                                              ; preds = %126, %50
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %130 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %133 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %135 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %136 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %135, i32 0, i32 6
  store %struct.pt_regs* %134, %struct.pt_regs** %136, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %139 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  store i32 1, i32* %2, align 4
  br label %148

140:                                              ; preds = %84, %47
  %141 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %142 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %141, i32 0, i32 4
  store i32 1, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %118, %106
  %144 = load i32, i32* @STACK_TYPE_UNKNOWN, align 4
  %145 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %146 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %127
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i64 @unlikely(%struct.pt_regs*) #1

declare dso_local i32 @READ_ONCE_NOCHECK(i32) #1

declare dso_local %struct.pt_regs* @outside_of_stack(%struct.unwind_state*, i64) #1

declare dso_local i32 @update_stack_info(%struct.unwind_state*, i64) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @on_stack(%struct.stack_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
