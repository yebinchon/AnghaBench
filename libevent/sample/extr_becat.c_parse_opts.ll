; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"p:s:R:lkSvh\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"127.1\00", align 1
@verbose = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown option -%c\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.options* noalias sret %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %7 = call i32 @memset(%struct.options* %0, i32 0, i32 56)
  %8 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 10024, i32* %9, align 8
  %10 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 10024, i32* %11, align 8
  %12 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  br label %13

13:                                               ; preds = %59, %3
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %55 [
    i32 112, label %20
    i32 115, label %26
    i32 82, label %30
    i32 108, label %35
    i32 107, label %38
    i32 83, label %41
    i32 118, label %44
    i32 104, label %47
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @atoi(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %59

26:                                               ; preds = %18
  %27 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %59

30:                                               ; preds = %18
  %31 = load i32, i32* @optarg, align 4
  %32 = call i8* @atoi(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  br label %59

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %59

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %59

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  br label %59

44:                                               ; preds = %18
  %45 = load i32, i32* @verbose, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @verbose, align 4
  br label %59

47:                                               ; preds = %18
  %48 = load i32, i32* @stdout, align 4
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @print_usage(i32 %48, i8* %51)
  %53 = load i32, i32* @EXIT_SUCCESS, align 4
  %54 = call i32 @exit(i32 %53) #3
  unreachable

55:                                               ; preds = %18
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %44, %41, %38, %35, %30, %26, %20
  br label %13

60:                                               ; preds = %13
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @optind, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* @optind, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @strdup(i8* %70)
  %72 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @optind, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @optind, align 4
  br label %76

76:                                               ; preds = %65, %60
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @optind, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* @optarg, align 4
  %83 = call i8* @atoi(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @optind, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @optind, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @optind, align 4
  %92 = sub nsw i32 %90, %91
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @print_usage(i32 %95, i8* %98)
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %101
  %111 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = call i8* @strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %117 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %110
  ret void
}

declare dso_local i32 @memset(%struct.options*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @print_usage(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
