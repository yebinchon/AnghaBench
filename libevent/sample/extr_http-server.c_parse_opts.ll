; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_http-server.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_http-server.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"hp:U:uIv\00", align 1
@optarg = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown option %c\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.options* noalias sret %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %7 = call i32 @memset(%struct.options* %0, i32 0, i32 32)
  br label %8

8:                                                ; preds = %40, %3
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %36 [
    i32 112, label %15
    i32 85, label %19
    i32 117, label %22
    i32 73, label %24
    i32 118, label %26
    i32 104, label %30
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @optarg, align 4
  %17 = call i32 @atoi(i32 %16)
  %18 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  br label %40

19:                                               ; preds = %13
  %20 = load i32, i32* @optarg, align 4
  %21 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  br label %40

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %40

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %40

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %40

30:                                               ; preds = %13
  %31 = load i32, i32* @stdout, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @print_usage(i32 %31, i8* %34, i32 0)
  br label %40

36:                                               ; preds = %13
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %30, %26, %24, %22, %19, %15
  br label %8

41:                                               ; preds = %8
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @optind, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @stdout, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @print_usage(i32 %51, i8* %54, i32 1)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* @optind, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.options, %struct.options* %0, i32 0, i32 2
  store i8* %61, i8** %62, align 8
  ret void
}

declare dso_local i32 @memset(%struct.options*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @print_usage(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
