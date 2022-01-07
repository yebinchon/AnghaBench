; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1679 x i8] c"check-binlog [-u<username>] [-c<max-conn>] [-v] [-b<backups_dir>] [-a<binlog-name>] <binlog>\0A\09Checking binlog tool.\0A\09[-v]\09\09output statistical and debug information into stderr\0A\09[-s<N>]\09limit disk reading speed to N bytes in second, e.g. 32m, N > 1g means no limit\0A\09[-q]\09quick test (only slice sizes and rotation consistency check)\0A\09[-H<heap-size>]\09defines maximum heap size (default: %lld bytes).\0A\09[-I<buffsize>]\09set IO buffer size (default buffsize is 16Mb)\0A\09\09for bin.bz files buffsize is equal to KFS_BINLOG_ZIP_CHUNK_SIZE (%d bytes)\0A\09[-i]\09disable check that snapshot is readable in the case removed first binlog file, \0A\09\09NOTICE: snapshot heuristics doesn't work in the case of news-engine, ...\0A\09[-k]\09\09keep going on fatal errors\0A\09[-E<N>]\09show only first <N> errors for each binlog\0A\09[-S]\09backups have same names as original binlogs (no suffix with dot and 10 digits), check storage-engine volumes\0A\09[-A]\09allow first available slice starts from LEV_ROTATE_FROM (Example: adstat).\0A\09[-b<backups_dir>]\09set backups dir\0A\09[-B<backups_suboptions>]\09set backups suboptions\0ABackup suboptions:\0A\09'p'\09partial check, warning in the case no correct backup\0A\09'P'\09partial check, error in the case no correct backup\0A\09'f'\09full check, warning in the case no correct backup\0A\09'F'\09full check, error in the case no correct backup\0A\09'd'\09warn if there is incorrect backup and at least one correct backup\0A\09'r'\09warn if there is multiple correct backups\0A\09'm'\09warn shorter backup for not last binlog file\0A\09'M'\09error shorter backup for not last binlog file\0A\09'l'\09warn shorter backup for last binlog file\0A\09'L'\09error shorter backup for last binlog file\0ASpecifying backups suboptions as 'all' is equivalent to '%s'.\0A\00", align 1
@heap_memory = common dso_local global i32 0, align 4
@KFS_BINLOG_ZIP_CHUNK_SIZE = common dso_local global i8* null, align 8
@BACKUP_ALL_SUBOPTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"\0A$./check-binlog -m <src1.bin> <src2.bin>\0A\09Only rotate logevents consistency check.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i8*, i8** @FullVersionStr, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = load i32, i32* @heap_memory, align 4
  %4 = load i8*, i8** @KFS_BINLOG_ZIP_CHUNK_SIZE, align 8
  %5 = load i32, i32* @BACKUP_ALL_SUBOPTIONS, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1679 x i8], [1679 x i8]* @.str.1, i64 0, i64 0), i32 %3, i8* %4, i32 %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @exit(i32 2) #3
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
