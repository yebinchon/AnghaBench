; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"1H:mtuv\00", align 1
@optarg = common dso_local global i8* null, align 8
@http_port = common dso_local global i32 0, align 4
@memory_repairing = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@exit_on_file_body_error = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %25 [
    i32 72, label %14
    i32 109, label %17
    i32 116, label %18
    i32 117, label %19
    i32 118, label %21
    i32 49, label %24
  ]

14:                                               ; preds = %12
  %15 = load i8*, i8** @optarg, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* @http_port, align 4
  br label %25

17:                                               ; preds = %12
  store i32 1, i32* @memory_repairing, align 4
  br label %25

18:                                               ; preds = %12
  store i32 1, i32* @test_mode, align 4
  br label %25

19:                                               ; preds = %12
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @username, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %25

24:                                               ; preds = %12
  store i32 0, i32* @exit_on_file_body_error, align 4
  br label %25

25:                                               ; preds = %12, %24, %21, %19, %18, %17, %14
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = add nsw i32 %28, 2
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %86

33:                                               ; preds = %26
  %34 = load i8*, i8** @username, align 8
  %35 = call i64 @change_user(i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** @username, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8*, i8** @username, align 8
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %42 ]
  %45 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %33
  %48 = load i32, i32* @memory_repairing, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* @optind, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* @optind, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @storage_memory_repair(i8* %55, i8* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* @optind, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @unlink(i8* %70)
  store i32 1, i32* %3, align 4
  br label %86

72:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %86

73:                                               ; preds = %47
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* @optind, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @storage_binlog_append(i8* %78, i8* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %73, %72, %64, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @storage_memory_repair(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @storage_binlog_append(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
