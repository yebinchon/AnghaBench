; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_LoadFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_cmdlib.c_LoadFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadFile(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @SafeOpenRead(i8* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @Q_filelength(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i8* @safe_malloc(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SafeRead(i32* %19, i8* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fclose(i32* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i8**, i8*** %4, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32* @SafeOpenRead(i8*) #1

declare dso_local i32 @Q_filelength(i32*) #1

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i32 @SafeRead(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
