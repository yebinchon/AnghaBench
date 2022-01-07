; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_DoSyscall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_DoSyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i64*)*, i64, i64 }

@currentVM = common dso_local global %struct.TYPE_3__* null, align 8
@vm_programStack = common dso_local global i64 0, align 8
@vm_syscallNum = common dso_local global i32 0, align 4
@vm_opStackBase = common dso_local global i32* null, align 8
@vm_opStackOfs = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"VM_BLOCK_COPY failed due to corrupted opStack\00", align 1
@vm_arg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown VM operation %d\00", align 1
@MAX_VMSYSCALL_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @DoSyscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoSyscall() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  %5 = load i64, i64* @vm_programStack, align 8
  %6 = sub nsw i64 %5, 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @currentVM, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i64 %6, i64* %8, align 8
  %9 = load i32, i32* @vm_syscallNum, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @vm_programStack, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 4
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** @vm_opStackBase, align 8
  %20 = load i32, i32* @vm_opStackOfs, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32* %23, i32** %3, align 8
  %24 = load i32, i32* @vm_syscallNum, align 4
  %25 = xor i32 %24, -1
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i64*)*, i32 (i64*)** %29, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = bitcast i32* %31 to i64*
  %33 = call i32 %30(i64* %32)
  %34 = load i32*, i32** %3, align 8
  store i32 %33, i32* %34, align 4
  br label %64

35:                                               ; preds = %0
  %36 = load i32, i32* @vm_syscallNum, align 4
  switch i32 %36, label %59 [
    i32 128, label %37
    i32 129, label %39
  ]

37:                                               ; preds = %35
  %38 = call i32 (...) @ErrJump()
  br label %63

39:                                               ; preds = %35
  %40 = load i32, i32* @vm_opStackOfs, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ERR_DROP, align 4
  %44 = call i32 (i32, i8*, ...) @Com_Error(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** @vm_opStackBase, align 8
  %47 = load i32, i32* @vm_opStackOfs, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @vm_opStackBase, align 8
  %53 = load i32, i32* @vm_opStackOfs, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @vm_arg, align 4
  %58 = call i32 @VM_BlockCopy(i32 %51, i32 %56, i32 %57)
  br label %63

59:                                               ; preds = %35
  %60 = load i32, i32* @ERR_DROP, align 4
  %61 = load i32, i32* @vm_syscallNum, align 4
  %62 = call i32 (i32, i8*, ...) @Com_Error(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %45, %37
  br label %64

64:                                               ; preds = %63, %11
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** @currentVM, align 8
  ret void
}

declare dso_local i32 @ErrJump(...) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @VM_BlockCopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
