; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"b:c:l:p:dhu:v\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@config_filename = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@settings_addr = common dso_local global i32 0, align 4
@sdf = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %54 [
    i32 118, label %17
    i32 104, label %20
    i32 98, label %22
    i32 99, label %30
    i32 112, label %43
    i32 117, label %47
    i32 108, label %49
    i32 100, label %51
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @verbosity, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @verbosity, align 4
  br label %54

20:                                               ; preds = %15
  %21 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %96

22:                                               ; preds = %15
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i8* @atoi(i8* %23)
  store i8* %24, i8** @backlog, align 8
  %25 = load i8*, i8** @backlog, align 8
  %26 = icmp ule i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** @BACKLOG, align 8
  store i8* %28, i8** @backlog, align 8
  br label %29

29:                                               ; preds = %27, %22
  br label %54

30:                                               ; preds = %15
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i8* @atoi(i8* %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* @maxconn, align 8
  %34 = load i64, i64* @maxconn, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @maxconn, align 8
  %38 = load i64, i64* @MAX_CONNECTIONS, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %30
  %41 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %41, i64* @maxconn, align 8
  br label %42

42:                                               ; preds = %40, %36
  br label %54

43:                                               ; preds = %15
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i8* @atoi(i8* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* @port, align 4
  br label %54

47:                                               ; preds = %15
  %48 = load i8*, i8** @optarg, align 8
  store i8* %48, i8** @username, align 8
  br label %54

49:                                               ; preds = %15
  %50 = load i8*, i8** @optarg, align 8
  store i8* %50, i8** @logname, align 8
  br label %54

51:                                               ; preds = %15
  %52 = load i32, i32* @daemonize, align 4
  %53 = xor i32 %52, 1
  store i32 %53, i32* @daemonize, align 4
  br label %54

54:                                               ; preds = %51, %15, %49, %47, %43, %42, %29, %17
  br label %10

55:                                               ; preds = %10
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @optind, align 4
  %58 = add nsw i32 %57, 1
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %96

62:                                               ; preds = %55
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* @optind, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** @config_filename, align 8
  %68 = call i32 @open_file(i32 0, i8* %67, i32 0)
  %69 = call i32 (...) @parse_config()
  %70 = load i64, i64* @maxconn, align 8
  %71 = add nsw i64 %70, 16
  %72 = call i64 @raise_file_rlimit(i64 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = load i32, i32* @stderr, align 4
  %76 = load i64, i64* @maxconn, align 8
  %77 = add nsw i64 %76, 16
  %78 = trunc i64 %77 to i32
  %79 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = call i32 @exit(i32 1) #3
  unreachable

81:                                               ; preds = %62
  %82 = load i32, i32* @port, align 4
  %83 = load i32, i32* @settings_addr, align 4
  %84 = load i8*, i8** @backlog, align 8
  %85 = call i64 @server_socket(i32 %82, i32 %83, i8* %84, i32 0)
  store i64 %85, i64* @sdf, align 8
  %86 = load i64, i64* @sdf, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* @port, align 4
  %91 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %81
  %94 = call i32 @time(i32 0)
  store i32 %94, i32* @start_time, align 4
  %95 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %60, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @open_file(i32, i8*, i32) #1

declare dso_local i32 @parse_config(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i8*, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
