; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_stack_type_name.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack_64.c_stack_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N_EXCEPTION_STACKS = common dso_local global i32 0, align 4
@STACK_TYPE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@STACK_TYPE_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ENTRY_TRAMPOLINE\00", align 1
@STACK_TYPE_EXCEPTION = common dso_local global i32 0, align 4
@STACK_TYPE_EXCEPTION_LAST = common dso_local global i32 0, align 4
@exception_stack_names = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stack_type_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @N_EXCEPTION_STACKS, align 4
  %5 = icmp ne i32 %4, 6
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUILD_BUG_ON(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @STACK_TYPE_IRQ, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @STACK_TYPE_ENTRY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @STACK_TYPE_EXCEPTION, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @STACK_TYPE_EXCEPTION_LAST, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8**, i8*** @exception_stack_names, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @STACK_TYPE_EXCEPTION, align 4
  %29 = sub i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %26, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %2, align 8
  br label %34

33:                                               ; preds = %21, %17
  store i8* null, i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %25, %16, %11
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
