; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FullVersionStr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Commits transaction to the auxiliary binlog.\0A\00", align 1
@.str.2 = private unnamed_addr constant [609 x i8] c"./copyexec-commit -P<private-key-prefix> -T<transaction-dir> [-u<username>] [-v] [-l<log-name>] <binlog>\0A\09-P<private-key-prefix>\09(mandatory option), full private key name is concatenation of <private-key-prefix> and key_id found in action list file.\0A\09-T<transaction-dir>\09(mandatory option), set transaction dir, which should contain \22actions\22 file and other tmp files\0A\09-1\09compress snapshot faster\0A\09-9\09compress snapshot better (default)\0A\09-M<max-transaction-size>\0A\09-E<volume-id>\09creates new empty binlog, volume-id is a string.\0A\09-u<username>\09used only in create empty binlog mode\0A\09-v\09increase verbosity level\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @FullVersionStr, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([609 x i8], [609 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (...) @usage_actions()
  %9 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage_actions(...) #1

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
