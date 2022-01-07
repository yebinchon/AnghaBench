; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_update_stack_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c_update_stack_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64*, i32, i64*, i32, i32, i32, %struct.pt_regs*, %struct.stack_info, i32 }
%struct.pt_regs = type { i32 }
%struct.stack_info = type { i32, i32 }

@FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*, i64*)* @update_stack_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_stack_state(%struct.unwind_state* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unwind_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.stack_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 7
  store %struct.stack_info* %15, %struct.stack_info** %6, align 8
  %16 = load %struct.stack_info*, %struct.stack_info** %6, align 8
  %17 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 6
  %21 = load %struct.pt_regs*, %struct.pt_regs** %20, align 8
  %22 = icmp ne %struct.pt_regs* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %25 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %24, i32 0, i32 6
  %26 = load %struct.pt_regs*, %struct.pt_regs** %25, align 8
  %27 = bitcast %struct.pt_regs* %26 to i8*
  %28 = getelementptr i8, i8* %27, i64 4
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** %10, align 8
  br label %38

30:                                               ; preds = %2
  %31 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %32 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = bitcast i64* %33 to i8*
  %35 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** %10, align 8
  br label %38

38:                                               ; preds = %30, %23
  %39 = load i64*, i64** %5, align 8
  %40 = call %struct.pt_regs* @decode_frame_pointer(i64* %39)
  store %struct.pt_regs* %40, %struct.pt_regs** %8, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %42 = icmp ne %struct.pt_regs* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %45 = bitcast %struct.pt_regs* %44 to i64*
  store i64* %45, i64** %9, align 8
  store i64 4, i64* %13, align 8
  %46 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %47 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %46, i32 0, i32 1
  store i32 1, i32* %47, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load i64*, i64** %5, align 8
  store i64* %49, i64** %9, align 8
  %50 = load i64, i64* @FRAME_HEADER_SIZE, align 8
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %48, %43
  br label %52

52:                                               ; preds = %72, %51
  %53 = load %struct.stack_info*, %struct.stack_info** %6, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %13, align 8
  %56 = call i32 @on_stack(%struct.stack_info* %53, i64* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load %struct.stack_info*, %struct.stack_info** %6, align 8
  %61 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %64 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.stack_info*, %struct.stack_info** %6, align 8
  %67 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %68 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %67, i32 0, i32 8
  %69 = call i64 @get_stack_info(i32 %62, i32 %65, %struct.stack_info* %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %148

72:                                               ; preds = %59
  br label %52

73:                                               ; preds = %52
  %74 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %75 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %80 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i64*, i64** %9, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = icmp ult i64* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %148

90:                                               ; preds = %85, %78, %73
  %91 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %92 = icmp ne %struct.pt_regs* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %95 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %96 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %95, i32 0, i32 6
  store %struct.pt_regs* %94, %struct.pt_regs** %96, align 8
  %97 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %98 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %97, i32 0, i32 0
  store i64* null, i64** %98, align 8
  br label %105

99:                                               ; preds = %90
  %100 = load i64*, i64** %5, align 8
  %101 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %102 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %101, i32 0, i32 0
  store i64* %100, i64** %102, align 8
  %103 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %104 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %103, i32 0, i32 6
  store %struct.pt_regs* null, %struct.pt_regs** %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %107 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %106, i32 0, i32 6
  %108 = load %struct.pt_regs*, %struct.pt_regs** %107, align 8
  %109 = icmp ne %struct.pt_regs* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %112 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %111, i32 0, i32 6
  %113 = load %struct.pt_regs*, %struct.pt_regs** %112, align 8
  %114 = call i64 @user_mode(%struct.pt_regs* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %118 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %117, i32 0, i32 5
  store i32 0, i32* %118, align 8
  br label %138

119:                                              ; preds = %110, %105
  %120 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %121 = call i64* @unwind_get_return_address_ptr(%struct.unwind_state* %120)
  store i64* %121, i64** %11, align 8
  %122 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %123 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i64*, i64** %11, align 8
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @READ_ONCE_TASK_STACK(i32 %124, i64 %126)
  store i64 %127, i64* %12, align 8
  %128 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %129 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %132 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %131, i32 0, i32 3
  %133 = load i64, i64* %12, align 8
  %134 = load i64*, i64** %11, align 8
  %135 = call i32 @ftrace_graph_ret_addr(i32 %130, i32* %132, i64 %133, i64* %134)
  %136 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %137 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %119, %116
  %139 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %140 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %139, i32 0, i32 2
  %141 = load i64*, i64** %140, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i64*, i64** %9, align 8
  %145 = load %struct.unwind_state*, %struct.unwind_state** %4, align 8
  %146 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %145, i32 0, i32 2
  store i64* %144, i64** %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  store i32 1, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %89, %71
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.pt_regs* @decode_frame_pointer(i64*) #1

declare dso_local i32 @on_stack(%struct.stack_info*, i64*, i64) #1

declare dso_local i64 @get_stack_info(i32, i32, %struct.stack_info*, i32*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64* @unwind_get_return_address_ptr(%struct.unwind_state*) #1

declare dso_local i64 @READ_ONCE_TASK_STACK(i32, i64) #1

declare dso_local i32 @ftrace_graph_ret_addr(i32, i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
