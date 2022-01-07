; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ExportLightmapsMain.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_ExportLightmapsMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Usage: q3map -export [-v] <mapname>\0A\00", align 1
@source = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Loading %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExportLightmapsMain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

10:                                               ; preds = %2
  %11 = load i32, i32* @source, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @ExpandArg(i8* %17)
  %19 = call i32 @strcpy(i32 %11, i32 %18)
  %20 = load i32, i32* @source, align 4
  %21 = call i32 @StripExtension(i32 %20)
  %22 = load i32, i32* @source, align 4
  %23 = call i32 @DefaultExtension(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @source, align 4
  %25 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @source, align 4
  %27 = call i32 @LoadBSPFile(i32 %26)
  %28 = call i32 (...) @ExportLightmaps()
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %10, %8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ExpandArg(i8*) #1

declare dso_local i32 @StripExtension(i32) #1

declare dso_local i32 @DefaultExtension(i32, i8*) #1

declare dso_local i32 @LoadBSPFile(i32) #1

declare dso_local i32 @ExportLightmaps(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
