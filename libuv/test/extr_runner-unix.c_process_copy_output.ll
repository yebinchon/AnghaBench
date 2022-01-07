; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_copy_output.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_runner-unix.c_process_copy_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fseek\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_copy_output(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SEEK_SET, align 4
  %12 = call i32 @fseek(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %25, %17
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fgets(i8* %19, i32 1024, i32 %22)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @print_lines(i8* %26, i32 %28, i32* %29)
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ferror(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @print_lines(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ferror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
