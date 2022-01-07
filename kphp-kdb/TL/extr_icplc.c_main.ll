; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_icplc.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_icplc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"icpl_readfile (\22%s\22) fail.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (...) @set_debug_handlers()
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %22 [
    i32 104, label %17
    i32 118, label %19
  ]

17:                                               ; preds = %15
  %18 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %57

19:                                               ; preds = %15
  %20 = load i32, i32* @verbosity, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @verbosity, align 4
  br label %22

22:                                               ; preds = %15, %19
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @optind, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* @optind, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = call i32 (...) @init_dyn_data()
  %37 = call i32 (...) @icpl_init()
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @icpl_readfile(i8* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @kprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %30
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @icpl_parse(i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @free(i8* %51)
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %46
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @free(i8* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @icpl_init(...) #1

declare dso_local i8* @icpl_readfile(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @icpl_parse(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
