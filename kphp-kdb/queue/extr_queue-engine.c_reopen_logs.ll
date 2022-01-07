; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_reopen_logs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_reopen_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"logs reopened.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reopen_logs() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stdout, align 4
  %3 = call i32 @fflush(i32 %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fflush(i32 %4)
  %6 = load i32, i32* @O_RDWR, align 4
  %7 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6, i32 0)
  store i32 %7, i32* %1, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %25

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @dup2(i32 %10, i32 0)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @dup2(i32 %12, i32 1)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @dup2(i32 %14, i32 2)
  %16 = load i32, i32* %1, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = call i64 @close(i32 %19)
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %18, %9
  br label %25

25:                                               ; preds = %24, %0
  %26 = load i8*, i8** @logname, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load i8*, i8** @logname, align 8
  %30 = load i32, i32* @O_WRONLY, align 4
  %31 = load i32, i32* @O_APPEND, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @open(i8* %29, i32 %34, i32 416)
  store i32 %35, i32* %1, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @dup2(i32 %38, i32 1)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @dup2(i32 %40, i32 2)
  %42 = load i32, i32* %1, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* %1, align 4
  %46 = call i64 @close(i32 %45)
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  br label %51

51:                                               ; preds = %50, %28, %25
  %52 = load i64, i64* @verbosity, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @stderr, align 4
  %56 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
