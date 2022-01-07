; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"Stack from %08lx:\00", align 1
@kstack_depth_to_print = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0ACall Trace:\00", align 1
@_stext = common dso_local global i64 0, align 8
@_etext = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c" [<%08lx>]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %4, align 8
  br label %21

19:                                               ; preds = %10
  %20 = bitcast i64** %4 to i64*
  store i64* %20, i64** %4, align 8
  br label %21

21:                                               ; preds = %19, %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i64*, i64** %4, align 8
  %24 = ptrtoint i64* %23 to i64
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @PAGE_ALIGN(i64 %25)
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %5, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = ptrtoint i64* %28 to i64
  %30 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %29)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %52, %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @kstack_depth_to_print, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i64*, i64** %4, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64*, i64** %5, align 8
  %39 = icmp ugt i64* %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %55

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %4, align 8
  %50 = load i64, i64* %48, align 8
  %51 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %31

55:                                               ; preds = %40, %31
  %56 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %84, %55
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64*, i64** %5, align 8
  %61 = icmp ule i64* %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load i64*, i64** %4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %4, align 8
  %65 = load i64, i64* %63, align 8
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @_stext, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @_etext, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = srem i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i64, i64* %6, align 8
  %81 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %69, %62
  br label %57

85:                                               ; preds = %57
  %86 = call i32 (i8*, ...) @pr_emerg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @pr_emerg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
