; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Stack from %08lx:\00", align 1
@kstack_depth_to_print = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0ACall Trace:\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" [<%08lx>]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = bitcast i64** %4 to i64*
  store i64* %11, i64** %4, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i64*, i64** %4, align 8
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = ptrtoint i64* %14 to i64
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %44, %12
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @kstack_depth_to_print, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = ptrtoint i64* %22 to i64
  %24 = load i32, i32* @THREAD_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = and i64 %23, %26
  %28 = load i32, i32* @THREAD_SIZE, align 4
  %29 = sub nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %47

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = srem i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %5, align 8
  %42 = load i64, i64* %40, align 8
  %43 = call i32 @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %17

47:                                               ; preds = %32, %17
  %48 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %49 = load i64*, i64** %4, align 8
  store i64* %49, i64** %5, align 8
  br label %50

50:                                               ; preds = %79, %47
  %51 = load i64*, i64** %5, align 8
  %52 = ptrtoint i64* %51 to i64
  %53 = load i32, i32* @THREAD_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = load i32, i32* @THREAD_SIZE, align 4
  %58 = sub nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %50
  %62 = load i64*, i64** %5, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %5, align 8
  %64 = load i64, i64* %62, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @check_kernel_text(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = srem i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %74, %61
  br label %50

80:                                               ; preds = %50
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_cont(i8*, i64) #1

declare dso_local i64 @check_kernel_text(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
