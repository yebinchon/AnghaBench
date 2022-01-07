; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_setup_new_exec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_setup_new_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.thread_info = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@SLB_PRELOAD_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slb_setup_new_exec() #0 {
  %1 = alloca %struct.thread_info*, align 8
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %4, %struct.thread_info** %1, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %7, %struct.mm_struct** %2, align 8
  store i64 268435456, i64* %3, align 8
  %8 = call i32 (...) @irqs_disabled()
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %11 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 2
  %14 = load i64, i64* @SLB_PRELOAD_NR, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %54

17:                                               ; preds = %0
  %18 = call i32 (...) @hard_irq_disable()
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @is_kernel_addr(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @preload_add(%struct.thread_info* %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @slb_allocate_user(%struct.mm_struct* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %17
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @is_kernel_addr(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  %39 = load %struct.thread_info*, %struct.thread_info** %1, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @preload_add(%struct.thread_info* %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @slb_allocate_user(%struct.mm_struct* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %32
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %53 = call i32 (...) @local_irq_enable()
  br label %54

54:                                               ; preds = %52, %16
  ret void
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local i32 @is_kernel_addr(i64) #1

declare dso_local i64 @preload_add(%struct.thread_info*, i64) #1

declare dso_local i32 @slb_allocate_user(%struct.mm_struct*, i64) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1169}
