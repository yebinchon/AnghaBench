; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_test_config_memory__foreach_sees_multivar.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_memory.c_test_config_memory__foreach_sees_multivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expected_entry = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"general.foo\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"[general]\0Afoo=bar1\0Afoo=bar2\0A\00", align 1
@backend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_memory__foreach_sees_multivar() #0 {
  %1 = alloca [3 x %struct.expected_entry], align 16
  %2 = bitcast [3 x %struct.expected_entry]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 72, i1 false)
  %3 = bitcast i8* %2 to [3 x %struct.expected_entry]*
  %4 = getelementptr inbounds [3 x %struct.expected_entry], [3 x %struct.expected_entry]* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %5, align 16
  %6 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8
  %7 = getelementptr inbounds [3 x %struct.expected_entry], [3 x %struct.expected_entry]* %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.expected_entry, %struct.expected_entry* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 8
  %10 = call i32 @setup_backend(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @backend, align 4
  %12 = getelementptr inbounds [3 x %struct.expected_entry], [3 x %struct.expected_entry]* %1, i64 0, i64 0
  %13 = call i32 @assert_config_contains_all(i32 %11, %struct.expected_entry* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @setup_backend(i8*) #2

declare dso_local i32 @assert_config_contains_all(i32, %struct.expected_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
