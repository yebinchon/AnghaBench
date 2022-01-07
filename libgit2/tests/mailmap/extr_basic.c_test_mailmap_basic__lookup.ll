; ModuleID = '/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/mailmap/extr_basic.c_test_mailmap_basic__lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@mailmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Typoed the name once\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"foo@baz.com\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Foo bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mailmap_basic__lookup() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @mailmap, align 4
  %3 = call %struct.TYPE_4__* @git_mailmap_entry_lookup(i32 %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = call i32 @cl_assert(%struct.TYPE_4__* %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cl_assert_equal_s(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_4__* @git_mailmap_entry_lookup(i32, i8*, i8*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
