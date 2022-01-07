; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ShutdownAll.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ShutdownAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i8*)* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@clc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@re = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ShutdownAll(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i64 (...) @CL_VideoRecording()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (...) @CL_CloseAVI()
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @CL_StopRecord_f()
  br label %12

12:                                               ; preds = %10, %7
  %13 = call i32 (...) @S_DisableSounds()
  %14 = call i32 (...) @CL_ShutdownCGame()
  %15 = call i32 (...) @CL_ShutdownUI()
  %16 = load i64, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @CL_ShutdownRef()
  br label %28

20:                                               ; preds = %12
  %21 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @re, i32 0, i32 0), align 8
  %22 = icmp ne i32 (i8*)* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @re, i32 0, i32 0), align 8
  %25 = load i8*, i8** @qfalse, align 8
  %26 = call i32 %24(i8* %25)
  br label %27

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i8*, i8** @qfalse, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 3), align 8
  %30 = load i8*, i8** @qfalse, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 2), align 8
  %31 = load i8*, i8** @qfalse, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %32 = load i8*, i8** @qfalse, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @CL_VideoRecording(...) #1

declare dso_local i32 @CL_CloseAVI(...) #1

declare dso_local i32 @CL_StopRecord_f(...) #1

declare dso_local i32 @S_DisableSounds(...) #1

declare dso_local i32 @CL_ShutdownCGame(...) #1

declare dso_local i32 @CL_ShutdownUI(...) #1

declare dso_local i32 @CL_ShutdownRef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
