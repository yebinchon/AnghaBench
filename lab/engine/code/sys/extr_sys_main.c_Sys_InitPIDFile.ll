; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_InitPIDFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_InitPIDFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [148 x i8] c"The last time %s ran, it didn't exit properly. This may be due to inappropriate video settings. Would you like to start with \22safe\22 video settings?\00", align 1
@DT_YES_NO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Abnormal Exit\00", align 1
@DR_YES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"com_abnormalExit\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_InitPIDFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @Sys_WritePIDFile(i8* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @MAX_OSPATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = trunc i64 %11 to i32
  %16 = call i32 @FS_GetModDescription(i8* %14, i8* %13, i32 %15)
  %17 = call i32 @Q_CleanStr(i8* %13)
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = call i32 @Com_sprintf(i8* %18, i32 1024, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str, i64 0, i64 0), i8* %13)
  %20 = load i32, i32* @DT_YES_NO, align 4
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %22 = call i64 @Sys_Dialog(i32 %20, i8* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @DR_YES, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = call i32 @Cvar_Set(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %28)
  br label %29

29:                                               ; preds = %27, %1
  ret void
}

declare dso_local i64 @Sys_WritePIDFile(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FS_GetModDescription(i8*, i8*, i32) #1

declare dso_local i32 @Q_CleanStr(i8*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @Sys_Dialog(i32, i8*, i8*) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
