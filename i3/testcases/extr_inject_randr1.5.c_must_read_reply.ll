; ModuleID = '/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_must_read_reply.c'
source_filename = "/home/carl/AnghaBench/i3/testcases/extr_inject_randr1.5.c_must_read_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.injected_reply = type { i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen(%s)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fstat(%s)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fread(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.injected_reply*)* @must_read_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_read_reply(i8* %0, %struct.injected_reply* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.injected_reply*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.injected_reply* %1, %struct.injected_reply** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EXIT_FAILURE, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @err(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @fileno(i32* %16)
  %18 = call i64 @fstat(i32 %17, %struct.stat* %6)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @err(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %20, %15
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.injected_reply*, %struct.injected_reply** %4, align 8
  %28 = getelementptr inbounds %struct.injected_reply, %struct.injected_reply* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @smalloc(i32 %30)
  %32 = load %struct.injected_reply*, %struct.injected_reply** %4, align 8
  %33 = getelementptr inbounds %struct.injected_reply, %struct.injected_reply* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.injected_reply*, %struct.injected_reply** %4, align 8
  %35 = getelementptr inbounds %struct.injected_reply, %struct.injected_reply* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @fread(i32 %36, i32 1, i32 %38, i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %24
  %46 = load i32, i32* @EXIT_FAILURE, align 4
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @err(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %24
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @fclose(i32* %50)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @smalloc(i32) #1

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
