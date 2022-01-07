; ModuleID = '/home/carl/AnghaBench/jq/src/extr_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [694 x i8] c"jq - commandline JSON processor [version %s]\0A\0AUsage:\09%s [options] <jq filter> [file...]\0A\09%s [options] --args <jq filter> [strings...]\0A\09%s [options] --jsonargs <jq filter> [JSON_TEXTS...]\0A\0Ajq is a tool for processing JSON inputs, applying the given filter to\0Aits JSON text inputs and producing the filter's results as JSON on\0Astandard output.\0A\0AThe simplest filter is ., which copies jq's input to its output\0Aunmodified (except for formatting, but note that IEEE754 is used\0Afor number representation internally, with all that that implies).\0A\0AFor more advanced filters see the jq(1) manpage (\22man jq\22)\0Aand/or https://stedolan.github.io/jq\0A\0AExample:\0A\0A\09$ echo '{\22foo\22: 0}' | jq .\0A\09{\0A\09\09\22foo\22: 0\0A\09}\0A\0A\00", align 1
@JQ_VERSION = common dso_local global i8* null, align 8
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"For a listing of options, use %s --help.\0A\00", align 1
@.str.2 = private unnamed_addr constant [1189 x i8] c"Some of the options include:\0A  -c               compact instead of pretty-printed output;\0A  -n               use `null` as the single input value;\0A  -e               set the exit status code based on the output;\0A  -s               read (slurp) all inputs into an array; apply filter to it;\0A  -r               output raw strings, not JSON texts;\0A  -R               read raw strings, not JSON texts;\0A  -C               colorize JSON;\0A  -M               monochrome (don't colorize JSON);\0A  -S               sort keys of objects on output;\0A  --tab            use tabs for indentation;\0A  --arg a v        set variable $a to value <v>;\0A  --argjson a v    set variable $a to JSON value <v>;\0A  --slurpfile a f  set variable $a to an array of JSON texts read from <f>;\0A  --rawfile a f    set variable $a to a string consisting of the contents of <f>;\0A  --args           remaining arguments are string arguments, not files;\0A  --jsonargs       remaining arguments are JSON arguments, not files;\0A  --               terminates argument processing;\0A\0ANamed arguments are also available as $ARGS.named[], while\0Apositional arguments are available as $ARGS.positional[].\0A\0ASee the manpage for more options.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** @stderr, align 8
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @stdout, align 8
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** @JQ_VERSION, align 8
  %15 = load i8*, i8** @progname, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i8*, i8** @progname, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([694 x i8], [694 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15, i8* %16, i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** @progname, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %28

25:                                               ; preds = %12
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([1189 x i8], [1189 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 2, %34 ], [ %36, %35 ]
  %39 = call i32 @exit(i32 %38) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
