; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorSave.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@E = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d bytes written on disk\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't save! I/O error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @editorSave() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i8* @editorRowsToString(i32* %2)
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @E, i32 0, i32 1), align 8
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = load i32, i32* @O_CREAT, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i32 %6, i32 %9, i32 420)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %35

14:                                               ; preds = %0
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ftruncate(i32 %15, i32 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %35

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @write(i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @free(i8* %31)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @E, i32 0, i32 0), align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @editorSetStatusMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %1, align 4
  br label %47

35:                                               ; preds = %27, %19, %13
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @close(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 @editorSetStatusMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 1, i32* %1, align 4
  br label %47

47:                                               ; preds = %43, %28
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local i8* @editorRowsToString(i32*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @editorSetStatusMessage(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
