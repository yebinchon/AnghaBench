; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_ReadCDKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_ReadCDKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s/q3key\00", align 1
@cl_cdkey = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"                \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_ReadCDKey(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [33 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_OSPATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = trunc i64 %9 to i32
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @Com_sprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @FS_SV_FOpenFileRead(i8* %11, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @cl_cdkey, align 4
  %20 = call i32 @Q_strncpyz(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 17)
  store i32 1, i32* %7, align 4
  br label %40

21:                                               ; preds = %1
  %22 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %23 = call i32 @Com_Memset(i8* %22, i32 0, i32 33)
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @FS_Read(i8* %24, i32 16, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @FS_FCloseFile(i32 %27)
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %30 = call i64 @CL_CDKeyValidate(i8* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @cl_cdkey, align 4
  %34 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %35 = call i32 @Q_strncpyz(i32 %33, i8* %34, i32 17)
  br label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @cl_cdkey, align 4
  %38 = call i32 @Q_strncpyz(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 17)
  br label %39

39:                                               ; preds = %36, %32
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %44 [
    i32 0, label %43
    i32 1, label %43
  ]

43:                                               ; preds = %40, %40
  ret void

44:                                               ; preds = %40
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @FS_SV_FOpenFileRead(i8*, i32*) #2

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #2

declare dso_local i32 @Com_Memset(i8*, i32, i32) #2

declare dso_local i32 @FS_Read(i8*, i32, i32) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

declare dso_local i64 @CL_CDKeyValidate(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
