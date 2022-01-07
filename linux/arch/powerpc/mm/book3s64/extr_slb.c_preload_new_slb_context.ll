; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_new_slb_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_preload_new_slb_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.thread_info = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@SLB_PRELOAD_NR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preload_new_slb_context(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %8, %struct.thread_info** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i32 (...) @irqs_disabled()
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 3
  %21 = load i64, i64* @SLB_PRELOAD_NR, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %72

24:                                               ; preds = %2
  %25 = call i32 (...) @hard_irq_disable()
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @is_kernel_addr(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @preload_add(%struct.thread_info* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @slb_allocate_user(%struct.mm_struct* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @is_kernel_addr(i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @preload_add(%struct.thread_info* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @slb_allocate_user(%struct.mm_struct* %49, i64 %50)
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @is_kernel_addr(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @preload_add(%struct.thread_info* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @slb_allocate_user(%struct.mm_struct* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %56, %53
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %71 = call i32 (...) @local_irq_enable()
  br label %72

72:                                               ; preds = %70, %23
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
!2 = !{i32 1283}
