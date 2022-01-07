; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ParseOptionFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ParseOptionFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OS_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c".q3asm\00", align 1
@com_token = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@outputFilename = common dso_local global i8* null, align 8
@asmFileNames = common dso_local global i32* null, align 8
@numAsmFiles = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ParseOptionFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseOptionFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @MAX_OS_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strcpy(i8* %11, i8* %12)
  %14 = call i32 @DefaultExtension(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @LoadFile(i8* %11, i8** %5)
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %39, %38, %19
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @COM_Parse(i8* %22)
  store i8* %23, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i8*, i8** @com_token, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @COM_Parse(i8* %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i8*, i8** @outputFilename, align 8
  %36 = load i8*, i8** @com_token, align 8
  %37 = call i32 @strcpy(i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %21

39:                                               ; preds = %25
  %40 = load i8*, i8** @com_token, align 8
  %41 = call i32 @copystring(i8* %40)
  %42 = load i32*, i32** @asmFileNames, align 8
  %43 = load i64, i64* @numAsmFiles, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* @numAsmFiles, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @numAsmFiles, align 8
  br label %21

47:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %48, %48
  ret void

52:                                               ; preds = %48
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DefaultExtension(i8*, i8*) #2

declare dso_local i32 @LoadFile(i8*, i8**) #2

declare dso_local i8* @COM_Parse(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @copystring(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
