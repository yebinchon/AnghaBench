; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_options.c_verify_global_config.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_options.c_verify_global_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@short_options = common dso_local global i32 0, align 4
@long_opts = common dso_local global %struct.TYPE_4__* null, align 8
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no-global-config\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_global_config(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i32, i32* @short_options, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @long_opts, align 8
  %12 = call i32 @getopt_long(i32 %8, i8** %9, i32 %10, %struct.TYPE_4__* %11, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %7
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 -1, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EOF, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %42

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %41 [
    i32 112, label %24
    i32 0, label %27
    i32 63, label %38
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @optarg, align 4
  %26 = call i32 @xstrdup(i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 1), align 4
  br label %41

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @long_opts, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 4
  br label %37

37:                                               ; preds = %36, %27
  br label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable

41:                                               ; preds = %22, %37, %24
  br label %7

42:                                               ; preds = %21, %7
  store i32 1, i32* @optind, align 4
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @xstrdup(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

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
