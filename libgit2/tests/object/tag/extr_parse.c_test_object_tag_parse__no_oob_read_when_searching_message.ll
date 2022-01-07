; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_parse.c_test_object_tag_parse__no_oob_read_when_searching_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_parse.c_test_object_tag_parse__no_oob_read_when_searching_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"object a8d447f68076d1520f69649bb52629941be7031f\0Atype tag\0Atag \0Atagger <>\0A \0A\0AMessage\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\0A\0AMessage\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"tag contains no message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_parse__no_oob_read_when_searching_message() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %6 = sub nsw i64 %4, %5
  %7 = call i32 @assert_tag_fails(i8* %2, i64 %6)
  %8 = call %struct.TYPE_2__* (...) @git_error_last()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strstr(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_assert(i32 %11)
  ret void
}

declare dso_local i32 @assert_tag_fails(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @git_error_last(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
