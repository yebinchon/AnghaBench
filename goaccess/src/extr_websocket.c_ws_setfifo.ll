; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_setfifo.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_setfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@F_OK = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unable to set fifo: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to stat fifo: %s.\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"pipe is not a fifo: %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ws_setfifo(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @F_OK, align 4
  %9 = call i64 @access(i8* %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @S_IRUSR, align 4
  %15 = load i32, i32* @S_IWUSR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IRGRP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @S_IWGRP, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @S_IROTH, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @S_IWOTH, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @mkfifo(i8* %13, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %12
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %12
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @stat(i8* %32, %struct.stat* %4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @FATAL(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISFIFO(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @FATAL(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @mkfifo(i8*, i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISFIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
