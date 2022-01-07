; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@rpc_disable_crc32_check = common dso_local global i32 0, align 4
@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"first-cluster-only\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"only first cluster\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"test-mode\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"tcp-buffers\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"new tcp buffers\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"crc32-mode\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"crc32 mode: bit 0 disables crc32 check, bit 1 disables crc32 send (sends 0)\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"heap-size\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"sets heap size. Supports K/M/G/T modifiers\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"max-binlog-size\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"sets maximal binlog slice size. Supports K/M/G/T modifiers\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"ping-interval\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"sets ping interval (only in tcp connections) (default %lf)\00", align 1
@PING_INTERVAL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"binlog-enable\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"enables binlog mode. argument is binlog name\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"drop-probability\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"sets probability of dropping transmitted packet\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"sets niceness\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@port = common dso_local global i64 0, align 8
@PID = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@maxconn = common dso_local global i32 0, align 4
@test_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@config_filename = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [22 x i8] c"config check failed!\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"config loaded!\0A\00", align 1
@aes_pwd_file = common dso_local global i32 0, align 4
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@settings_addr = common dso_local global i32 0, align 4
@backlog = common dso_local global i32 0, align 4
@enable_ipv6 = common dso_local global i64 0, align 8
@sfd = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [42 x i8] c"cannot open server socket at port %d: %m\0A\00", align 1
@usfd = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [46 x i8] c"cannot open udp server socket at port %d: %m\0A\00", align 1
@bname = common dso_local global i64 0, align 8
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
  store i32 1, i32* @rpc_disable_crc32_check, align 4
  %7 = call i32 (...) @set_debug_handlers()
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  %11 = call i32 @remove_parse_option(i8 signext 66)
  %12 = load i32, i32* @required_argument, align 4
  %13 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 0, i8 signext 102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @no_argument, align 4
  %15 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 0, i8 signext 84, i8* null)
  %16 = load i32, i32* @no_argument, align 4
  %17 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 0, i8 signext 78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i32, i32* @required_argument, align 4
  %19 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %18, i32 0, i8 signext 67, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* @required_argument, align 4
  %21 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %20, i32 0, i8 signext 72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %22 = load i32, i32* @required_argument, align 4
  %23 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %22, i32 0, i8 signext 83, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i32, i32* @required_argument, align 4
  %25 = load i32, i32* @PING_INTERVAL, align 4
  %26 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %24, i32 0, i8 signext 121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @required_argument, align 4
  %28 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %27, i32 0, i8 signext 66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %29 = load i32, i32* @required_argument, align 4
  %30 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %29, i32 0, i8 signext 81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0))
  %31 = load i32, i32* @required_argument, align 4
  %32 = call i32 (i8*, i32, i32, i8, i8*, ...) @parse_option(i8* null, i32 %31, i32 0, i8 signext 110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* @f_parse_option, align 4
  %36 = call i32 @parse_engine_options_long(i32 %33, i8** %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @optind, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %118

43:                                               ; preds = %2
  %44 = load i64, i64* @port, align 8
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PID, i32 0, i32 0), align 8
  %45 = call i32 (...) @init_dyn_data()
  %46 = call i32 (...) @get_my_ipv4()
  %47 = load i64, i64* @port, align 8
  %48 = call i32 @init_server_PID(i32 %46, i64 %47)
  %49 = load i32, i32* @maxconn, align 4
  %50 = add nsw i32 %49, 16
  %51 = call i64 @raise_file_rlimit(i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load i32, i32* @test_mode, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i32, i32* @maxconn, align 4
  %59 = add nsw i32 %58, 16
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i32 %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %53, %43
  %63 = load i8**, i8*** %5, align 8
  %64 = load i32, i32* @optind, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** @config_filename, align 8
  %68 = call i32 @do_reload_config(i32 0)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* @stderr, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %118

76:                                               ; preds = %62
  %77 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %78 = load i32, i32* @aes_pwd_file, align 4
  %79 = call i32 @aes_load_pwd_file(i32 %78)
  %80 = load i64, i64* @port, align 8
  %81 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load i64, i64* @port, align 8
  %85 = load i32, i32* @settings_addr, align 4
  %86 = load i32, i32* @backlog, align 4
  %87 = load i64, i64* @enable_ipv6, align 8
  %88 = call i64 @server_socket(i64 %84, i32 %85, i32 %86, i64 %87)
  store i64 %88, i64* @sfd, align 8
  %89 = load i64, i64* @sfd, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* @port, align 8
  %93 = call i32 @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i64 %92)
  %94 = call i32 @exit(i32 1) #3
  unreachable

95:                                               ; preds = %83
  %96 = load i64, i64* @port, align 8
  %97 = load i32, i32* @settings_addr, align 4
  %98 = load i32, i32* @backlog, align 4
  %99 = load i64, i64* @enable_ipv6, align 8
  %100 = add nsw i64 %99, 1
  %101 = call i64 @server_socket(i64 %96, i32 %97, i32 %98, i64 %100)
  store i64 %101, i64* @usfd, align 8
  %102 = load i64, i64* @usfd, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i64, i64* @port, align 8
  %106 = call i32 @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i64 %105)
  %107 = call i32 @exit(i32 1) #3
  unreachable

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %76
  %110 = load i64, i64* @bname, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, i64* @bname, align 8
  %114 = call i32 @read_binlog(i64 %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = call i32 @time(i32 0)
  store i32 %116, i32* @start_time, align 4
  %117 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %71, %41
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @remove_parse_option(i8 signext) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i8 signext, i8*, ...) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @init_server_PID(i32, i64) #1

declare dso_local i32 @get_my_ipv4(...) #1

declare dso_local i64 @raise_file_rlimit(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @do_reload_config(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @server_socket(i64, i32, i32, i64) #1

declare dso_local i32 @kprintf(i8*, i64) #1

declare dso_local i32 @read_binlog(i64) #1

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
