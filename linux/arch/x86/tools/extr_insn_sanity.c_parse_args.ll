; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_sanity.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prog = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"ynvs:m:i:\00", align 1
@x86_64 = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@optarg = common dso_local global i8* null, align 8
@stdin = common dso_local global i64 0, align 8
@input_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to open input file\00", align 1
@seed = common dso_local global i32 0, align 4
@iter_start = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to parse seed\00", align 1
@iter_end = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to parse max_iter\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Max iteration number must be bigger than iter-num\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Don't use input file (-i) with random seed (-s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @prog, align 8
  br label %11

11:                                               ; preds = %79, %2
  %12 = load i32, i32* %3, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %80

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %77 [
    i32 121, label %18
    i32 110, label %19
    i32 118, label %20
    i32 105, label %23
    i32 115, label %38
    i32 109, label %63
  ]

18:                                               ; preds = %16
  store i32 1, i32* @x86_64, align 4
  br label %79

19:                                               ; preds = %16
  store i32 0, i32* @x86_64, align 4
  br label %79

20:                                               ; preds = %16
  %21 = load i32, i32* @verbose, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @verbose, align 4
  br label %79

23:                                               ; preds = %16
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @stdin, align 8
  store i64 %28, i64* @input_file, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i64 @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i64 %31, i64* @input_file, align 8
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i64, i64* @input_file, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @usage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %79

38:                                               ; preds = %16
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i64 @strtoul(i8* %39, i8** %6, i32 0)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @seed, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** @optarg, align 8
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i64 @strtoul(i8* %49, i8** %6, i32 0)
  store i64 %50, i64* @iter_start, align 8
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** @optarg, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %51
  %61 = call i32 @usage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  store i32 1, i32* %7, align 4
  br label %79

63:                                               ; preds = %16
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i64 @strtoul(i8* %64, i8** %6, i32 0)
  store i64 %65, i64* @iter_end, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** @optarg, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %63
  %75 = call i32 @usage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  br label %79

77:                                               ; preds = %16
  %78 = call i32 @usage(i8* null)
  br label %79

79:                                               ; preds = %77, %76, %62, %37, %20, %19, %18
  br label %11

80:                                               ; preds = %11
  %81 = load i64, i64* @iter_end, align 8
  %82 = load i64, i64* @iter_start, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @usage(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i64, i64* @input_file, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @usage(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89, %86
  %95 = load i64, i64* @input_file, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i32 (...) @init_random_seed()
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* @seed, align 4
  %104 = call i32 @srand(i32 %103)
  br label %105

105:                                              ; preds = %102, %94
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @fopen(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @init_random_seed(...) #1

declare dso_local i32 @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
