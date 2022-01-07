; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_reopen_logs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_reopen_logs.c"
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
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @dup2(i32 %10, i32 0)
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @dup2(i32 %12, i32 1)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @dup2(i32 %14, i32 2)
  %16 = load i32, i32* %1, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @close(i32 %19)
  br label %21

21:                                               ; preds = %18, %9
  br label %22

22:                                               ; preds = %21, %0
  %23 = load i8*, i8** @logname, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i8*, i8** @logname, align 8
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = load i32, i32* @O_APPEND, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @open(i8* %26, i32 %31, i32 416)
  store i32 %32, i32* %1, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @dup2(i32 %35, i32 1)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @dup2(i32 %37, i32 2)
  %39 = load i32, i32* %1, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %45

45:                                               ; preds = %44, %25, %22
  %46 = load i64, i64* @verbosity, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
