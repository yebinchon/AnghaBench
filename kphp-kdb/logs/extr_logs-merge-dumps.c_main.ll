; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-merge-dumps.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"d:hF:N:o:u:\00", align 1
@optarg = common dso_local global i8* null, align 8
@dump_name = common dso_local global i8* null, align 8
@engineF = common dso_local global i64 0, align 8
@engineN = common dso_local global i64 0, align 8
@out_name = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ansI = common dso_local global i64 0, align 8
@MAX_FN = common dso_local global i64 0, align 8

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
  br label %84

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %37 [
    i32 100, label %23
    i32 104, label %25
    i32 70, label %27
    i32 78, label %30
    i32 111, label %33
    i32 117, label %35
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @dump_name, align 8
  br label %37

25:                                               ; preds = %21
  %26 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %84

27:                                               ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i64 @atoi(i8* %28)
  store i64 %29, i64* @engineF, align 8
  br label %37

30:                                               ; preds = %21
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i64 @atoi(i8* %31)
  store i64 %32, i64* @engineN, align 8
  br label %37

33:                                               ; preds = %21
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @out_name, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** @username, align 8
  br label %37

37:                                               ; preds = %21, %35, %33, %30, %27, %23
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @optind, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %84

44:                                               ; preds = %38
  %45 = load i8*, i8** @username, align 8
  %46 = call i64 @change_user(i8* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @username, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i8*, i8** @username, align 8
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i8* [ %53, %52 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %54 ]
  %57 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %44
  %60 = load i64, i64* @engineN, align 8
  %61 = load i64, i64* @engineF, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @engineF, align 8
  %65 = icmp sge i64 %64, 0
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i1 [ false, %59 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* @engineN, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* @ansI, align 8
  %72 = load i64, i64* @engineN, align 8
  %73 = add nsw i64 %72, 1
  %74 = load i64, i64* @MAX_FN, align 8
  %75 = icmp slt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i64, i64* @ansI, align 8
  %79 = load i8*, i8** @out_name, align 8
  %80 = call i32 @dl_open_file(i64 %78, i8* %79, i32 2)
  %81 = call i32 (...) @init_data()
  %82 = call i32 (...) @run()
  %83 = call i32 (...) @flush_w_buff()
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %66, %42, %25, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
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

declare dso_local i32 @dl_open_file(i64, i8*, i32) #1

declare dso_local i32 @init_data(...) #1

declare dso_local i32 @run(...) #1

declare dso_local i32 @flush_w_buff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
