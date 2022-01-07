; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_find_last_synchronization_point.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_find_last_synchronization_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_synchronization_point_id = common dso_local global i32 0, align 4
@last_synchronization_point_pos = common dso_local global i64 0, align 8
@last_decryption_failed_transaction_pos = common dso_local global i64 0, align 8
@replay_synchronization_point = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"find_last_synchronization_point: copyexec_aux_replay_binlog returns %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Couldn't decrypt transaction at %lld pos, last synchronization point pos is %lld.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_last_synchronization_point() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @last_synchronization_point_id, align 4
  store i64 0, i64* @last_synchronization_point_pos, align 8
  store i64 0, i64* @last_decryption_failed_transaction_pos, align 8
  %2 = load i32, i32* @replay_synchronization_point, align 4
  %3 = call i32 @copyexec_aux_replay_binlog(i32 0, i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i64, i64* @last_decryption_failed_transaction_pos, align 8
  %11 = load i64, i64* @last_synchronization_point_pos, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* @last_decryption_failed_transaction_pos, align 8
  %15 = load i64, i64* @last_synchronization_point_pos, align 8
  %16 = call i32 @kprintf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %14, i64 %15)
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %9
  %19 = load i32, i32* @last_synchronization_point_id, align 4
  ret i32 %19
}

declare dso_local i32 @copyexec_aux_replay_binlog(i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

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
