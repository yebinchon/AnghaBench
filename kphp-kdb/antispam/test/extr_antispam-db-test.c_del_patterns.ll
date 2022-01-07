; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_del_patterns.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_del_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[%6.2f] Del all patterns... [free bytes = %ld] \00", align 1
@N = common dso_local global i32 0, align 4
@_id = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"OK [free bytes = %ld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @del_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_patterns() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stderr, align 4
  %3 = call double (...) @current_time()
  %4 = call i32 (...) @dyn_free_bytes()
  %5 = call i32 (i32, i8*, double, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), double %3, i32 %4)
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @N, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32*, i32** @_id, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @antispam_del(i32 %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %6

20:                                               ; preds = %6
  %21 = call i32 @antispam_del(i32 178537843)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (...) @dyn_free_bytes()
  %24 = sitofp i32 %23 to double
  %25 = call i32 (i32, i8*, double, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), double %24)
  %26 = call i32 (...) @memory_statistic()
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, ...) #1

declare dso_local double @current_time(...) #1

declare dso_local i32 @dyn_free_bytes(...) #1

declare dso_local i32 @antispam_del(i32) #1

declare dso_local i32 @memory_statistic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
