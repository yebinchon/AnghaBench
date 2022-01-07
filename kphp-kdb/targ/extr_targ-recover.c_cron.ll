; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_cron.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-recover.c_cron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@now = common dso_local global i64 0, align 8
@last_success = common dso_local global i64 0, align 8
@start_time = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"fatal: no response from %s:%d in 5 seconds, exiting; %d ads processed\0A\00", align 1
@hostname = common dso_local global i8* null, align 8
@port = common dso_local global i32 0, align 4
@next_ad_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cron() #0 {
  %1 = load i64, i64* @now, align 8
  %2 = load i64, i64* @last_success, align 8
  %3 = add nsw i64 %2, 5
  %4 = icmp sgt i64 %1, %3
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  %6 = load i64, i64* @now, align 8
  %7 = load i64, i64* @start_time, align 8
  %8 = add nsw i64 %7, 5
  %9 = icmp sgt i64 %6, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** @hostname, align 8
  %13 = load i32, i32* @port, align 4
  %14 = load i32, i32* @next_ad_id, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i32 %15)
  %17 = call i32 @exit(i32 2) #3
  unreachable

18:                                               ; preds = %5, %0
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

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
