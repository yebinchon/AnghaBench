; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_ptgen.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_ptgen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }

@.str = private unnamed_addr constant [18 x i8] c"h:s:p:a:t:o:vl:S:\00", align 1
@optarg = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@heads = common dso_local global i64 0, align 8
@sectors = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Too many partitions\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@parts = common dso_local global %struct.TYPE_2__* null, align 8
@active = common dso_local global i32 0, align 4
@kb_align = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 -125, i8* %6, align 1
  store i32 0, i32* %8, align 4
  store i32 1414682447, i32* %9, align 4
  br label %10

10:                                               ; preds = %80, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %81

15:                                               ; preds = %10
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %75 [
    i32 111, label %17
    i32 118, label %19
    i32 104, label %22
    i32 115, label %26
    i32 112, label %30
    i32 116, label %53
    i32 97, label %57
    i32 108, label %67
    i32 83, label %71
    i32 63, label %74
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  store i32 %18, i32* @filename, align 4
  br label %80

19:                                               ; preds = %15
  %20 = load i32, i32* @verbose, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @verbose, align 4
  br label %80

22:                                               ; preds = %15
  %23 = load i32, i32* @optarg, align 4
  %24 = call i32 @strtoul(i32 %23, i32* null, i32 0)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* @heads, align 8
  br label %80

26:                                               ; preds = %15
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @strtoul(i32 %27, i32* null, i32 0)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* @sectors, align 8
  br label %80

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @exit(i32 %36) #3
  unreachable

38:                                               ; preds = %30
  %39 = load i32, i32* @optarg, align 4
  %40 = call i32 @to_kbytes(i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parts, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load i8, i8* %6, align 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parts, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8 %46, i8* %52, align 4
  br label %80

53:                                               ; preds = %15
  %54 = load i32, i32* @optarg, align 4
  %55 = call i32 @strtoul(i32 %54, i32* null, i32 16)
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %6, align 1
  br label %80

57:                                               ; preds = %15
  %58 = load i32, i32* @optarg, align 4
  %59 = call i32 @strtoul(i32 %58, i32* null, i32 0)
  store i32 %59, i32* @active, align 4
  %60 = load i32, i32* @active, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @active, align 4
  %64 = icmp sgt i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %57
  store i32 0, i32* @active, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %80

67:                                               ; preds = %15
  %68 = load i32, i32* @optarg, align 4
  %69 = call i32 @strtoul(i32 %68, i32* null, i32 0)
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* @kb_align, align 4
  br label %80

71:                                               ; preds = %15
  %72 = load i32, i32* @optarg, align 4
  %73 = call i32 @strtoul(i32 %72, i32* null, i32 0)
  store i32 %73, i32* %9, align 4
  br label %80

74:                                               ; preds = %15
  br label %75

75:                                               ; preds = %15, %74
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @usage(i8* %78)
  br label %80

80:                                               ; preds = %75, %71, %67, %66, %53, %38, %26, %22, %19, %17
  br label %10

81:                                               ; preds = %10
  %82 = load i64, i64* @optind, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %81
  %90 = load i64, i64* @heads, align 8
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* @sectors, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @filename, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95, %92, %89, %81
  %99 = load i8**, i8*** %5, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @usage(i8* %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @gen_ptable(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @EXIT_FAILURE, align 4
  br label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  ret i32 %113
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @to_kbytes(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i64 @gen_ptable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
