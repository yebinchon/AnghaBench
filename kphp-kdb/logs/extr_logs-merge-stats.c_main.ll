; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-stats.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"hF:N:o:u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@engineF = common dso_local global i64 0, align 8
@engineN = common dso_local global i64 0, align 8
@out_name = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stat_name = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ansI = common dso_local global i64 0, align 8
@MAX_FN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@f = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @dl_set_debug_handlers()
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %97

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %35 [
    i32 104, label %23
    i32 70, label %25
    i32 78, label %28
    i32 111, label %31
    i32 117, label %33
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %97

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i64 @atoi(i8* %26)
  store i64 %27, i64* @engineF, align 8
  br label %35

28:                                               ; preds = %21
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i64 @atoi(i8* %29)
  store i64 %30, i64* @engineN, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @out_name, align 8
  br label %35

33:                                               ; preds = %21
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @username, align 8
  br label %35

35:                                               ; preds = %21, %33, %31, %28, %25
  br label %16

36:                                               ; preds = %16
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @optind, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %97

43:                                               ; preds = %36
  %44 = load i8**, i8*** %5, align 8
  %45 = load i32, i32* @optind, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** @stat_name, align 8
  %49 = load i8*, i8** @username, align 8
  %50 = call i64 @change_user(i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @username, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** @username, align 8
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %58 ]
  %61 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %43
  %64 = load i64, i64* @engineN, align 8
  %65 = load i64, i64* @engineF, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @engineF, align 8
  %69 = icmp sge i64 %68, 0
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i1 [ false, %63 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i64, i64* @engineN, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @ansI, align 8
  %76 = load i64, i64* @engineN, align 8
  %77 = add nsw i64 %76, 1
  %78 = load i64, i64* @MAX_FN, align 8
  %79 = icmp slt i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i8*, i8** @out_name, align 8
  %83 = call i32* @fopen(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32**, i32*** @f, align 8
  %85 = load i64, i64* @ansI, align 8
  %86 = getelementptr inbounds i32*, i32** %84, i64 %85
  store i32* %83, i32** %86, align 8
  %87 = load i32**, i32*** @f, align 8
  %88 = load i64, i64* @ansI, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = call i32 (...) @init_data()
  %95 = call i32 (...) @run()
  %96 = call i32 (...) @close_data()
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %70, %41, %23, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @dl_set_debug_handlers(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @init_data(...) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @close_data(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
