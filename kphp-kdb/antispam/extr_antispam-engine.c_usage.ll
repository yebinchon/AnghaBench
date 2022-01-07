; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-engine.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@full_version_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [993 x i8] c"usage: %s [-v] [-r] [-i] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-B<max-binlog-size>] [-l<log-name>] [-d] [-W] <index-prefix>\0A\09Performs antispam patterns queries\0A\09<index-prefix>\09prefix to generate name of index files\0A\09              \09and binlog files (if there is no -a option)\0A\09-h\09display this message\0A\09-v\09output statistical and debug information into stderr\0A\09  \09(type several times to increase verbosity level)\0A\09-r\09read-only binlog (don't log new events)\0A\09-i\09enable index mode (create index snapshot instead of running)\0A\09-p<port>\09specify where to open server socket (default 30303)\0A\09-u<username>\09specify process owner\0A\09-c<max-conn>\09maximum number of connection to this engine instance\0A\09  \09(default: 1000/65536 depends on your permissions level)\0A\09-a<binlog-name>\09specify binlog to load from\0A\09-B<max-binlog-size>\09defines maximum size of each binlog file\0A\09-l<log-name>\09specify where to write stderr log\0A\09-d\09enable daemonize mode\0A\09-W\09flush binlog in main cycle\0A\00", align 1
@progname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @full_version_str, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = load i8*, i8** @progname, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([993 x i8], [993 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %5 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*) #1

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
