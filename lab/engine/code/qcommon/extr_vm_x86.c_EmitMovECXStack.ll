; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovECXStack.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitMovECXStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@jlabel = common dso_local global i32 0, align 4
@LastCommand = common dso_local global i64 0, align 8
@LAST_COMMAND_MOV_STACK_EAX = common dso_local global i64 0, align 8
@compiledOfs = common dso_local global i32 0, align 4
@instruction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"89 C1\00", align 1
@pop1 = common dso_local global i64 0, align 8
@OP_DIVI = common dso_local global i64 0, align 8
@OP_DIVU = common dso_local global i64 0, align 8
@OP_MULI = common dso_local global i64 0, align 8
@OP_MULU = common dso_local global i64 0, align 8
@OP_STORE4 = common dso_local global i64 0, align 8
@OP_STORE2 = common dso_local global i64 0, align 8
@OP_STORE1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"8B 0C 9F\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitMovECXStack(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @jlabel, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @LastCommand, align 8
  %7 = load i64, i64* @LAST_COMMAND_MOV_STACK_EAX, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* @compiledOfs, align 4
  %11 = sub nsw i32 %10, 3
  store i32 %11, i32* @compiledOfs, align 4
  %12 = load i32, i32* @compiledOfs, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @instruction, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %12, i32* %19, align 4
  %20 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %54

21:                                               ; preds = %5
  %22 = load i64, i64* @pop1, align 8
  %23 = load i64, i64* @OP_DIVI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @pop1, align 8
  %27 = load i64, i64* @OP_DIVU, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @pop1, align 8
  %31 = load i64, i64* @OP_MULI, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* @pop1, align 8
  %35 = load i64, i64* @OP_MULU, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @pop1, align 8
  %39 = load i64, i64* @OP_STORE4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @pop1, align 8
  %43 = load i64, i64* @OP_STORE2, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @pop1, align 8
  %47 = load i64, i64* @OP_STORE1, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %37, %33, %29, %25, %21
  %50 = call i32 @EmitString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %54

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %1
  %53 = call i32 @EmitString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49, %9
  ret void
}

declare dso_local i32 @EmitString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
