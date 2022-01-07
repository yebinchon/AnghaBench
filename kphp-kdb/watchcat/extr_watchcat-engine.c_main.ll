; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@now = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"memory-limit\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"<memory-limit> sets maximal size of used memory not including zmemory in mebibytes\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"queue-port\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"<port> port number for communication with queue (default %d)\00", align 1
@queue_port = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"lock-memory\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"lock paged memory\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"stemmer\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"enable stemmer\00", align 1
@watchcat_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@use_stemmer = common dso_local global i64 0, align 8
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@username = common dso_local global i8* null, align 8
@maxconn = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@port = common dso_local global i32 0, align 4
@PRIVILEGED_TCP_PORTS = common dso_local global i32 0, align 4
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@sfd = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@interactive = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@start_time = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @dl_set_debug_handlers()
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  %10 = call i8* @time(i32* null)
  store i8* %10, i8** @now, align 8
  %11 = call i32 @remove_parse_option(i32 97)
  %12 = call i32 @remove_parse_option(i32 66)
  %13 = call i32 @remove_parse_option(i32 114)
  %14 = call i32 @remove_parse_option(i32 204)
  %15 = load i32, i32* @required_argument, align 4
  %16 = call i32 (i8*, i32, i32*, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null, i8 signext 109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @required_argument, align 4
  %18 = load i32, i32* @queue_port, align 4
  %19 = call i32 (i8*, i32, i32*, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32* null, i8 signext 80, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @no_argument, align 4
  %21 = call i32 (i8*, i32, i32*, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %20, i32* null, i8 signext 107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @no_argument, align 4
  %23 = call i32 (i8*, i32, i32*, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %22, i32* null, i8 signext 83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* @watchcat_parse_option, align 4
  %27 = call i32 @parse_engine_options_long(i32 %24, i8** %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %104

33:                                               ; preds = %2
  %34 = call i32 (...) @init_is_letter()
  %35 = call i32 (...) @enable_is_letter_sigils()
  %36 = load i64, i64* @use_stemmer, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (...) @stem_init()
  br label %40

40:                                               ; preds = %38, %33
  store i32 1048576, i32* @dynamic_data_buffer_size, align 4
  %41 = call i32 (...) @init_dyn_data()
  %42 = load i8*, i8** @username, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @maxconn, align 4
  %46 = load i32, i32* @MAX_CONNECTIONS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i64 (...) @geteuid()
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1000, i32* @maxconn, align 4
  br label %52

52:                                               ; preds = %51, %48, %44, %40
  %53 = load i32, i32* @maxconn, align 4
  %54 = add nsw i32 %53, 16
  %55 = call i64 @raise_file_rlimit(i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* @maxconn, align 4
  %60 = add nsw i32 %59, 16
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %52
  %64 = load i32, i32* @port, align 4
  %65 = load i32, i32* @PRIVILEGED_TCP_PORTS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* @port, align 4
  %69 = load i32, i32* @settings_addr, align 4
  %70 = load i32, i32* @backlog, align 4
  %71 = call i64 @server_socket(i32 %68, i32 %69, i32 %70, i32 0)
  store i64 %71, i64* @sfd, align 8
  %72 = load i64, i64* @sfd, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* @port, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %63
  %81 = call i32 @aes_load_pwd_file(i32* null)
  %82 = load i8*, i8** @username, align 8
  %83 = call i64 @change_user(i8* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32, i32* @interactive, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8*, i8** @username, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i8*, i8** @username, align 8
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i8* [ %93, %92 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), %94 ]
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %96)
  %98 = call i32 @exit(i32 1) #3
  unreachable

99:                                               ; preds = %85, %80
  %100 = call i32 (...) @init_all()
  %101 = call i8* @time(i32* null)
  store i8* %101, i8** @start_time, align 8
  %102 = call i32 (...) @start_server()
  %103 = call i32 (...) @free_all()
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %99, %31
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @dl_set_debug_handlers(...) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @remove_parse_option(i32) #1

declare dso_local i32 @parse_option(i8*, i32, i32*, i8 signext, i8*, ...) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_is_letter(...) #1

declare dso_local i32 @enable_is_letter_sigils(...) #1

declare dso_local i32 @stem_init(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @server_socket(i32, i32, i32, i32) #1

declare dso_local i32 @aes_load_pwd_file(i32*) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @init_all(...) #1

declare dso_local i32 @start_server(...) #1

declare dso_local i32 @free_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
