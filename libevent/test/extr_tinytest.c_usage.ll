; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_tinytest.c_usage.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_tinytest.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testgroup_t = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"Options are: [--verbose|--quiet|--terse] [--no-fork] [--timeout <sec>]\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"  Specify tests by name, or using a prefix ending with '..'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"  To skip a test, prefix its name with a colon.\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"  To enable a disabled test, prefix its name with a plus.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"  Use --list-tests for a list of tests.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Known tests are:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.testgroup_t*, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(%struct.testgroup_t* %0, i32 %1) #0 {
  %3 = alloca %struct.testgroup_t*, align 8
  %4 = alloca i32, align 4
  store %struct.testgroup_t* %0, %struct.testgroup_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @puts(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @puts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @puts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %14 = load %struct.testgroup_t*, %struct.testgroup_t** %3, align 8
  %15 = call i32 @tinytest_set_flag_(%struct.testgroup_t* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1, i32 0)
  br label %16

16:                                               ; preds = %12, %2
  %17 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @tinytest_set_flag_(%struct.testgroup_t*, i8*, i32, i32) #1

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
