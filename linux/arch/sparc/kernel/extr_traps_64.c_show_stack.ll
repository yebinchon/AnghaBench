; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.thread_info = type { i64 }
%struct.sparc_stackf = type { i64, i64 }
%struct.pt_regs = type { i32, i64, i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Call Trace:\0A\00", align 1
@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_I6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c" [%016lx] %pS\0A\00", align 1
@return_to_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sparc_stackf*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64*, i64** %4, align 8
  %13 = ptrtoint i64* %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %17, %struct.task_struct** %3, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %19)
  store %struct.thread_info* %20, %struct.thread_info** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %26 = icmp eq %struct.task_struct* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i64 asm "mov %fp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %28, i64* %6, align 8
  br label %33

29:                                               ; preds = %23
  %30 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %31 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %29, %27
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %36 = call %struct.thread_info* (...) @current_thread_info()
  %37 = icmp eq %struct.thread_info* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (...) @flushw_all()
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @STACK_BIAS, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %95, %40
  %46 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @kstack_valid(%struct.thread_info* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %99

51:                                               ; preds = %45
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to %struct.sparc_stackf*
  store %struct.sparc_stackf* %53, %struct.sparc_stackf** %9, align 8
  %54 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %55 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %54, i64 1
  %56 = bitcast %struct.sparc_stackf* %55 to %struct.pt_regs*
  store %struct.pt_regs* %56, %struct.pt_regs** %10, align 8
  %57 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %59 = call i64 @kstack_is_trap_frame(%struct.thread_info* %57, %struct.pt_regs* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %51
  %62 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TSTATE_PRIV, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %99

69:                                               ; preds = %61
  %70 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %11, align 8
  %73 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @UREG_I6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @STACK_BIAS, align 8
  %80 = add i64 %78, %79
  store i64 %80, i64* %5, align 8
  br label %90

81:                                               ; preds = %51
  %82 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %83 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load %struct.sparc_stackf*, %struct.sparc_stackf** %9, align 8
  %86 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STACK_BIAS, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %81, %69
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %91, i8* %93)
  br label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = icmp slt i32 %97, 16
  br i1 %98, label %45, label %99

99:                                               ; preds = %95, %68, %50
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @flushw_all(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kstack_valid(%struct.thread_info*, i64) #1

declare dso_local i64 @kstack_is_trap_frame(%struct.thread_info*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1161}
