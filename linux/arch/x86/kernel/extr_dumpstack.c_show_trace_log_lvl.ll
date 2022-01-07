; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_trace_log_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_trace_log_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64 }
%struct.unwind_state = type { i32 }
%struct.stack_info = type { i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%sCall Trace:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s <%s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s </%s>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace_log_lvl(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.unwind_state, align 4
  %10 = alloca %struct.stack_info, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = bitcast %struct.stack_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = call i32 @unwind_start(%struct.unwind_state* %9, %struct.task_struct* %22, %struct.pt_regs* %23, i64* %24)
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %33

29:                                               ; preds = %4
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %32 = call i64* @get_stack_pointer(%struct.task_struct* %30, %struct.pt_regs* %31)
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i64* [ %26, %28 ], [ %32, %29 ]
  store i64* %34, i64** %7, align 8
  %35 = call %struct.pt_regs* @unwind_get_entry_regs(%struct.unwind_state* %9, i32* %13)
  store %struct.pt_regs* %35, %struct.pt_regs** %6, align 8
  br label %36

36:                                               ; preds = %143, %33
  %37 = load i64*, i64** %7, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %147

39:                                               ; preds = %36
  %40 = load i64*, i64** %7, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = call i64 @get_stack_info(i64* %40, %struct.task_struct* %41, %struct.stack_info* %10, i64* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i64*, i64** %7, align 8
  %46 = ptrtoint i64* %45 to i64
  %47 = call i64 @PAGE_ALIGN(i64 %46)
  %48 = inttoptr i64 %47 to i64*
  store i64* %48, i64** %7, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %51 = call i64 @get_stack_info(i64* %49, %struct.task_struct* %50, %struct.stack_info* %10, i64* %11)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %147

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @stack_type_name(i32 %57)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %67 = icmp ne %struct.pt_regs* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @show_regs_if_on_stack(%struct.stack_info* %10, %struct.pt_regs* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %132, %72
  %74 = load i64*, i64** %7, align 8
  %75 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %10, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = icmp ult i64* %74, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @READ_ONCE_NOCHECK(i64 %80)
  store i64 %81, i64* %17, align 8
  %82 = call i64* @unwind_get_return_address_ptr(%struct.unwind_state* %9)
  store i64* %82, i64** %18, align 8
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @__kernel_text_address(i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  br label %132

87:                                               ; preds = %78
  %88 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %89 = icmp ne %struct.pt_regs* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64*, i64** %7, align 8
  %92 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = icmp eq i64* %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %122

96:                                               ; preds = %90, %87
  %97 = load i64*, i64** %7, align 8
  %98 = load i64*, i64** %18, align 8
  %99 = icmp eq i64* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %16, align 4
  br label %101

101:                                              ; preds = %100, %96
  %102 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = call i64 @ftrace_graph_ret_addr(%struct.task_struct* %102, i32* %12, i64 %103, i64* %104)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %17, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i64, i64* %17, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @printk_stack_address(i64 %110, i32 0, i8* %111)
  br label %113

113:                                              ; preds = %109, %101
  %114 = load i64, i64* %15, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @printk_stack_address(i64 %114, i32 %115, i8* %116)
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %113
  br label %132

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %95
  %123 = call i32 @unwind_next_frame(%struct.unwind_state* %9)
  %124 = call %struct.pt_regs* @unwind_get_entry_regs(%struct.unwind_state* %9, i32* %13)
  store %struct.pt_regs* %124, %struct.pt_regs** %6, align 8
  %125 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %126 = icmp ne %struct.pt_regs* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @show_regs_if_on_stack(%struct.stack_info* %10, %struct.pt_regs* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  br label %132

132:                                              ; preds = %131, %120, %86
  %133 = load i64*, i64** %7, align 8
  %134 = getelementptr inbounds i64, i64* %133, i32 1
  store i64* %134, i64** %7, align 8
  br label %73

135:                                              ; preds = %73
  %136 = load i8*, i8** %14, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %139, i8* %140)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %10, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i64* @PTR_ALIGN(i32 %145, i32 8)
  store i64* %146, i64** %7, align 8
  br label %36

147:                                              ; preds = %53, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printk(i8*, i8*, ...) #2

declare dso_local i32 @unwind_start(%struct.unwind_state*, %struct.task_struct*, %struct.pt_regs*, i64*) #2

declare dso_local i64* @get_stack_pointer(%struct.task_struct*, %struct.pt_regs*) #2

declare dso_local %struct.pt_regs* @unwind_get_entry_regs(%struct.unwind_state*, i32*) #2

declare dso_local i64 @get_stack_info(i64*, %struct.task_struct*, %struct.stack_info*, i64*) #2

declare dso_local i64 @PAGE_ALIGN(i64) #2

declare dso_local i8* @stack_type_name(i32) #2

declare dso_local i32 @show_regs_if_on_stack(%struct.stack_info*, %struct.pt_regs*, i32) #2

declare dso_local i64 @READ_ONCE_NOCHECK(i64) #2

declare dso_local i64* @unwind_get_return_address_ptr(%struct.unwind_state*) #2

declare dso_local i32 @__kernel_text_address(i64) #2

declare dso_local i64 @ftrace_graph_ret_addr(%struct.task_struct*, i32*, i64, i64*) #2

declare dso_local i32 @printk_stack_address(i64, i32, i8*) #2

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #2

declare dso_local i64* @PTR_ALIGN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
