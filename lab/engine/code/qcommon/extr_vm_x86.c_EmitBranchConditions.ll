; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitBranchConditions.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_EmitBranchConditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"0F 84\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0F 85\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0F 8C\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0F 8E\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0F 8F\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"0F 8D\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"0F 82\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"0F 86\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0F 87\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"0F 83\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitBranchConditions(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %46 [
    i32 137, label %6
    i32 128, label %10
    i32 130, label %14
    i32 132, label %18
    i32 134, label %22
    i32 136, label %26
    i32 129, label %30
    i32 131, label %34
    i32 133, label %38
    i32 135, label %42
  ]

6:                                                ; preds = %2
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 (...) @Constant4()
  %9 = call i32 @EmitJumpIns(i32* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %46

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 (...) @Constant4()
  %13 = call i32 @EmitJumpIns(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %46

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (...) @Constant4()
  %17 = call i32 @EmitJumpIns(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  br label %46

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (...) @Constant4()
  %21 = call i32 @EmitJumpIns(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  br label %46

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 (...) @Constant4()
  %25 = call i32 @EmitJumpIns(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %46

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 (...) @Constant4()
  %29 = call i32 @EmitJumpIns(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  br label %46

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 (...) @Constant4()
  %33 = call i32 @EmitJumpIns(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  br label %46

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (...) @Constant4()
  %37 = call i32 @EmitJumpIns(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  br label %46

38:                                               ; preds = %2
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 (...) @Constant4()
  %41 = call i32 @EmitJumpIns(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  br label %46

42:                                               ; preds = %2
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (...) @Constant4()
  %45 = call i32 @EmitJumpIns(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %2, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @EmitJumpIns(i32*, i8*, i32) #1

declare dso_local i32 @Constant4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
