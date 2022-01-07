; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-binlog-diff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"c:l:u:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@maxconn = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unimplemented option %c\0A\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@binlogname = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@Binlog = common dso_local global i32 0, align 4
@log_readto_pos = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"%lld add record logevents.\0A\00", align 1
@add_logevents = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%lld delete record logevents.\0A\00", align 1
@delete_logevents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %29 [
    i32 99, label %19
    i32 108, label %22
    i32 117, label %24
    i32 118, label %26
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i8* @atoi(i8* %20)
  store i8* %21, i8** @maxconn, align 8
  br label %34

22:                                               ; preds = %17
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @logname, align 8
  br label %34

24:                                               ; preds = %17
  %25 = load i8*, i8** @optarg, align 8
  store i8* %25, i8** @username, align 8
  br label %34

26:                                               ; preds = %17
  %27 = load i64, i64* @verbosity, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* @verbosity, align 8
  br label %34

29:                                               ; preds = %17
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %29, %26, %24, %22, %19
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @optind, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %114

42:                                               ; preds = %35
  %43 = load i8*, i8** @maxconn, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 16
  %45 = call i64 @raise_file_rlimit(i8* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** @maxconn, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 16
  %50 = call i32 @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %42
  %53 = load i8*, i8** @username, align 8
  %54 = call i64 @change_user(i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i8*, i8** @username, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8*, i8** @username, align 8
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %61 ]
  %64 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %52
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* @optind, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32* @binlog_load(i8* %71, i32 1)
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %76, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32* @binlog_load(i8* %81, i32 0)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = ptrtoint i32* %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* @binlogname, align 4
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* @binlog_disabled, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* @Binlog, align 4
  %94 = call i64 @append_to_binlog(i32 %93)
  %95 = load i64, i64* @log_readto_pos, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @zones_merge(i32* %99, i32* %100)
  %102 = call i32 (...) @flush_binlog_last()
  %103 = call i32 @sync_binlog(i32 2)
  %104 = load i64, i64* @verbosity, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %66
  %107 = load i32, i32* @stdout, align 4
  %108 = load i32, i32* @add_logevents, align 4
  %109 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @stdout, align 4
  %111 = load i32, i32* @delete_logevents, align 4
  %112 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %66
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %40
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @raise_file_rlimit(i8*) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32* @binlog_load(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @append_to_binlog(i32) #1

declare dso_local i32 @zones_merge(i32*, i32*) #1

declare dso_local i32 @flush_binlog_last(...) #1

declare dso_local i32 @sync_binlog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
