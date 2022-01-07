; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-engine.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"Performs transactions from auxiliary binlog and writes results to the binlog.\0A\00", align 1
@.str.2 = private unnamed_addr constant [981 x i8] c"./copyexec-engine -I<instance-mask> -T<tmp-dir> -P<public-key-prefix> [-R<host:port>] [-v] [-p<port>] [-b<backlog>] [-c<max-conn>] [-l<log-name>] -a<aux-binlog-name> <binlog>\0A\09-I<instance-mask>\09mandatory option, instance mask could be hex (prefix:'0x'), oct (prefix:'0') or dec\0A\09-P<public-key-prefix>\09(mandatory option), full public key name is concatenation of <public-key-prefix> and key_id found in aux binlog.\0A\09-T<tmp-dir>\09temporary transaction files will be created in subdirs of given directory\0A\09-a<aux-binlog-name>\09should be full binlog filename (mandatory option)\0A\09-E<volume-id>\09creates new empty binlog, volume-id is a string.\0A\09\09\09For creating new binlog also need specify public-key-prefix and aux-binlog-name (for finding and writing sync point to the main binlog).\0A\09-p<port>\09if port given when copyexec-engine will reply to the stats memcache command\0A\09-R<host:port>\09if given copyexec-engine will send results to the copyexec-results-engine\0A\09-v\09increase verbosity level\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @FullVersionStr, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([981 x i8], [981 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
