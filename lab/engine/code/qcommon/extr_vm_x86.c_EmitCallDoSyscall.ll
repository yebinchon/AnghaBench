; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitCallDoSyscall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitCallDoSyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@DoSyscall = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"51\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"56\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"57\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@vm_syscallNum = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"89 F0\00", align 1
@vm_programStack = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"88 D8\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@vm_opStackOfs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"89 F8\00", align 1
@vm_opStackBase = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"89 C8\00", align 1
@vm_arg = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"55\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"89 E5\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"83 E4 F0\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"FF D2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"89 EC\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"5D\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"5F\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"5E\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"59\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"C3\00", align 1
@compiledOfs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmitCallDoSyscall(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** @DoSyscall, align 8
  %5 = call i32 @EmitPtr(i32* %4)
  %6 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @EmitPtr(i32* @vm_syscallNum)
  %11 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %13 = call i32 @EmitPtr(i32* @vm_programStack)
  %14 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %15 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %16 = call i32 @EmitPtr(i32* @vm_opStackOfs)
  %17 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %18 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %19 = call i32 @EmitPtr(i32* @vm_opStackBase)
  %20 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %21 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %22 = call i32 @EmitPtr(i32* @vm_arg)
  %23 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %25 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %26 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %27 = call i32 @EmitRexString(i32 72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %28 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %29 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %30 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %31 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %32 = call i32 @EmitString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %33 = load i32, i32* @compiledOfs, align 4
  ret i32 %33
}

declare dso_local i32 @EmitRexString(i32, i8*) #1

declare dso_local i32 @EmitPtr(i32*) #1

declare dso_local i32 @EmitString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
