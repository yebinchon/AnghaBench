; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [833 x i8] c"./storage-append [-v] [-1] <input-binlog> <output-binlog>\0A\09%s\0A\09This tool copies file from <input-binlog> to <output-binlog> until first error.\0A\09It could repair single bit error in file body.\0A\09If this tool write something to output, output will be ended by LEV_CRC32 logevent.\0A\09Output binlog should be ended by LEV_CRC32 or contains only LEV_START logevent (36 bytes).\0A\09If output binlog not exists, it will be created.\0A\0A\09[-1]\09Keep working if file body couldn't be recovered.\0A\09[-m]\09Try to read <input-binlog> to memory and replace broken images with one-pix jpeg.\0A\09\09<input-binlog> could be concatenated readable parts of broken storage volume.\0A\09\09NOTICE:After -m fix, old index for repaired volume must be removed!\0A\09[-t]\09Export to stdout wget download commands (for testing)\0A\09[-H<http-port>]\09set storage-engine http port for [-t] mode\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @FullVersionStr, align 8
  %3 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([833 x i8], [833 x i8]* @.str, i64 0, i64 0), i8* %2)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
