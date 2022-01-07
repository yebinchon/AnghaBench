; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.reg_window32 = type { i64* }

@current = common dso_local global %struct.task_struct* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[%08lx : \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%pS ] \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg_window32*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %13, %struct.task_struct** %3, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %17 = icmp eq %struct.task_struct* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64*, i64** %4, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i64* asm sideeffect "mov\09%fp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64* %22, i64** %4, align 8
  br label %23

23:                                               ; preds = %21, %18, %14
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = call i64 @task_stack_page(%struct.task_struct* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = ptrtoint i64* %26 to i64
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %60, %23
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 4
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = shl i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = add i64 %35, %38
  %40 = icmp uge i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %28
  br label %64

42:                                               ; preds = %33
  %43 = load i64, i64* %6, align 8
  %44 = inttoptr i64 %43 to %struct.reg_window32*
  store %struct.reg_window32* %44, %struct.reg_window32** %8, align 8
  %45 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %46 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 7
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %56 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 6
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %28, label %64

64:                                               ; preds = %60, %41
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 621}
