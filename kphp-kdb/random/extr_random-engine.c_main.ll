; ModuleID = '/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/random/extr_random-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@daemonize = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"N:b:c:dhl:p:s:u:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i8* null, align 8
@MAX_CONNECTIONS = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@port = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@username = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"<password-file> wasn't given\0A\00", align 1
@password_filename = common dso_local global i8* null, align 8
@random_engine = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@PASSWORD_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2048, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @set_debug_handlers()
  store i32 1, i32* @daemonize, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @progname, align 8
  br label %15

15:                                               ; preds = %98, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %99

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %98 [
    i32 78, label %22
    i32 98, label %26
    i32 99, label %34
    i32 100, label %46
    i32 104, label %49
    i32 108, label %51
    i32 118, label %53
    i32 112, label %56
    i32 115, label %59
    i32 117, label %96
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i8* @atoi(i8* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  br label %98

26:                                               ; preds = %20
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i8* @atoi(i8* %27)
  store i8* %28, i8** @backlog, align 8
  %29 = load i8*, i8** @backlog, align 8
  %30 = icmp ule i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i8*, i8** @BACKLOG, align 8
  store i8* %32, i8** @backlog, align 8
  br label %33

33:                                               ; preds = %31, %26
  br label %98

34:                                               ; preds = %20
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @atoi(i8* %35)
  store i8* %36, i8** @maxconn, align 8
  %37 = load i8*, i8** @maxconn, align 8
  %38 = icmp ule i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** @maxconn, align 8
  %41 = load i8*, i8** @MAX_CONNECTIONS, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %34
  %44 = load i8*, i8** @MAX_CONNECTIONS, align 8
  store i8* %44, i8** @maxconn, align 8
  br label %45

45:                                               ; preds = %43, %39
  br label %98

46:                                               ; preds = %20
  %47 = load i32, i32* @daemonize, align 4
  %48 = xor i32 %47, 1
  store i32 %48, i32* @daemonize, align 4
  br label %98

49:                                               ; preds = %20
  %50 = call i32 (...) @usage()
  br label %98

51:                                               ; preds = %20
  %52 = load i8*, i8** @optarg, align 8
  store i8* %52, i8** @logname, align 8
  br label %98

53:                                               ; preds = %20
  %54 = load i32, i32* @verbosity, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @verbosity, align 4
  br label %98

56:                                               ; preds = %20
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i8* @atoi(i8* %57)
  store i8* %58, i8** @port, align 8
  br label %98

59:                                               ; preds = %20
  store i8 0, i8* %6, align 1
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64* %7, i8* %6)
  %62 = icmp sge i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = or i32 %66, 32
  switch i32 %67, label %80 [
    i32 107, label %68
    i32 109, label %71
    i32 103, label %74
    i32 116, label %77
  ]

68:                                               ; preds = %59
  %69 = load i64, i64* %7, align 8
  %70 = shl i64 %69, 10
  store i64 %70, i64* %7, align 8
  br label %86

71:                                               ; preds = %59
  %72 = load i64, i64* %7, align 8
  %73 = shl i64 %72, 20
  store i64 %73, i64* %7, align 8
  br label %86

74:                                               ; preds = %59
  %75 = load i64, i64* %7, align 8
  %76 = shl i64 %75, 30
  store i64 %76, i64* %7, align 8
  br label %86

77:                                               ; preds = %59
  %78 = load i64, i64* %7, align 8
  %79 = shl i64 %78, 40
  store i64 %79, i64* %7, align 8
  br label %86

80:                                               ; preds = %59
  %81 = load i8, i8* %6, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 32
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %80, %77, %74, %71, %68
  %87 = load i64, i64* %7, align 8
  %88 = icmp sge i64 %87, 1024
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64, i64* %7, align 8
  %91 = icmp slt i64 %90, 1073741824
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %89, %86
  br label %98

96:                                               ; preds = %20
  %97 = load i8*, i8** @optarg, align 8
  store i8* %97, i8** @username, align 8
  br label %98

98:                                               ; preds = %20, %96, %95, %56, %53, %51, %49, %46, %45, %33, %22
  br label %15

99:                                               ; preds = %15
  %100 = load i32, i32* @optind, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = call i32 @kprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %106 = call i32 (...) @usage()
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* @optind, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** @password_filename, align 8
  %113 = call i32 @engine_init(i32* @random_engine, i32 0, i32 0)
  %114 = call i32 @time(i32 0)
  store i32 %114, i32* @start_time, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** @password_filename, align 8
  %117 = load i32, i32* @PASSWORD_LENGTH, align 4
  %118 = call i32 @random_init(i32 2048, i32 %115, i8* %116, i32 %117)
  %119 = call i32 (...) @start_server()
  ret i32 0
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @engine_init(i32*, i32, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @random_init(i32, i32, i8*, i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
