; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_show_faulting_vma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_troubleshoot.c_show_faulting_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ARC_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"    @off 0x%lx in [%s]\0A    VMA: 0x%08lx to 0x%08lx\0A\00", align 1
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"    @No matching VMA found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @show_faulting_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_faulting_vma(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %4, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %14, i64 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %3, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %18 = icmp ne %struct.vm_area_struct* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %1
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load i32, i32* @ARC_PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %5, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ARC_PATH_MAX, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i8* @file_path(i64 %37, i8* %29, i32 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @IS_ERR(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %45

45:                                               ; preds = %44, %34
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %2, align 8
  br label %60

54:                                               ; preds = %46
  %55 = load i64, i64* %2, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  br label %60

60:                                               ; preds = %54, %52
  %61 = phi i64 [ %53, %52 ], [ %59, %54 ]
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %67 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %61, i8* %62, i64 %65, i32 %68)
  %70 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %73

71:                                               ; preds = %19, %1
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %60
  %74 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 0
  %76 = call i32 @up_read(i32* %75)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @file_path(i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
