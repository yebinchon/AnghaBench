; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"b:c:l:p:U:dhu:vSty\00", align 1
@yo_hack = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@use_aspell_suggestion = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@port = common dso_local global i8* null, align 8
@udp_port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@settings_addr = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@start_time = common dso_local global i32 0, align 4
@spell_done = common dso_local global i32 0, align 4

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
  br label %11

11:                                               ; preds = %60, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %61

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %60 [
    i32 121, label %18
    i32 116, label %19
    i32 83, label %20
    i32 118, label %21
    i32 104, label %24
    i32 98, label %26
    i32 99, label %34
    i32 112, label %47
    i32 85, label %50
    i32 117, label %53
    i32 108, label %55
    i32 100, label %57
  ]

18:                                               ; preds = %16
  store i32 1, i32* @yo_hack, align 4
  br label %60

19:                                               ; preds = %16
  store i32 1, i32* @test_mode, align 4
  br label %60

20:                                               ; preds = %16
  store i32 1, i32* @use_aspell_suggestion, align 4
  br label %60

21:                                               ; preds = %16
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %60

24:                                               ; preds = %16
  %25 = call i32 (...) @help()
  store i32 2, i32* %3, align 4
  br label %105

26:                                               ; preds = %16
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
  br label %60

34:                                               ; preds = %16
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @atoi(i8* %35)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* @maxconn, align 8
  %38 = load i64, i64* @maxconn, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @maxconn, align 8
  %42 = load i64, i64* @MAX_CONNECTIONS, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %34
  %45 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %45, i64* @maxconn, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %60

47:                                               ; preds = %16
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @atoi(i8* %48)
  store i8* %49, i8** @port, align 8
  br label %60

50:                                               ; preds = %16
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @atoi(i8* %51)
  store i8* %52, i8** @udp_port, align 8
  br label %60

53:                                               ; preds = %16
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** @username, align 8
  br label %60

55:                                               ; preds = %16
  %56 = load i8*, i8** @optarg, align 8
  store i8* %56, i8** @logname, align 8
  br label %60

57:                                               ; preds = %16
  %58 = load i32, i32* @daemonize, align 4
  %59 = xor i32 %58, 1
  store i32 %59, i32* @daemonize, align 4
  br label %60

60:                                               ; preds = %16, %57, %55, %53, %50, %47, %46, %33, %21, %20, %19, %18
  br label %11

61:                                               ; preds = %11
  %62 = load i64, i64* @maxconn, align 8
  %63 = add nsw i64 %62, 16
  %64 = call i64 @raise_file_rlimit(i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @stderr, align 4
  %68 = load i64, i64* @maxconn, align 8
  %69 = add nsw i64 %68, 16
  %70 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = call i32 @exit(i32 1) #3
  unreachable

72:                                               ; preds = %61
  %73 = load i8*, i8** @port, align 8
  %74 = load i32, i32* @settings_addr, align 4
  %75 = load i8*, i8** @backlog, align 8
  %76 = call i64 @server_socket(i8* %73, i32 %74, i8* %75, i32 0)
  store i64 %76, i64* @sfd, align 8
  %77 = load i64, i64* @sfd, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i8*, i8** @port, align 8
  %81 = call i32 @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %72
  %84 = call i32 @aes_load_pwd_file(i32 0)
  %85 = load i8*, i8** @username, align 8
  %86 = call i64 @change_user(i8* %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load i8*, i8** @username, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i8*, i8** @username, align 8
  br label %94

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i8* [ %92, %91 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %93 ]
  %96 = call i32 @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = call i32 @exit(i32 1) #3
  unreachable

98:                                               ; preds = %83
  %99 = call i32 (...) @init_dyn_data()
  %100 = call i32 @time(i32 0)
  store i32 %100, i32* @start_time, align 4
  %101 = call i32 (...) @spell_init()
  %102 = load i32, i32* @spell_done, align 4
  %103 = call i32 @atexit(i32 %102)
  %104 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @help(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i8*, i32, i8*, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @spell_init(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
