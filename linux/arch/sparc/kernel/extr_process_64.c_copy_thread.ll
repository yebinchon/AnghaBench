; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.task_struct = type { i32 }
%struct.thread_info = type { i32, i32, %struct.pt_regs*, i32*, i32, i64*, i64 }
%struct.pt_regs = type { i32, i64* }
%struct.sparc_stackf = type { i32 }

@STACKFRAME_SZ = common dso_local global i64 0, align 8
@TRACEREG_SZ = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@TSTATE_CWP = common dso_local global i32 0, align 4
@TI_FLAG_BYTE_CWP = common dso_local global i64 0, align 8
@ASI_P = common dso_local global i32 0, align 4
@UREG_G1 = common dso_local global i64 0, align 8
@UREG_G2 = common dso_local global i64 0, align 8
@_TIF_32BIT = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@ASI_AIUS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@UREG_I0 = common dso_local global i64 0, align 8
@UREG_I1 = common dso_local global i64 0, align 8
@CLONE_SETTLS = common dso_local global i64 0, align 8
@UREG_I3 = common dso_local global i64 0, align 8
@UREG_G7 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.thread_info*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.sparc_stackf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %17 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %16)
  store %struct.thread_info* %17, %struct.thread_info** %10, align 8
  %18 = call %struct.pt_regs* (...) @current_pt_regs()
  store %struct.pt_regs* %18, %struct.pt_regs** %11, align 8
  %19 = load i64, i64* @STACKFRAME_SZ, align 8
  %20 = load i64, i64* @TRACEREG_SZ, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %23 = call i8* @task_stack_page(%struct.task_struct* %22)
  %24 = load i64, i64* @THREAD_SIZE, align 8
  %25 = load i64, i64* %13, align 8
  %26 = sub i64 %24, %25
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %14, align 8
  %28 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64, i64* @STACK_BIAS, align 8
  %33 = sub i64 %31, %32
  %34 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %35 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %34, i32 0, i32 6
  store i64 %33, i64* %35, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  %38 = bitcast i8* %37 to %struct.pt_regs*
  %39 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %40 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %39, i32 0, i32 2
  store %struct.pt_regs* %38, %struct.pt_regs** %40, align 8
  %41 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PF_KTHREAD, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %4
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @memset(i8* %53, i32 0, i64 %54)
  %56 = call %struct.pt_regs* (...) @current_pt_regs()
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @TSTATE_CWP, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %63 = call i32* @__thread_flag_byte_ptr(%struct.thread_info* %62)
  %64 = load i64, i64* @TI_FLAG_BYTE_CWP, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @ASI_P, align 4
  %67 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %68 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %71 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %70, i32 0, i32 2
  %72 = load %struct.pt_regs*, %struct.pt_regs** %71, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @UREG_G1, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %69, i64* %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %79 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %78, i32 0, i32 2
  %80 = load %struct.pt_regs*, %struct.pt_regs** %79, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @UREG_G2, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %77, i64* %84, align 8
  store i32 0, i32* %5, align 4
  br label %216

85:                                               ; preds = %4
  %86 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %87 = bitcast %struct.pt_regs* %86 to %struct.sparc_stackf*
  %88 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %87, i64 -1
  store %struct.sparc_stackf* %88, %struct.sparc_stackf** %12, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load %struct.sparc_stackf*, %struct.sparc_stackf** %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @memcpy(i8* %89, %struct.sparc_stackf* %90, i64 %91)
  %93 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %94 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @_TIF_32BIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %85
  %100 = load i64, i64* %7, align 8
  %101 = and i64 %100, 4294967295
  store i64 %101, i64* %7, align 8
  %102 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @UREG_FP, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = and i64 %107, 4294967295
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %99, %85
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %112 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %111, i32 0, i32 2
  %113 = load %struct.pt_regs*, %struct.pt_regs** %112, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @UREG_FP, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %110, i64* %117, align 8
  %118 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* @TSTATE_CWP, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %125 = call i32* @__thread_flag_byte_ptr(%struct.thread_info* %124)
  %126 = load i64, i64* @TI_FLAG_BYTE_CWP, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* @ASI_AIUS, align 4
  %129 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %130 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %133 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @UREG_FP, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %131, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %109
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @UREG_FP, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @clone_stackframe(i64 %140, i64 %146)
  store i64 %147, i64* %15, align 8
  %148 = load i64, i64* %15, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %139
  %151 = load i32, i32* @EFAULT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %216

153:                                              ; preds = %139
  %154 = load i64, i64* %15, align 8
  %155 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %156 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %155, i32 0, i32 2
  %157 = load %struct.pt_regs*, %struct.pt_regs** %156, align 8
  %158 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @UREG_FP, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %154, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %109
  %163 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %164 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %169 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %167, %162
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %179 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %178, i32 0, i32 2
  %180 = load %struct.pt_regs*, %struct.pt_regs** %179, align 8
  %181 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* @UREG_I0, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  store i64 %177, i64* %184, align 8
  %185 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %186 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %185, i32 0, i32 2
  %187 = load %struct.pt_regs*, %struct.pt_regs** %186, align 8
  %188 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @UREG_I1, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64 1, i64* %191, align 8
  %192 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %193 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @UREG_I1, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 0, i64* %196, align 8
  %197 = load i64, i64* %6, align 8
  %198 = load i64, i64* @CLONE_SETTLS, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %174
  %202 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %203 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %202, i32 0, i32 1
  %204 = load i64*, i64** %203, align 8
  %205 = load i64, i64* @UREG_I3, align 8
  %206 = getelementptr inbounds i64, i64* %204, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %209 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %208, i32 0, i32 2
  %210 = load %struct.pt_regs*, %struct.pt_regs** %209, align 8
  %211 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = load i64, i64* @UREG_G7, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  store i64 %207, i64* %214, align 8
  br label %215

215:                                              ; preds = %201, %174
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %215, %150, %52
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

declare dso_local i8* @task_stack_page(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32* @__thread_flag_byte_ptr(%struct.thread_info*) #1

declare dso_local i32 @memcpy(i8*, %struct.sparc_stackf*, i64) #1

declare dso_local i64 @clone_stackframe(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
