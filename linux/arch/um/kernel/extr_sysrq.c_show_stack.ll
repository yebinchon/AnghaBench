; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_sysrq.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_sysrq.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }
%struct.task_struct = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"Received SIGSEGV in SIGSEGV handler, aborting stack trace!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Stack:\0A\00", align 1
@STACKSLOTS_PER_LINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" %08lx\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Call Trace:\0A\00", align 1
@stackops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  store i64* %8, i64** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  store %struct.pt_regs* %12, %struct.pt_regs** %6, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %14 = icmp ne %struct.pt_regs* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = call i64 (...) @os_is_signal_stack()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %64

20:                                               ; preds = %15, %2
  %21 = load i64*, i64** %4, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %26 = call i64* @get_stack_pointer(%struct.task_struct* %24, %struct.pt_regs* %25)
  store i64* %26, i64** %5, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64*, i64** %5, align 8
  store i64* %29, i64** %4, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %55, %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @STACKSLOTS_PER_LINE, align 4
  %33 = mul nsw i32 3, %32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i64*, i64** %4, align 8
  %37 = call i64 @kstack_end(i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %58

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @STACKSLOTS_PER_LINE, align 4
  %46 = srem i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %43, %40
  %51 = load i64*, i64** %4, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %4, align 8
  %53 = load i64, i64* %51, align 8
  %54 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %30

58:                                               ; preds = %39, %30
  %59 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %62 = call i32 @dump_trace(%struct.TYPE_5__* %61, i32* @stackops, i32* null)
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %18
  ret void
}

declare dso_local i64 @os_is_signal_stack(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64* @get_stack_pointer(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @kstack_end(i64*) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @dump_trace(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
