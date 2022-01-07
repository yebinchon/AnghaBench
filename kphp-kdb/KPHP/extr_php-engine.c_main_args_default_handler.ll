; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_main_args_default_handler.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_main_args_default_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optarg = common dso_local global i32 0, align 4
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i8* null, align 8
@MAX_CONNECTIONS = common dso_local global i8* null, align 8
@max_memory = common dso_local global i32 0, align 4
@username = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main_args_default_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %61 [
    i32 98, label %5
    i32 99, label %13
    i32 108, label %25
    i32 109, label %28
    i32 117, label %42
    i32 100, label %44
    i32 104, label %47
    i32 107, label %49
    i32 118, label %58
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @optarg, align 4
  %7 = call i8* @atoi(i32 %6)
  store i8* %7, i8** @backlog, align 8
  %8 = load i8*, i8** @backlog, align 8
  %9 = icmp ule i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i8*, i8** @BACKLOG, align 8
  store i8* %11, i8** @backlog, align 8
  br label %12

12:                                               ; preds = %10, %5
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* @optarg, align 4
  %15 = call i8* @atoi(i32 %14)
  store i8* %15, i8** @maxconn, align 8
  %16 = load i8*, i8** @maxconn, align 8
  %17 = icmp ule i8* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** @maxconn, align 8
  %20 = load i8*, i8** @MAX_CONNECTIONS, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %13
  %23 = load i8*, i8** @MAX_CONNECTIONS, align 8
  store i8* %23, i8** @maxconn, align 8
  br label %24

24:                                               ; preds = %22, %18
  br label %62

25:                                               ; preds = %1
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @init_logname(i32 %26)
  br label %62

28:                                               ; preds = %1
  %29 = load i32, i32* @optarg, align 4
  %30 = call i8* @atoi(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* @max_memory, align 4
  %32 = load i32, i32* @max_memory, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* @max_memory, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* @max_memory, align 4
  %37 = icmp sgt i32 %36, 2047
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 2047, i32* @max_memory, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* @max_memory, align 4
  %41 = mul nsw i32 %40, 1048576
  store i32 %41, i32* @max_memory, align 4
  br label %62

42:                                               ; preds = %1
  %43 = load i32, i32* @optarg, align 4
  store i32 %43, i32* @username, align 4
  br label %62

44:                                               ; preds = %1
  %45 = load i32, i32* @daemonize, align 4
  %46 = xor i32 %45, 1
  store i32 %46, i32* @daemonize, align 4
  br label %62

47:                                               ; preds = %1
  %48 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %63

49:                                               ; preds = %1
  %50 = load i32, i32* @MCL_CURRENT, align 4
  %51 = load i32, i32* @MCL_FUTURE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mlockall(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @vkprintf(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  br label %62

58:                                               ; preds = %1
  %59 = load i32, i32* @verbosity, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @verbosity, align 4
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

62:                                               ; preds = %58, %57, %44, %42, %39, %25, %24, %12
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %47
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @init_logname(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
