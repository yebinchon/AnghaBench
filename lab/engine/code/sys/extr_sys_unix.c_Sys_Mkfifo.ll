; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_Mkfifo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_unix.c_Sys_Mkfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Sys_Mkfifo(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @stat(i8* %8, %struct.stat* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISFIFO(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @FS_Remove(i8* %17)
  br label %19

19:                                               ; preds = %16, %11, %1
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @mkfifo(i8* %20, i32 384)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %39

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @fileno(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @F_SETFL, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = call i32 @fcntl(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32*, i32** %4, align 8
  store i32* %38, i32** %2, align 8
  br label %39

39:                                               ; preds = %37, %24
  %40 = load i32*, i32** %2, align 8
  ret i32* %40
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @FS_Remove(i8*) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
