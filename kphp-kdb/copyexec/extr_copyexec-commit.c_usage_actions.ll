; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_usage_actions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-commit.c_usage_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1650 x i8] c"Mandatory actions commands:\0A\09key <key-id>\09set private key-id for transaction encryption.\0A\09mask <mask>\09set transaction mask.\0AOther actions commands:\0A\09waiting\09set waiting flag to the transaction (transaction will wait till previously running transactions ends).\0A\09rerun\09set rerun flag (transaction will be rerun in the case of interrupted status).\0A\09important\09set important flag to the transaction.\0A\09cp <src-filename> [dst-filename]\09copy filename to temporary transaction directory, if dst-filename isn't given then it will equal to the <src-filename> basename.\0A\09\09in case <src-filename> doesn't contain any slash copyexec-commit copies file from transaction-dir,\0A\09\09otherwise copyexec-commit considers <src-filename> as absolute path\0A\09\09in the case when <src-filename> contains blanks, it is possible to enclose it into double quotes.\0A\09exec <cmd>\09execute \22/bin/sh -c cmd\22 in child process and wait till this command terminates.\0A\09exec_check <cmd>\09execute <cmd> and terminate transaction if command returns not zero exit code or was killed by signal.\0A\09exec_result <cmd>\09execute <cmd> and set transaction's result by status obtained from waitpid call\0A\09wait <transaction_id>\09wait till given transaction terminates\0A\09kill <signal> <transaction_id>\09send signal (2 or 15) to given transaction and wait till it terminates.\0A\09cancel <transaction_id>\09send signal SIGUSR2 to <transaction_id>, if no command in <transaction_id> hadn't executed, it will be cancelled.\0A\09result <int>\09set transaction's result by given <int>\0AInserting synchronization point (example: new apache server)\0A\09synchronize \22actions\22 file should contain only 3 lines with key, mask and synchronize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_actions() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1650 x i8], [1650 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
