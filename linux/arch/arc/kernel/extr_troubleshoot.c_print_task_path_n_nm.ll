; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_print_task_path_n_nm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_print_task_path_n_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }

@ARC_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Path: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @print_task_path_n_nm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_task_path_n_nm(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @ARC_PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %12)
  store %struct.mm_struct* %13, %struct.mm_struct** %4, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = icmp ne %struct.mm_struct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* %18)
  store %struct.file* %19, %struct.file** %5, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %21 = call i32 @mmput(%struct.mm_struct* %20)
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = icmp ne %struct.file* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = load i32, i32* @ARC_PATH_MAX, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i8* @file_path(%struct.file* %25, i8* %11, i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = call i32 @fput(%struct.file* %29)
  br label %31

31:                                               ; preds = %24, %17
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @IS_ERR(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #2

declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct*) #2

declare dso_local i32 @mmput(%struct.mm_struct*) #2

declare dso_local i8* @file_path(%struct.file*, i8*, i32) #2

declare dso_local i32 @fput(%struct.file*) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

declare dso_local i32 @IS_ERR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
