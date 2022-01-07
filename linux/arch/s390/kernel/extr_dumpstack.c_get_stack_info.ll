; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_get_stack_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_get_stack_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_info = type { i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@STACK_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_stack_info(i64 %0, %struct.task_struct* %1, %struct.stack_info* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.stack_info*, align 8
  %9 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store %struct.stack_info* %2, %struct.stack_info** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %67

13:                                               ; preds = %4
  %14 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi %struct.task_struct* [ %14, %16 ], [ %18, %17 ]
  store %struct.task_struct* %20, %struct.task_struct** %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %24 = call i64 @in_task_stack(i64 %21, %struct.task_struct* %22, %struct.stack_info* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %30 = icmp ne %struct.task_struct* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %67

32:                                               ; preds = %27
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %35 = call i32 @in_irq_stack(i64 %33, %struct.stack_info* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %40 = call i32 @in_nodat_stack(i64 %38, %struct.stack_info* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %45 = call i32 @in_restart_stack(i64 %43, %struct.stack_info* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %67

48:                                               ; preds = %42, %37, %32
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i64*, i64** %9, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %53 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = shl i64 1, %54
  %56 = and i64 %51, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %67

59:                                               ; preds = %49
  %60 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %61 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 1, %62
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %73

67:                                               ; preds = %58, %47, %31, %12
  %68 = load i64, i64* @STACK_TYPE_UNKNOWN, align 8
  %69 = load %struct.stack_info*, %struct.stack_info** %8, align 8
  %70 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %67, %59
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @in_task_stack(i64, %struct.task_struct*, %struct.stack_info*) #1

declare dso_local i32 @in_irq_stack(i64, %struct.stack_info*) #1

declare dso_local i32 @in_nodat_stack(i64, %struct.stack_info*) #1

declare dso_local i32 @in_restart_stack(i64, %struct.stack_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
