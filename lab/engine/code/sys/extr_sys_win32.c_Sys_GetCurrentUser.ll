; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_GetCurrentUser.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_GetCurrentUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Sys_GetCurrentUser.s_userName = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"player\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Sys_GetCurrentUser() #0 {
  %1 = alloca i64, align 8
  store i64 1024, i64* %1, align 8
  %2 = call i32 @GetUserName(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Sys_GetCurrentUser.s_userName, i64 0, i64 0), i64* %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Sys_GetCurrentUser.s_userName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i8, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Sys_GetCurrentUser.s_userName, i64 0, i64 0), align 16
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call i32 @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Sys_GetCurrentUser.s_userName, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Sys_GetCurrentUser.s_userName, i64 0, i64 0)
}

declare dso_local i32 @GetUserName(i8*, i64*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
