; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transport/extr_register.c_test_transport_register__custom_transport_error_doubleregister.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transport/extr_register.c_test_transport_register__custom_transport_error_doubleregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"something\00", align 1
@dummy_transport = common dso_local global i32 0, align 4
@GIT_EEXISTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_transport_register__custom_transport_error_doubleregister() #0 {
  %1 = load i32, i32* @dummy_transport, align 4
  %2 = call i32 @git_transport_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1, i32* null)
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32, i32* @dummy_transport, align 4
  %5 = call i32 @git_transport_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32* null)
  %6 = load i32, i32* @GIT_EEXISTS, align 4
  %7 = call i32 @cl_git_fail_with(i32 %5, i32 %6)
  %8 = call i32 @git_transport_unregister(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_transport_register(i8*, i32, i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_transport_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
