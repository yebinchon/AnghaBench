; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-tag.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_FAILURE = common dso_local global i32 0, align 4
@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"a:b:c:d:f:hi:l:m:o:p:r:sv:w:I:\00", align 1
@optarg = common dso_local global i8* null, align 8
@platform = common dso_local global i8* null, align 8
@brand = common dso_local global i8* null, align 8
@base1 = common dso_local global i8* null, align 8
@base2 = common dso_local global i8* null, align 8
@flag = common dso_local global i8* null, align 8
@dhp = common dso_local global i32 0, align 4
@language = common dso_local global i8* null, align 8
@minor = common dso_local global i8* null, align 8
@ofname = common dso_local global i8* null, align 8
@product = common dso_local global i8* null, align 8
@skipcrc = common dso_local global i32 0, align 4
@major = common dso_local global i8* null, align 8
@hwver = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @basename(i8* %12)
  store i32 %13, i32* @progname, align 4
  br label %14

14:                                               ; preds = %2, %70
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %71

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %67 [
    i32 97, label %23
    i32 98, label %25
    i32 99, label %27
    i32 100, label %30
    i32 102, label %33
    i32 73, label %36
    i32 105, label %37
    i32 108, label %44
    i32 109, label %46
    i32 111, label %48
    i32 112, label %50
    i32 114, label %52
    i32 115, label %59
    i32 118, label %60
    i32 119, label %62
    i32 104, label %64
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @platform, align 8
  br label %70

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @brand, align 8
  br label %70

27:                                               ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @strtoul(i8* %28, i32* null, i32 16)
  store i8* %29, i8** @base1, align 8
  br label %70

30:                                               ; preds = %21
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @strtoul(i8* %31, i32* null, i32 16)
  store i8* %32, i8** @base2, align 8
  br label %70

33:                                               ; preds = %21
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i8* @strtoul(i8* %34, i32* null, i32 2)
  store i8* %35, i8** @flag, align 8
  br label %70

36:                                               ; preds = %21
  store i32 1, i32* @dhp, align 4
  br label %37

37:                                               ; preds = %21, %36
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @process_ifname(i8* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %83

43:                                               ; preds = %37
  br label %70

44:                                               ; preds = %21
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @language, align 8
  br label %70

46:                                               ; preds = %21
  %47 = load i8*, i8** @optarg, align 8
  store i8* %47, i8** @minor, align 8
  br label %70

48:                                               ; preds = %21
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** @ofname, align 8
  br label %70

50:                                               ; preds = %21
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** @product, align 8
  br label %70

52:                                               ; preds = %21
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @process_region(i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %83

58:                                               ; preds = %52
  br label %70

59:                                               ; preds = %21
  store i32 1, i32* @skipcrc, align 4
  br label %70

60:                                               ; preds = %21
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** @major, align 8
  br label %70

62:                                               ; preds = %21
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @hwver, align 8
  br label %70

64:                                               ; preds = %21
  %65 = load i32, i32* @EXIT_SUCCESS, align 4
  %66 = call i32 @usage(i32 %65)
  br label %70

67:                                               ; preds = %21
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @usage(i32 %68)
  br label %70

70:                                               ; preds = %67, %64, %62, %60, %59, %58, %50, %48, %46, %44, %43, %33, %30, %27, %25, %23
  br label %14

71:                                               ; preds = %20
  %72 = call i32 (...) @check_params()
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %83

76:                                               ; preds = %71
  %77 = call i32 (...) @tag_file()
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %80, %75, %57, %42
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @process_ifname(i8*) #1

declare dso_local i32 @process_region(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @check_params(...) #1

declare dso_local i32 @tag_file(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
