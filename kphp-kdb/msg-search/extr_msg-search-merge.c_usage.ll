; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [767 x i8] c"usage: %s [-v] [-u<username>] [-c<cutoff-seconds>] [-a<binlog-suffix>] [-i<metaindex-suffix>] <old-huge-index-file> <new-huge-index-file>\0A\09Combines <old-huge-index-file> with corresponding binlog, obtained by appending <binlog-suffix> to <old-huge-index-file>, into <new-huge-index-file>, generating corresponding new binlog and metaindex files\0A\09-v\09output statistical and debug information into stderr\0A\09-u<username>\09assume identity of specified user (if invoked with root privileges)\0A\09-c<cutoff-seconds>\09scan old binlog until <cutoff-seconds> ago, after that point process only undeletion operations (3600)\0A\09-a<binlog-suffix>\09suffix used to obtain binlog filename from huge index filename (.bin)\0A\09-i<metaindex-suffix>\09suffix used to obtain metaindex filename (.idx)\0A\00", align 1
@progname = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 @printf(i8* getelementptr inbounds ([767 x i8], [767 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 @exit(i32 2) #3
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
