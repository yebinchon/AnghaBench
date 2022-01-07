; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_decay.c_do_decay.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_decay.c_do_decay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"arena.0.decay\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected mallctlbymib() failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_decay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i64], align 16
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 3, i64* %4, align 8
  %5 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %6 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %5, i64* %4)
  %7 = call i32 @assert_d_eq(i32 %6, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @mallctlbymib(i64* %11, i64 %12, i32* null, i32* null, i32* null, i32 0)
  %14 = call i32 @assert_d_eq(i32 %13, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
