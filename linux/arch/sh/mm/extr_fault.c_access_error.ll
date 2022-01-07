; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_fault.c_access_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_fault.c_access_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@FAULT_CODE_WRITE = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@FAULT_CODE_ITLB = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_area_struct*)* @access_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_error(i32 %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FAULT_CODE_WRITE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VM_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %59

22:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %59

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FAULT_CODE_ITLB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_EXEC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %23
  %37 = phi i1 [ false, %23 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VM_READ, align 4
  %47 = load i32, i32* @VM_EXEC, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @VM_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %41, %22, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
