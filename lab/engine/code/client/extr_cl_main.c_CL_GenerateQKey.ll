; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_GenerateQKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_GenerateQKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QKEY_SIZE = common dso_local global i32 0, align 4
@QKEY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"QKEY found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"QKEY file size != %d, regenerating\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"QKEY building random string\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"QKEY could not open %s for write\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"QKEY generated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CL_GenerateQKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CL_GenerateQKey() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @QKEY_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @QKEY_FILE, align 4
  %11 = call i32 @FS_SV_FOpenFileRead(i32 %10, i32* %4)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FS_FCloseFile(i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @QKEY_SIZE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %44

19:                                               ; preds = %0
  %20 = load i32, i32* %1, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @QKEY_SIZE, align 4
  %24 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %27 = trunc i64 %7 to i32
  %28 = call i32 @Com_RandomBytes(i8* %9, i32 %27)
  %29 = load i32, i32* @QKEY_FILE, align 4
  %30 = call i32 @FS_SV_FOpenFileWrite(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @QKEY_FILE, align 4
  %35 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 1, i32* %5, align 4
  br label %44

36:                                               ; preds = %25
  %37 = trunc i64 %7 to i32
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @FS_Write(i8* %9, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @FS_FCloseFile(i32 %40)
  %42 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %33, %17
  %45 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FS_SV_FOpenFileRead(i32, i32*) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Com_RandomBytes(i8*, i32) #2

declare dso_local i32 @FS_SV_FOpenFileWrite(i32) #2

declare dso_local i32 @FS_Write(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
