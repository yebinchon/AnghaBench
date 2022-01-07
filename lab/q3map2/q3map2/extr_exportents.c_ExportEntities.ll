; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_exportents.c_ExportEntities.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_exportents.c_ExportEntities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"--- ExportEntities ---\0A\00", align 1
@source = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".ent\00", align 1
@bspEntDataSize = common dso_local global i64 0, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"WARNING: No BSP entity data. aborting...\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"(%d bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unable to open %s for writing\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@bspEntData = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExportEntities() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @SYS_VRB, align 4
  %4 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = load i32, i32* @source, align 4
  %7 = call i32 @strcpy(i8* %5, i32 %6)
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %9 = call i32 @StripExtension(i8* %8)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 @strcat(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* @bspEntDataSize, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @SYS_WRN, align 4
  %16 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %36

17:                                               ; preds = %0
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %19 = call i32 @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @SYS_VRB, align 4
  %21 = load i64, i64* @bspEntDataSize, align 8
  %22 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %24, i32** %2, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %29 = call i32 @Error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i32*, i32** %2, align 8
  %32 = load i8*, i8** @bspEntData, align 8
  %33 = call i32 @fprintf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @fclose(i32* %34)
  br label %36

36:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
