; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_GetClipboardData.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_main.c_Sys_GetClipboardData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\0A\0D\08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Sys_GetClipboardData() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* null, i8** %1, align 8
  %4 = call i8* (...) @SDL_GetClipboardText()
  store i8* %4, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i8* @Z_Malloc(i64 %17)
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @Q_strncpyz(i8* %19, i8* %20, i64 %21)
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @strtok(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %12, %6
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @SDL_free(i8* %26)
  br label %28

28:                                               ; preds = %25, %0
  %29 = load i8*, i8** %1, align 8
  ret i8* %29
}

declare dso_local i8* @SDL_GetClipboardText(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @Z_Malloc(i64) #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i64) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local i32 @SDL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
