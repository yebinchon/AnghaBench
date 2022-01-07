; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Quit_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Quit_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com_errorEntered = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Server quit\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Client quit\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_Quit_f() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @Cmd_Args()
  store i8* %2, i8** %1, align 8
  %3 = load i32, i32* @com_errorEntered, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @VM_Forced_Unload_Start()
  %7 = load i8*, i8** %1, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load i8*, i8** %1, align 8
  br label %15

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %14 ]
  %17 = call i32 @SV_Shutdown(i8* %16)
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i8*, i8** %1, align 8
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = load i32, i32* @qtrue, align 4
  %29 = load i32, i32* @qtrue, align 4
  %30 = call i32 @CL_Shutdown(i8* %27, i32 %28, i32 %29)
  %31 = call i32 (...) @VM_Forced_Unload_Done()
  %32 = call i32 (...) @Com_Shutdown()
  %33 = load i32, i32* @qtrue, align 4
  %34 = call i32 @FS_Shutdown(i32 %33)
  br label %35

35:                                               ; preds = %26, %0
  %36 = call i32 (...) @Sys_Quit()
  ret void
}

declare dso_local i8* @Cmd_Args(...) #1

declare dso_local i32 @VM_Forced_Unload_Start(...) #1

declare dso_local i32 @SV_Shutdown(i8*) #1

declare dso_local i32 @CL_Shutdown(i8*, i32, i32) #1

declare dso_local i32 @VM_Forced_Unload_Done(...) #1

declare dso_local i32 @Com_Shutdown(...) #1

declare dso_local i32 @FS_Shutdown(i32) #1

declare dso_local i32 @Sys_Quit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
