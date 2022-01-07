; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__error_message_cuts_off.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_strtol.c_test_core_strtol__error_message_cuts_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"2147483657foobar\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2147483657\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_strtol__error_message_cuts_off() #0 {
  %1 = call i32 @assert_l32_fails(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 10)
  %2 = call %struct.TYPE_2__* (...) @git_error_last()
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32* @strstr(i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = call %struct.TYPE_2__* (...) @git_error_last()
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @strstr(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  ret void
}

declare dso_local i32 @assert_l32_fails(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
