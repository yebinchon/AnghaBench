; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkporayfw.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkporayfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"B:H:F:f:o:ixh\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i8* null, align 8
@opt_hw_id = common dso_local global i8* null, align 8
@layout_id = common dso_local global i8* null, align 8
@firmware_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ofname = common dso_local global i8* null, align 8
@inspect = common dso_local global i32 0, align 4
@extract = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @basename(i8* %11)
  store i32 %12, i32* @progname, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %35 [
    i32 66, label %20
    i32 72, label %22
    i32 70, label %24
    i32 102, label %26
    i32 111, label %28
    i32 105, label %30
    i32 120, label %31
    i32 104, label %32
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  store i8* %21, i8** @board_id, align 8
  br label %38

22:                                               ; preds = %18
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @opt_hw_id, align 8
  br label %38

24:                                               ; preds = %18
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @layout_id, align 8
  br label %38

26:                                               ; preds = %18
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @firmware_info, i32 0, i32 0), align 8
  br label %38

28:                                               ; preds = %18
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** @ofname, align 8
  br label %38

30:                                               ; preds = %18
  store i32 1, i32* @inspect, align 4
  br label %38

31:                                               ; preds = %18
  store i32 1, i32* @inspect, align 4
  store i32 1, i32* @extract, align 4
  br label %38

32:                                               ; preds = %18
  %33 = load i32, i32* @EXIT_SUCCESS, align 4
  %34 = call i32 @usage(i32 %33)
  br label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @usage(i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %31, %30, %28, %26, %24, %22, %20
  br label %13

39:                                               ; preds = %13
  %40 = call i32 (...) @check_options()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @inspect, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @build_fw()
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @inspect_fw()
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @build_fw(...) #1

declare dso_local i32 @inspect_fw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
