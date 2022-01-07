; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_error.c_dump_struct.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_error.c_dump_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@log_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"==%d== VALUES AT CRASH POINT\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"==%d==\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"==%d== Line number: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"==%d== Offset: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"==%d== Invalid data: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"==%d== Piping: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"==%d== Response size: %llu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dump_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_struct(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @getpid()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %48

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @log_data, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32*, i8*, i32, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
