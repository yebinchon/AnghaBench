; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-xor.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-xor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"hu:\00", align 1
@optarg = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@fd = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @set_debug_handlers()
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
  br label %73

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %27, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %27 [
    i32 104, label %23
    i32 117, label %25
  ]

23:                                               ; preds = %21
  %24 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %73

25:                                               ; preds = %21
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @username, align 8
  br label %27

27:                                               ; preds = %21, %25
  br label %16

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @optind, align 4
  %31 = add nsw i32 %30, 2
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %73

35:                                               ; preds = %28
  %36 = load i8*, i8** @username, align 8
  %37 = call i64 @change_user(i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @username, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** @username, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %45 ]
  %48 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %35
  %51 = call i32 @init_files(i32 3)
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* @optind, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @open_file(i32 0, i8* %56, i32 0)
  %58 = load i8**, i8*** %5, align 8
  %59 = load i32, i32* @optind, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @open_file(i32 1, i8* %63, i32 0)
  %65 = load i32*, i32** @fd, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 1, i32* %66, align 4
  %67 = call i32 (...) @run()
  %68 = call i32 (...) @flush_w_buff()
  %69 = load i32*, i32** @fd, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @fsync(i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %50, %33, %23, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_files(i32) #1

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @flush_w_buff(...) #1

declare dso_local i32 @fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
