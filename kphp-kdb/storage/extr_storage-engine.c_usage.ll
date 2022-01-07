; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1263 x i8] c"usage: %s [-v] [-r] [-i] [-p<port>] [-H<http-port>] [-n<nginx-port>] [-u<username>] [-g<groupname>] [-c<max-conn>] <binlogs-dirname>]\0A\09%s\0A\09-i\09index mode (docs bodies only in binlog)\0A\09-I<volume_id>\09single volume index mode\0A\09-v\09output statistical and debug information into stderr\0A\09-r\09read-only binlog (don't log new events)\0A\09-R<filesize>\09sets max_immediately_reply_filesize, could be end by 'k', 'm', etc. (default: %d)\0A\09-M<max_metafiles_size>\09could be end by 'k', 'm', etc. (default: %d)\0A\09-Z<max_zmalloc_memory>\09could be end by 'k', 'm', etc. (default: %d)\0A\09\09zmalloc memory used only for aio_connections\0A\09-T<aio_query_timeout>\09set aio query timeout (default: %.3lf)\0A\09-F\09disable crc32 check after loading metafile\0A\09-V<required-volumes-number-at-startup>\09(default: %d)\0A\09-L<bad-image-cache-max_living-time>\09(default: %ds)\0A\09-A<max_aio_read_connection>\09limit number of aio read connection for one disk (default: 0 - no limit)\0A\09-C<choose_binlog_criterions>\09(default: '%s')\0A\09\09\09's' - minimal consecutive file failures,\0A\09\09\09'a' - minimal aio read connections for disk,\0A\09\09\09'h' - minimal amortization hour file failures,\0A\09\09\09't' - minimal total file failures)\0A\09-E<N,cs,md5_mode,prefix>\09create N empty binlogs and write config-file\0A\09\09\09\09(volume_id = cs * 1000 + log_split_min)\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@FullVersionStr = common dso_local global i8* null, align 8
@max_immediately_reply_filesize = common dso_local global i32 0, align 4
@max_metafiles_bytes = common dso_local global i32 0, align 4
@max_zmalloc_bytes = common dso_local global i32 0, align 4
@aio_query_timeout_value = common dso_local global i32 0, align 4
@required_volumes_at_startup = common dso_local global i32 0, align 4
@bad_image_cache_max_living_time = common dso_local global i8* null, align 8
@choose_binlog_options = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @progname, align 8
  %2 = load i8*, i8** @FullVersionStr, align 8
  %3 = load i32, i32* @max_immediately_reply_filesize, align 4
  %4 = load i32, i32* @max_metafiles_bytes, align 4
  %5 = load i32, i32* @max_zmalloc_bytes, align 4
  %6 = load i32, i32* @aio_query_timeout_value, align 4
  %7 = load i32, i32* @required_volumes_at_startup, align 4
  %8 = load i8*, i8** @bad_image_cache_max_living_time, align 8
  %9 = load i32, i32* @choose_binlog_options, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([1263 x i8], [1263 x i8]* @.str, i64 0, i64 0), i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9)
  %11 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
