; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"a:b:c:l:m:n:p:t:u:Tdhv\00", align 1
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@test_mode = common dso_local global i32 0, align 4
@hostname = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@max_ad_id = common dso_local global i8* null, align 8
@suffix = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"fatal: supply a suffix with -a switch\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
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
  %7 = call i32 @time(i32 0)
  %8 = call i32 @srand48(i32 %7)
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %76, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %76 [
    i32 118, label %19
    i32 104, label %22
    i32 98, label %24
    i32 99, label %32
    i32 110, label %45
    i32 117, label %54
    i32 108, label %56
    i32 84, label %58
    i32 116, label %59
    i32 112, label %61
    i32 109, label %64
    i32 97, label %71
    i32 100, label %73
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @verbosity, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @verbosity, align 4
  br label %76

22:                                               ; preds = %17
  %23 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %108

24:                                               ; preds = %17
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i8* @atoi(i8* %25)
  store i8* %26, i8** @backlog, align 8
  %27 = load i8*, i8** @backlog, align 8
  %28 = icmp ule i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** @BACKLOG, align 8
  store i8* %30, i8** @backlog, align 8
  br label %31

31:                                               ; preds = %29, %24
  br label %76

32:                                               ; preds = %17
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* @maxconn, align 8
  %36 = load i64, i64* @maxconn, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @maxconn, align 8
  %40 = load i64, i64* @MAX_CONNECTIONS, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %32
  %43 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %43, i64* @maxconn, align 8
  br label %44

44:                                               ; preds = %42, %38
  br label %76

45:                                               ; preds = %17
  store i32 0, i32* @errno, align 4
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @atoi(i8* %46)
  %48 = call i32 @nice(i8* %47)
  %49 = load i32, i32* @errno, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %45
  br label %76

54:                                               ; preds = %17
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** @username, align 8
  br label %76

56:                                               ; preds = %17
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** @logname, align 8
  br label %76

58:                                               ; preds = %17
  store i32 1, i32* @test_mode, align 4
  br label %76

59:                                               ; preds = %17
  %60 = load i8*, i8** @optarg, align 8
  store i8* %60, i8** @hostname, align 8
  br label %76

61:                                               ; preds = %17
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i8* @atoi(i8* %62)
  store i8* %63, i8** @port, align 8
  br label %76

64:                                               ; preds = %17
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i8* @atoi(i8* %65)
  store i8* %66, i8** @max_ad_id, align 8
  %67 = load i8*, i8** @max_ad_id, align 8
  %68 = icmp ugt i8* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  br label %76

71:                                               ; preds = %17
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** @suffix, align 8
  br label %76

73:                                               ; preds = %17
  %74 = load i32, i32* @daemonize, align 4
  %75 = xor i32 %74, 1
  store i32 %75, i32* @daemonize, align 4
  br label %76

76:                                               ; preds = %73, %17, %71, %64, %61, %59, %58, %56, %54, %53, %44, %31, %19
  br label %12

77:                                               ; preds = %12
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @optind, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %108

83:                                               ; preds = %77
  %84 = load i8*, i8** @suffix, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @exit(i32 1) #3
  unreachable

90:                                               ; preds = %83
  %91 = call i32 (...) @init_dyn_data()
  %92 = load i64, i64* @maxconn, align 8
  %93 = add nsw i64 %92, 16
  %94 = call i64 @raise_file_rlimit(i64 %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = load i32, i32* @test_mode, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load i64, i64* @maxconn, align 8
  %102 = add nsw i64 %101, 16
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  %104 = call i32 @exit(i32 1) #3
  unreachable

105:                                              ; preds = %96, %90
  %106 = call i32 @time(i32 0)
  store i32 %106, i32* @start_time, align 4
  %107 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %81, %22
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @nice(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
