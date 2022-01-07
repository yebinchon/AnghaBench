; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_on_timeout.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_on_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"durations: [p50 = %fs, p95 = %fs], delays: [p50 = %fs, p95 = %fs]\0A\00", align 1
@durations = common dso_local global i32 0, align 4
@delays = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @on_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_timeout(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @durations, align 4
  %8 = call double @histogram_query(i32 %7, double 5.000000e-01)
  %9 = load i32, i32* @durations, align 4
  %10 = call double @histogram_query(i32 %9, double 0x3FEE666666666666)
  %11 = load i32, i32* @delays, align 4
  %12 = call double @histogram_query(i32 %11, double 5.000000e-01)
  %13 = load i32, i32* @delays, align 4
  %14 = call double @histogram_query(i32 %13, double 0x3FEE666666666666)
  %15 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), double %8, double %10, double %12, double %14)
  ret void
}

declare dso_local i32 @printf(i8*, double, double, double, double) #1

declare dso_local double @histogram_query(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
