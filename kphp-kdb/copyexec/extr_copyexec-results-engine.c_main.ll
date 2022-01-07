; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32 }

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"a:b:c:l:p:dhu:vEM:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid -M arg: %s\00", align 1
@max_lru_size = common dso_local global i32 0, align 4
@binlogname = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@daemonize = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@verbosity = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"fatal: cannot change user to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"engine_preload_filelist done\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_8__* null, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@Binlog = common dso_local global %struct.TYPE_7__* null, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"replaying binlog file %s (size %lld) from position %lld\0A\00", align 1
@binlog_load_time = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"fatal: error reading binlog\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@binlog_loaded_size = common dso_local global i64 0, align 8
@binlog_disabled = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %7, align 1
  %8 = call i32 (...) @set_debug_handlers()
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  br label %12

12:                                               ; preds = %71, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %71 [
    i32 69, label %19
    i32 77, label %20
    i32 97, label %33
    i32 98, label %35
    i32 99, label %43
    i32 100, label %56
    i32 104, label %59
    i32 108, label %61
    i32 112, label %63
    i32 117, label %66
    i32 118, label %68
  ]

19:                                               ; preds = %17
  store i8 1, i8* %7, align 1
  br label %71

20:                                               ; preds = %17
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = call i32 (...) @usage()
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* @max_lru_size, align 4
  br label %71

33:                                               ; preds = %17
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** @binlogname, align 8
  br label %71

35:                                               ; preds = %17
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @atoi(i8* %36)
  store i8* %37, i8** @backlog, align 8
  %38 = load i8*, i8** @backlog, align 8
  %39 = icmp ule i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** @BACKLOG, align 8
  store i8* %41, i8** @backlog, align 8
  br label %42

42:                                               ; preds = %40, %35
  br label %71

43:                                               ; preds = %17
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i8* @atoi(i8* %44)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* @maxconn, align 8
  %47 = load i64, i64* @maxconn, align 8
  %48 = icmp sle i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* @maxconn, align 8
  %51 = load i64, i64* @MAX_CONNECTIONS, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %43
  %54 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %54, i64* @maxconn, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %71

56:                                               ; preds = %17
  %57 = load i32, i32* @daemonize, align 4
  %58 = xor i32 %57, 1
  store i32 %58, i32* @daemonize, align 4
  br label %71

59:                                               ; preds = %17
  %60 = call i32 (...) @usage()
  br label %71

61:                                               ; preds = %17
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @logname, align 8
  br label %71

63:                                               ; preds = %17
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i8* @atoi(i8* %64)
  store i8* %65, i8** @port, align 8
  br label %71

66:                                               ; preds = %17
  %67 = load i8*, i8** @optarg, align 8
  store i8* %67, i8** @username, align 8
  br label %71

68:                                               ; preds = %17
  %69 = load i32, i32* @verbosity, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @verbosity, align 4
  br label %71

71:                                               ; preds = %17, %68, %66, %63, %61, %59, %56, %55, %42, %33, %31, %19
  br label %12

72:                                               ; preds = %12
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @optind, align 4
  %75 = add nsw i32 %74, 1
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i64, i64* @maxconn, align 8
  %81 = add nsw i64 %80, 16
  %82 = call i64 @raise_file_rlimit(i64 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i64, i64* @maxconn, align 8
  %86 = add nsw i64 %85, 16
  %87 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  %88 = call i32 @exit(i32 1) #3
  unreachable

89:                                               ; preds = %79
  %90 = call i32 @aes_load_pwd_file(i32 0)
  %91 = load i8*, i8** @username, align 8
  %92 = call i64 @change_user(i8* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i8*, i8** @username, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** @username, align 8
  br label %100

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i8* [ %98, %97 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %99 ]
  %102 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = call i32 @exit(i32 1) #3
  unreachable

104:                                              ; preds = %89
  %105 = load i8, i8* %7, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* @optind, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @copyexec_results_make_empty_binlog(i8* %112)
  %114 = call i32 @exit(i32 0) #3
  unreachable

115:                                              ; preds = %104
  %116 = call i32 (...) @init_dyn_data()
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* @optind, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @binlogname, align 8
  %123 = call i64 @engine_preload_filelist(i8* %121, i8* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %115
  %126 = load i8*, i8** @binlogname, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i8*, i8** @binlogname, align 8
  br label %136

130:                                              ; preds = %125
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* @optind, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  br label %136

136:                                              ; preds = %130, %128
  %137 = phi i8* [ %129, %128 ], [ %135, %130 ]
  %138 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %115
  %141 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %143 = load i64, i64* @jump_log_pos, align 8
  %144 = call %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__* %142, i64 %143)
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** @Binlog, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %146 = icmp ne %struct.TYPE_7__* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @engine_replica, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* @jump_log_pos, align 8
  %152 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %150, i64 %151)
  %153 = call i32 @exit(i32 1) #3
  unreachable

154:                                              ; preds = %140
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** @binlogname, align 8
  %160 = load i8*, i8** @binlogname, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Binlog, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* @jump_log_pos, align 8
  %167 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0), i8* %160, i32 %165, i64 %166)
  %168 = call i32 (...) @mytime()
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* @binlog_load_time, align 4
  %170 = call i32 (...) @clear_log()
  %171 = load i64, i64* @jump_log_pos, align 8
  %172 = load i32, i32* @jump_log_ts, align 4
  %173 = load i32, i32* @jump_log_crc32, align 4
  %174 = call i32 @init_log_data(i64 %171, i32 %172, i32 %173)
  %175 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %176 = call i32 @replay_log(i32 0, i32 1)
  store i32 %176, i32* %6, align 4
  %177 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %154
  %181 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %182 = call i32 @exit(i32 1) #3
  unreachable

183:                                              ; preds = %154
  %184 = call i32 (...) @mytime()
  %185 = load i32, i32* @binlog_load_time, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* @binlog_load_time, align 4
  %187 = load i64, i64* @log_readto_pos, align 8
  %188 = load i64, i64* @jump_log_pos, align 8
  %189 = sub nsw i64 %187, %188
  store i64 %189, i64* @binlog_loaded_size, align 8
  %190 = load i32, i32* @binlog_disabled, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %183
  %193 = call i32 (...) @clear_read_log()
  br label %194

194:                                              ; preds = %192, %183
  %195 = call i32 (...) @clear_write_log()
  %196 = call i32 @time(i32 0)
  store i32 %196, i32* @start_time, align 4
  %197 = call i32 (...) @start_server()
  ret i32 0
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aes_load_pwd_file(i32) #1

declare dso_local i64 @change_user(i8*) #1

declare dso_local i32 @copyexec_results_make_empty_binlog(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @engine_preload_filelist(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @open_binlog(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @mytime(...) #1

declare dso_local i32 @clear_log(...) #1

declare dso_local i32 @init_log_data(i64, i32, i32) #1

declare dso_local i32 @replay_log(i32, i32) #1

declare dso_local i32 @clear_read_log(...) #1

declare dso_local i32 @clear_write_log(...) #1

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
