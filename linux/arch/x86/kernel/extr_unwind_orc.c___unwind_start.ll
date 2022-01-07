; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c___unwind_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c___unwind_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.unwind_state = type { i64, i32, i32, %struct.TYPE_5__, i32, %struct.task_struct*, i8*, i8*, %struct.pt_regs* }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i64, i8*, i8* }
%struct.inactive_task_frame = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@STACK_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__unwind_start(%struct.unwind_state* %0, %struct.task_struct* %1, %struct.pt_regs* %2, i64* %3) #0 {
  %5 = alloca %struct.unwind_state*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.inactive_task_frame*, align 8
  %10 = alloca i8*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %12 = call i32 @memset(%struct.unwind_state* %11, i32 0, i32 56)
  %13 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %14 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %15 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %14, i32 0, i32 5
  store %struct.task_struct* %13, %struct.task_struct** %15, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %17 = call i64 @task_on_another_cpu(%struct.task_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %157

20:                                               ; preds = %4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = icmp ne %struct.pt_regs* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %25 = call i64 @user_mode(%struct.pt_regs* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %157

28:                                               ; preds = %23
  %29 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %33 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %38 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %43 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %45 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %46 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %45, i32 0, i32 8
  store %struct.pt_regs* %44, %struct.pt_regs** %46, align 8
  %47 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %48 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %50 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %49, i32 0, i32 2
  store i32 1, i32* %50, align 4
  br label %92

51:                                               ; preds = %20
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %54 = icmp eq %struct.task_struct* %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %57 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %56, i32 0, i32 6
  %58 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %59 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %58, i32 0, i32 0
  %60 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %61 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %60, i32 0, i32 7
  %62 = call { i8*, i64, i8* } asm sideeffect "lea (%rip), $0\0A\09mov %rsp, $1\0A\09mov %rbp, $2\0A\09", "=r,=r,=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %63 = extractvalue { i8*, i64, i8* } %62, 0
  %64 = extractvalue { i8*, i64, i8* } %62, 1
  %65 = extractvalue { i8*, i64, i8* } %62, 2
  store i8* %63, i8** %57, align 8
  store i64 %64, i64* %59, align 8
  store i8* %65, i8** %61, align 8
  br label %91

66:                                               ; preds = %51
  %67 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %68 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct.inactive_task_frame*
  store %struct.inactive_task_frame* %72, %struct.inactive_task_frame** %9, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %74 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %78 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.inactive_task_frame*, %struct.inactive_task_frame** %9, align 8
  %80 = getelementptr inbounds %struct.inactive_task_frame, %struct.inactive_task_frame* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @READ_ONCE_NOCHECK(i32 %81)
  %83 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %84 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  %85 = load %struct.inactive_task_frame*, %struct.inactive_task_frame** %9, align 8
  %86 = getelementptr inbounds %struct.inactive_task_frame, %struct.inactive_task_frame* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @READ_ONCE_NOCHECK(i32 %87)
  %89 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %90 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %66, %55
  br label %92

92:                                               ; preds = %91, %28
  %93 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %94 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i64*
  %97 = bitcast i64* %96 to i8*
  %98 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %99 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %98, i32 0, i32 5
  %100 = load %struct.task_struct*, %struct.task_struct** %99, align 8
  %101 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %102 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %101, i32 0, i32 3
  %103 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %104 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %103, i32 0, i32 4
  %105 = call i64 @get_stack_info(i8* %97, %struct.task_struct* %100, %struct.TYPE_5__* %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %92
  %108 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %109 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @PAGE_ALIGN(i64 %110)
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %115 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %114, i32 0, i32 5
  %116 = load %struct.task_struct*, %struct.task_struct** %115, align 8
  %117 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %118 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %117, i32 0, i32 3
  %119 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %120 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %119, i32 0, i32 4
  %121 = call i64 @get_stack_info(i8* %113, %struct.task_struct* %116, %struct.TYPE_5__* %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %107
  br label %162

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %124, %92
  %126 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %127 = icmp ne %struct.pt_regs* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %130 = call i32 @unwind_next_frame(%struct.unwind_state* %129)
  br label %162

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %153, %131
  %133 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %134 = call i32 @unwind_done(%struct.unwind_state* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %132
  %137 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %138 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %137, i32 0, i32 3
  %139 = load i64*, i64** %8, align 8
  %140 = call i32 @on_stack(%struct.TYPE_5__* %138, i64* %139, i32 8)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %136
  %143 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %144 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = ptrtoint i64* %146 to i64
  %148 = icmp ule i64 %145, %147
  br label %149

149:                                              ; preds = %142, %136
  %150 = phi i1 [ true, %136 ], [ %148, %142 ]
  br label %151

151:                                              ; preds = %149, %132
  %152 = phi i1 [ false, %132 ], [ %150, %149 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %155 = call i32 @unwind_next_frame(%struct.unwind_state* %154)
  br label %132

156:                                              ; preds = %151
  br label %162

157:                                              ; preds = %27, %19
  %158 = load i32, i32* @STACK_TYPE_UNKNOWN, align 4
  %159 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %160 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  br label %162

162:                                              ; preds = %157, %156, %128, %123
  ret void
}

declare dso_local i32 @memset(%struct.unwind_state*, i32, i32) #1

declare dso_local i64 @task_on_another_cpu(%struct.task_struct*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i8* @READ_ONCE_NOCHECK(i32) #1

declare dso_local i64 @get_stack_info(i8*, %struct.task_struct*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i32 @on_stack(%struct.TYPE_5__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1573, i32 1591, i32 1619, i32 1647}
