; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_unwind.c_sh64_unwind_inner.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh5/extr_unwind.c_sh64_unwind_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.pt_regs = type { i32, i64* }

@syscall_ret = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SYSCALL\0A\00", align 1
@ret_from_syscall = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SYSCALL (PREEMPTED)\0A\00", align 1
@ret_from_exception = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EXCEPTION\0A\00", align 1
@ret_from_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@__MEMORY_START = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to lookup previous stack frame\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stacktrace_ops*, i8*, %struct.pt_regs*)* @sh64_unwind_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh64_unwind_inner(%struct.stacktrace_ops* %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.stacktrace_ops*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.stacktrace_ops* %0, %struct.stacktrace_ops** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, -2
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 14
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %24

24:                                               ; preds = %114, %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, and (i64 ptrtoint (i32* @syscall_ret to i64), i64 -2)
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @unwind_nested(%struct.stacktrace_ops* %29, i8* %30, i64 %31, i64 %32)
  br label %117

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, and (i64 ptrtoint (i32* @ret_from_syscall to i64), i64 -2)
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @unwind_nested(%struct.stacktrace_ops* %39, i8* %40, i64 %41, i64 %42)
  br label %117

44:                                               ; preds = %34
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, and (i64 ptrtoint (i32* @ret_from_exception to i64), i64 -2)
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @unwind_nested(%struct.stacktrace_ops* %49, i8* %50, i64 %51, i64 %52)
  br label %117

54:                                               ; preds = %44
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %55, and (i64 ptrtoint (i32* @ret_from_irq to i64), i64 -2)
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = call i32 @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @unwind_nested(%struct.stacktrace_ops* %59, i8* %60, i64 %61, i64 %62)
  br label %117

64:                                               ; preds = %54
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @__MEMORY_START, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @__MEMORY_START, align 8
  %71 = icmp uge i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = and i64 %73, 3
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = and i64 %77, 7
  %79 = icmp eq i64 %78, 0
  br label %80

80:                                               ; preds = %76, %72, %68, %64
  %81 = phi i1 [ false, %72 ], [ false, %68 ], [ false, %64 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %7, align 8
  %86 = sub i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %4, align 8
  %88 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %87, i32 0, i32 0
  %89 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 %89(i8* %90, i64 %91, i32 1)
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %80
  %96 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 18
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %13, align 8
  br label %102

101:                                              ; preds = %80
  store i64 0, i64* %13, align 8
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %106 = call i64 @lookup_prev_stack_frame(i64 %103, i64 %104, i64* %12, i64* %13, %struct.pt_regs* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  store i32 8, i32* %9, align 4
  %109 = load i64, i64* %13, align 8
  %110 = and i64 %109, -2
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %12, align 8
  store i64 %111, i64* %8, align 8
  br label %114

112:                                              ; preds = %102
  %113 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %115

114:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %24

115:                                              ; preds = %112
  %116 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %57, %47, %37, %27
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @unwind_nested(%struct.stacktrace_ops*, i8*, i64, i64) #1

declare dso_local i64 @lookup_prev_stack_frame(i64, i64, i64*, i64*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
