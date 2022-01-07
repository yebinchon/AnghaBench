; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"B:Fi:o:T:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@board_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s is invalid '%s'\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"board ID\00", align 1
@image_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"image type\00", align 1
@factory_defaults = common dso_local global i32 0, align 4
@if_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ofname = common dso_local global i8* null, align 8
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

13:                                               ; preds = %2, %49
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %50

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %46 [
    i32 66, label %22
    i32 84, label %30
    i32 70, label %38
    i32 105, label %39
    i32 111, label %41
    i32 104, label %43
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @str2u32(i8* %23, i32* @board_id)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %57

29:                                               ; preds = %22
  br label %49

30:                                               ; preds = %20
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i32 @str2u8(i8* %31, i32* @image_type)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %57

37:                                               ; preds = %30
  br label %49

38:                                               ; preds = %20
  store i32 1, i32* @factory_defaults, align 4
  br label %49

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @if_info, i32 0, i32 0), align 8
  br label %49

41:                                               ; preds = %20
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @ofname, align 8
  br label %49

43:                                               ; preds = %20
  %44 = load i32, i32* @EXIT_SUCCESS, align 4
  %45 = call i32 @usage(i32 %44)
  br label %49

46:                                               ; preds = %20
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  %48 = call i32 @usage(i32 %47)
  br label %49

49:                                               ; preds = %46, %43, %41, %39, %38, %37, %29
  br label %13

50:                                               ; preds = %19
  %51 = call i32 (...) @check_options()
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = call i32 (...) @fix_header()
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %54, %34, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @str2u32(i8*, i32*) #1

declare dso_local i32 @ERR(i8*, i8*, i8*) #1

declare dso_local i32 @str2u8(i8*, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_options(...) #1

declare dso_local i32 @fix_header(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
