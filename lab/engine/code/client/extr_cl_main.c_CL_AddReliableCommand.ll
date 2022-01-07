; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_AddReliableCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_AddReliableCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }

@clc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_RELIABLE_COMMANDS = common dso_local global i32 0, align 4
@com_errorEntered = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Client command overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_AddReliableCommand(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 1), align 4
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18, %11
  %23 = load i64, i64* @com_errorEntered, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %42

26:                                               ; preds = %22
  %27 = load i32, i32* @ERR_DROP, align 4
  %28 = call i32 @Com_Error(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %18, %15
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 2), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %34 = load i32, i32* @MAX_RELIABLE_COMMANDS, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %31, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @Q_strncpyz(i32 %39, i8* %40, i32 4)
  br label %42

42:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
