; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"vdc:E:p:N:hu:l:S:M:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@slow_delay = common dso_local global i8* null, align 8
@medium_delay = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@PID = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @set_debug_handlers()
  store i32 0, i32* %8, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  br label %14

14:                                               ; preds = %64, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %64 [
    i32 118, label %21
    i32 99, label %24
    i32 69, label %37
    i32 78, label %41
    i32 112, label %45
    i32 117, label %48
    i32 108, label %50
    i32 83, label %52
    i32 77, label %55
    i32 104, label %58
    i32 100, label %61
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %64

24:                                               ; preds = %19
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @atoi(i8* %25)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* @maxconn, align 8
  %28 = load i64, i64* @maxconn, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* @maxconn, align 8
  %32 = load i64, i64* @MAX_CONNECTIONS, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %24
  %35 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %35, i64* @maxconn, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %64

37:                                               ; preds = %19
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @strncpy(i8* %38, i8* %39, i32 255)
  store i32 1, i32* %8, align 4
  br label %64

41:                                               ; preds = %19
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @strncpy(i8* %42, i8* %43, i32 255)
  br label %64

45:                                               ; preds = %19
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @atoi(i8* %46)
  store i8* %47, i8** @port, align 8
  br label %64

48:                                               ; preds = %19
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** @username, align 8
  br label %64

50:                                               ; preds = %19
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** @logname, align 8
  br label %64

52:                                               ; preds = %19
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i8* @atof(i8* %53)
  store i8* %54, i8** @slow_delay, align 8
  br label %64

55:                                               ; preds = %19
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i8* @atof(i8* %56)
  store i8* %57, i8** @medium_delay, align 8
  br label %64

58:                                               ; preds = %19
  %59 = call i32 (...) @usage()
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %19
  %62 = load i32, i32* @daemonize, align 4
  %63 = xor i32 %62, 1
  store i32 %63, i32* @daemonize, align 4
  br label %64

64:                                               ; preds = %61, %19, %55, %52, %50, %48, %45, %41, %37, %36, %21
  br label %14

65:                                               ; preds = %14
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @optind, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %97

71:                                               ; preds = %65
  %72 = load i64, i64* @maxconn, align 8
  %73 = add nsw i64 %72, 16
  %74 = call i64 @raise_file_rlimit(i64 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = load i64, i64* @maxconn, align 8
  %79 = add nsw i64 %78, 16
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %71
  %83 = call i32 (...) @init_dyn_data()
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %85 = call i32 @read_network_file(i8* %84)
  %86 = load i8*, i8** @port, align 8
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PID, i32 0, i32 0), align 8
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = call i32 @aes_load_pwd_file(i8* null)
  br label %94

91:                                               ; preds = %82
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %93 = call i32 @aes_load_pwd_file(i8* %92)
  br label %94

94:                                               ; preds = %91, %89
  %95 = call i32 @time(i32 0)
  store i32 %95, i32* @start_time, align 4
  %96 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %69
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @atof(i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @read_network_file(i8*) #1

declare dso_local i32 @aes_load_pwd_file(i8*) #1

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
