; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckUserinfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckUserinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@clc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"userinfo \22%s\22\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CheckUserinfo() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @clc, i32 0, i32 0), align 8
  %2 = load i64, i64* @CA_CONNECTED, align 8
  %3 = icmp slt i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %24

5:                                                ; preds = %0
  %6 = call i64 (...) @CL_CheckPaused()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %24

9:                                                ; preds = %5
  %10 = load i32, i32* @cvar_modifiedFlags, align 4
  %11 = load i32, i32* @CVAR_USERINFO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load i32, i32* @CVAR_USERINFO, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @cvar_modifiedFlags, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* @cvar_modifiedFlags, align 4
  %19 = load i32, i32* @CVAR_USERINFO, align 4
  %20 = call i32 @Cvar_InfoString(i32 %19)
  %21 = call i32 @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @qfalse, align 4
  %23 = call i32 @CL_AddReliableCommand(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %4, %8, %14, %9
  ret void
}

declare dso_local i64 @CL_CheckPaused(...) #1

declare dso_local i32 @CL_AddReliableCommand(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @Cvar_InfoString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
