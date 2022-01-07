; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_readin_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_readin_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i32 0, align 4
@rBuff = common dso_local global i64 0, align 8
@rBuff_len = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Buffer size %d seems to be too small. Skipping read.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @readin_long() #0 {
  %1 = load i32, i32* @rptr, align 4
  %2 = add nsw i32 %1, 8
  store i32 %2, i32* @rptr, align 4
  %3 = load i32, i32* @rptr, align 4
  %4 = sext i32 %3 to i64
  %5 = load i64, i64* @rBuff, align 8
  %6 = sub nsw i64 %4, %5
  %7 = load i64, i64* @rBuff_len, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = load i64, i64* @rBuff_len, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %14)
  br label %16

16:                                               ; preds = %12, %9
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @rptr, align 4
  %19 = sub nsw i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21, align 8
  ret i64 %22
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
