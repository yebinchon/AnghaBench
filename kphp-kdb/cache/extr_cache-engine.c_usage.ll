; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1790 x i8] c"usage: cache-engine [-v] [-r] [-i] [-D<disable-feature-mask>] [-T<acounters_init_string>] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] <binlog> \0A\09Performs cache queries.\0A\09[-v]\09output statistical and debug information into stderr\0A\09[-r]\09read-only binlog (don't log new events)\0A\09[-T<acounters_init_string>]\09comma separated list of half-life periods in seconds.\0A\09\09Half-life period could be terminated by characters ('s','h','d','w','m').\0A\09\09Also it is possible to use reserved words: hour, day, week and month.\0A\09\09acounter_init_string example: \223600,1d,week,1m\22\0A\09[-E<cache_id,split_min,split_mod>]\09create empty binlog\0A\09[-H<heap-size>]\09defines maximum heap size\0A\09[-S<hash-slots>]\09set global uries hashtable size, <hash-slots> is a natural number (engine himself finds prime)\0A\09\09\09<hash-slots> should be around half of uries in the engine stats (default value is %d)\0A\09[-D<disable-feature-mask>]\09disable some features\0A\09[-D 1]\09disable long queries : get (top|bottom)_(access|disk|stats), delete remote|disk (memory optimization)\0A\09[-D 2]\09disable uri delete during binlog replaying (fix wrong Garbage Collector logevents)\0A\09[-D 4]\09disable get detailed_server_stat queries\0A\09[-D 8]\09disable fast get bottom_disk queries, but increase performance of get top_access for cached files.\0A\09[-D 16]\09disable access queries (memory optimization).\0A\09[-A]\09allows handling kill -64 in the case of [-D 16] option.\0A\09[-I<timestamp[,path]>]\09special indexing mode - dump to stdout \22local_url\\tglobal_url\\n\22\0A\09\09\09it is possible to set filename containing list of local servers (\22cs{$node_id}_{$server_id}\22)\0A\09[-J<timestamp,new_cache_id,map_file>]\09special indexing mode\0A\09\09in pseudo indexing mode original binlog read till given timestamp\0A\09[-K]\09special indexing mode (dump uncached uries)\0A\00", align 1
@hash_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @FullVersionStr, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = load i32, i32* @hash_size, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1790 x i8], [1790 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

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
