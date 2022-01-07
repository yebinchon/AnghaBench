; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_redirect.c_test_network_redirect__redirect_ssl.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_redirect.c_test_network_redirect__redirect_ssl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@conndata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"https://example.com/foo/bar/baz\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bar/baz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"443\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/foo/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_redirect__redirect_ssl() #0 {
  %1 = call i32 @git_net_url_parse(%struct.TYPE_4__* @conndata, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @cl_git_pass(i32 %1)
  %3 = call i32 @gitno_connection_data_handle_redirect(%struct.TYPE_4__* @conndata, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 5), align 4
  %6 = call i32 @cl_assert_equal_s(i32 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 4), align 4
  %8 = call i32 @cl_assert_equal_s(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 3), align 4
  %10 = call i32 @cl_assert_equal_s(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 2), align 4
  %12 = call i32 @cl_assert_equal_s(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 1), align 4
  %14 = call i32 @cl_assert_equal_p(i32 %13, i32* null)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @conndata, i32 0, i32 0), align 4
  %16 = call i32 @cl_assert_equal_p(i32 %15, i32* null)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_net_url_parse(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @gitno_connection_data_handle_redirect(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_p(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
