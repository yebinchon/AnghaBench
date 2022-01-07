; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_config_load.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_config_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.lev_start = type { i32, i32, i64, i64, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.bin\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"open ('%s', O_CREAT | O_WRONLY | O_EXCL, 0660) failed. %m\0A\00", align 1
@LEV_START = common dso_local global i32 0, align 4
@DNS_SCHEMA_V1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"cannot open binlog files for %s\0A\00", align 1
@engine_replica = common dso_local global %struct.TYPE_10__* null, align 8
@Binlog = common dso_local global %struct.TYPE_9__* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"fatal: cannot find binlog for %s, log position %lld\0A\00", align 1
@binlogname = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"replay log events started\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"replay log events finished\0A\00", align 1
@log_readto_pos = common dso_local global i64 0, align 8
@dns_convert_config_to_binlog = common dso_local global i32 0, align 4
@include_binlog_name = common dso_local global i8* null, align 8
@zones = common dso_local global i32 0, align 4
@config_zones = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"ERROR: Config contains $BINLOG macro. This feature is forbidden in writing binlog mode.\0A\00", align 1
@binlog_allow_query_networks = common dso_local global i32 0, align 4
@binlog_allow_query_networks6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [103 x i8] c"Ignore '$BINLOG %s' macro since there isn't any '$BINLOG_ALLOW_QUERY <network addr>' macro in config.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_config_load(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_start*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %111

15:                                               ; preds = %3
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @O_CREAT, align 4
  %28 = load i32, i32* @O_WRONLY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @O_EXCL, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @open(i8* %19, i32 %31, i32 432)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %37 = call i32 @exit(i32 1) #4
  unreachable

38:                                               ; preds = %15
  %39 = call %struct.lev_start* @alloca(i32 24)
  store %struct.lev_start* %39, %struct.lev_start** %11, align 8
  %40 = load i32, i32* @LEV_START, align 4
  %41 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %42 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @DNS_SCHEMA_V1, align 4
  %44 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %45 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %47 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %49 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %51 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %53 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.lev_start*, %struct.lev_start** %11, align 8
  %56 = call i32 @write(i32 %54, %struct.lev_start* %55, i32 24)
  %57 = icmp eq i32 %56, 24
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @fsync(i32 %60)
  %62 = icmp sge i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @close(i32 %65)
  %67 = icmp sge i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @engine_preload_filelist(i8* %70, i32* null)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %38
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = call i32 @exit(i32 1) #4
  unreachable

77:                                               ; preds = %38
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @engine_replica, align 8
  %79 = call %struct.TYPE_9__* @open_binlog(%struct.TYPE_10__* %78, i32 0)
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** @Binlog, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Binlog, align 8
  %81 = icmp ne %struct.TYPE_9__* %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @engine_replica, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 0)
  %87 = call i32 @exit(i32 1) #4
  unreachable

88:                                               ; preds = %77
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Binlog, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** @binlogname, align 8
  %94 = call i32 (...) @clear_log()
  %95 = call i32 @init_log_data(i32 0, i32 0, i32 0)
  %96 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i64 @replay_log(i32 0, i32 1)
  %98 = icmp sge i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %102 = call i32 (...) @clear_read_log()
  %103 = call i32 (...) @clear_write_log()
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Binlog, align 8
  %105 = call i64 @append_to_binlog(%struct.TYPE_9__* %104)
  %106 = load i64, i64* @log_readto_pos, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  store i32 1, i32* @dns_convert_config_to_binlog, align 4
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  br label %111

111:                                              ; preds = %88, %3
  store i8* null, i8** @include_binlog_name, align 8
  %112 = call i32 (...) @dns_record_hash_init()
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @config_load(i8* %113, i32 %114, i32 0)
  store i32 %115, i32* %12, align 4
  %116 = call i32 (...) @dns_record_hash_free()
  %117 = call i32 @expand_name(i32 0)
  %118 = load i32, i32* @zones, align 4
  store i32 %118, i32* @config_zones, align 4
  %119 = load i8*, i8** %7, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %111
  %122 = load i8*, i8** @include_binlog_name, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %145

126:                                              ; preds = %121
  %127 = call i32 (...) @flush_binlog_last()
  %128 = call i32 @sync_binlog(i32 2)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Binlog, align 8
  %130 = call i32 @close_binlog(%struct.TYPE_9__* %129, i32 1)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @Binlog, align 8
  store i32* null, i32** @binlogname, align 8
  br label %131

131:                                              ; preds = %126, %111
  %132 = load i8*, i8** @include_binlog_name, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* @binlog_allow_query_networks, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @binlog_allow_query_networks6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** @include_binlog_name, align 8
  %142 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  store i8* null, i8** @include_binlog_name, align 8
  br label %143

143:                                              ; preds = %140, %137, %134, %131
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %124
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local %struct.lev_start* @alloca(i32) #2

declare dso_local i32 @write(i32, %struct.lev_start*, i32) #2

declare dso_local i64 @fsync(i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i64 @engine_preload_filelist(i8*, i32*) #2

declare dso_local %struct.TYPE_9__* @open_binlog(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @clear_log(...) #2

declare dso_local i32 @init_log_data(i32, i32, i32) #2

declare dso_local i32 @vkprintf(i32, i8*) #2

declare dso_local i64 @replay_log(i32, i32) #2

declare dso_local i32 @clear_read_log(...) #2

declare dso_local i32 @clear_write_log(...) #2

declare dso_local i64 @append_to_binlog(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @dns_record_hash_init(...) #2

declare dso_local i32 @config_load(i8*, i32, i32) #2

declare dso_local i32 @dns_record_hash_free(...) #2

declare dso_local i32 @expand_name(i32) #2

declare dso_local i32 @flush_binlog_last(...) #2

declare dso_local i32 @sync_binlog(i32) #2

declare dso_local i32 @close_binlog(%struct.TYPE_9__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
