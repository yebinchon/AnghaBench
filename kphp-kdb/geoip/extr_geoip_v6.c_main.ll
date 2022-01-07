; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"i:o:vhs:\00", align 1
@verbosity = common dso_local global i64 0, align 8
@optarg = common dso_local global i64 0, align 8
@input_file = common dso_local global i64 0, align 8
@output_file = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@stdin = common dso_local global i32 0, align 4
@buff = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Total %d rules\0A\00", align 1
@total_out = common dso_local global i32 0, align 4

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
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @set_debug_handlers()
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %28 [
    i32 118, label %16
    i32 104, label %19
    i32 105, label %21
    i32 111, label %23
    i32 115, label %25
  ]

16:                                               ; preds = %14
  %17 = load i64, i64* @verbosity, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @verbosity, align 8
  br label %30

19:                                               ; preds = %14
  %20 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %76

21:                                               ; preds = %14
  %22 = load i64, i64* @optarg, align 8
  store i64 %22, i64* @input_file, align 8
  br label %30

23:                                               ; preds = %14
  %24 = load i64, i64* @optarg, align 8
  store i64 %24, i64* @output_file, align 8
  br label %30

25:                                               ; preds = %14
  %26 = load i64, i64* @optarg, align 8
  %27 = call i32 @atoi(i64 %26)
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %76

30:                                               ; preds = %25, %23, %21, %16
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @optind, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @input_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35, %31
  %39 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %76

40:                                               ; preds = %35
  %41 = load i64, i64* @output_file, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* @output_file, align 8
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @freopen(i64 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i64, i64* @input_file, align 8
  %50 = load i32, i32* @stdin, align 4
  %51 = call i32 @freopen(i64 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = call i32 @assert(i32 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %62, %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @buff, align 4
  %59 = load i32, i32* @stdin, align 4
  %60 = call i32 @fgets(i32 %58, i32 1000000, i32 %59)
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %53

65:                                               ; preds = %53
  %66 = call i32 (...) @init()
  %67 = call i32 (...) @run()
  %68 = call i32 @dump(i32* @root, i32 -1)
  %69 = load i64, i64* @verbosity, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* @total_out, align 4
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %38, %28, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i32 @atoi(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freopen(i64, i8*, i32) #1

declare dso_local i32 @fgets(i32, i32, i32) #1

declare dso_local i32 @init(...) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @dump(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
