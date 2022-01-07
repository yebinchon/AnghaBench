; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_copy_output.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-win.c_process_copy_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@_O_RDONLY = common dso_local global i32 0, align 4
@_O_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_copy_output(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @_O_RDONLY, align 4
  %14 = load i32, i32* @_O_TEXT, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @_open_osfhandle(i64 %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @_fdopen(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @_close(i32 %26)
  store i32 -1, i32* %3, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i32 @fseek(i32* %29, i32 0, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %55

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %41, %35
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %38 = load i32*, i32** %9, align 8
  %39 = call i32* @fgets(i8* %37, i32 1024, i32* %38)
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %44 = call i32 @strlen(i8* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @print_lines(i8* %42, i32 %44, i32* %45)
  br label %36

47:                                               ; preds = %36
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @ferror(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fclose(i32* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %51, %34, %25, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @_open_osfhandle(i64, i32) #1

declare dso_local i32* @_fdopen(i32, i8*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @print_lines(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
