; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"workers\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"sets number of additional worker processes\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"max-response-records\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"limits max records number in the response\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"stats-port\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"sets port for getting stats using memcache queries\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"sets exported binlog name for converting config to binlog\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"keep-going\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"reports as much config errors as possible\00", align 1
@f_parse_option = common dso_local global i32 0, align 4
@output_binlog_name = common dso_local global i32* null, align 8
@stats_port = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@config_name = common dso_local global i8* null, align 8
@PRIVILEGED_TCP_PORTS = common dso_local global i64 0, align 8
@maxconn = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@username = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@dynamic_data_buffer_size = common dso_local global i32 0, align 4
@keep_going = common dso_local global i32 0, align 4
@include_binlog_name = common dso_local global i32 0, align 4
@binlog_load_time = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@jump_log_pos = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.14 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@binlogname = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @signals_init()
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @progname, align 8
  %10 = call i32 @remove_parse_option(i32 114)
  %11 = call i32 @remove_parse_option(i32 66)
  %12 = call i32 @remove_parse_option(i32 203)
  %13 = load i32, i32* @required_argument, align 4
  %14 = call i32 @parse_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 0, i8 signext 77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @required_argument, align 4
  %16 = call i32 @parse_option(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 0, i8 signext 82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @required_argument, align 4
  %18 = call i32 @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %17, i32 0, i8 signext 80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @required_argument, align 4
  %20 = call i32 @parse_option(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %19, i32 0, i8 signext 69, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %21 = load i32, i32* @no_argument, align 4
  %22 = call i32 @parse_option(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %21, i32 0, i8 signext 107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* @f_parse_option, align 4
  %26 = call i32 @parse_engine_options_long(i32 %23, i8** %24, i32 %25)
  %27 = load i32*, i32** @output_binlog_name, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i64 0, i64* @stats_port, align 8
  store i64 0, i64* @port, align 8
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i64, i64* @port, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** @output_binlog_name, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %33, %30
  %39 = load i8**, i8*** %5, align 8
  %40 = load i64, i64* @optind, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** @config_name, align 8
  %43 = load i64, i64* @port, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i64, i64* @port, align 8
  %47 = load i64, i64* @PRIVILEGED_TCP_PORTS, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @open_server_sockets()
  br label %51

51:                                               ; preds = %49, %45, %38
  %52 = load i64, i64* @maxconn, align 8
  %53 = add nsw i64 %52, 16
  %54 = call i64 @raise_file_rlimit(i64 %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, i64* @maxconn, align 8
  %58 = add nsw i64 %57, 16
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* %59)
  %61 = call i32 @exit(i32 1) #3
  unreachable

62:                                               ; preds = %51
  %63 = load i8*, i8** @username, align 8
  %64 = call i64 @change_user(i8* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i8*, i8** @username, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i8*, i8** @username, align 8
  br label %72

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i8* [ %70, %69 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), %71 ]
  %74 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %62
  %77 = call i32 @time(i32* null)
  %78 = call i32 @srand48(i32 %77)
  store i32 67108864, i32* @dynamic_data_buffer_size, align 4
  %79 = call i32 (...) @init_dyn_data()
  %80 = call i32 (...) @dns_reset()
  %81 = load i8*, i8** @config_name, align 8
  %82 = load i32, i32* @keep_going, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32*, i32** @output_binlog_name, align 8
  %87 = call i64 @dns_config_load(i8* %81, i32 %85, i32* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = call i32 @exit(i32 1) #3
  unreachable

91:                                               ; preds = %76
  %92 = load i32*, i32** @output_binlog_name, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @exit(i32 0) #3
  unreachable

96:                                               ; preds = %91
  %97 = load i32, i32* @include_binlog_name, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %151

99:                                               ; preds = %96
  %100 = call i32 (...) @mytime()
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* @binlog_load_time, align 4
  store i32 1, i32* @binlog_disabled, align 4
  %102 = load i32, i32* @include_binlog_name, align 4
  %103 = call i64 @engine_preload_filelist(i32 %102, i32* null)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* @include_binlog_name, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  %110 = call i32 @exit(i32 1) #3
  unreachable

111:                                              ; preds = %99
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %113 = load i32, i32* @jump_log_pos, align 4
  %114 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %112, i32 %113)
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** @Binlog, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %116 = icmp ne %struct.TYPE_7__* %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = load i32, i32* @jump_log_pos, align 4
  %124 = call i32 (i8*, i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i8* %122, i32 %123)
  %125 = call i32 @exit(i32 1) #3
  unreachable

126:                                              ; preds = %111
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* @binlogname, align 4
  %132 = call i32 (...) @clear_log()
  %133 = load i32, i32* @jump_log_pos, align 4
  %134 = call i32 @init_log_data(i32 %133, i32 0, i32 0)
  %135 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %136 = call i64 @replay_log(i32 0, i32 1)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %126
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %126
  %141 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %142 = call i32 (...) @mytime()
  %143 = load i32, i32* @binlog_load_time, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* @binlog_load_time, align 4
  %145 = load i32, i32* @binlog_disabled, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  %148 = call i32 (...) @clear_read_log()
  br label %149

149:                                              ; preds = %147, %140
  %150 = call i32 (...) @clear_write_log()
  br label %151

151:                                              ; preds = %149, %96
  %152 = call i32 @init_msg_buffers(i32 0)
  %153 = call i32 @time(i32* null)
  store i32 %153, i32* @start_time, align 4
  %154 = call i32 (...) @start_server()
  ret i32 0
}

declare dso_local i32 @signals_init(...) #1

declare dso_local i32 @remove_parse_option(i32) #1

declare dso_local i32 @parse_option(i8*, i32, i32, i8 signext, i8*) #1

declare dso_local i32 @parse_engine_options_long(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open_server_sockets(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

declare dso_local i32 @kprintf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i32 @dns_reset(...) #1

declare dso_local i64 @dns_config_load(i8*, i32, i32*) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i64 @engine_preload_filelist(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i64 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @clear_write_log(...) #1

declare dso_local i32 @init_msg_buffers(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
