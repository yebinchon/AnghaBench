; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_run_diff_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_run_diff_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"run_diff_index must be passed exactly one tree\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"c/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"i/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"w/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_diff_index(%struct.rev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_array_entry*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %7 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = call i32 (...) @trace_performance_enter()
  %15 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.object_array_entry*, %struct.object_array_entry** %17, align 8
  store %struct.object_array_entry* %18, %struct.object_array_entry** %5, align 8
  %19 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %20 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %21 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.object_array_entry*, %struct.object_array_entry** %5, align 8
  %25 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @diff_cache(%struct.rev_info* %19, i32* %23, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %13
  %31 = call i32 @exit(i32 128) #3
  unreachable

32:                                               ; preds = %13
  %33 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %34 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 @diff_set_mnemonic_prefix(i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 (...) @diffcore_fix_diff_index()
  %41 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %42 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %41, i32 0, i32 0
  %43 = call i32 @diffcore_std(i32* %42)
  %44 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %44, i32 0, i32 0
  %46 = call i32 @diff_flush(i32* %45)
  %47 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i64 @diff_cache(%struct.rev_info*, i32*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @diff_set_mnemonic_prefix(i32*, i8*, i8*) #1

declare dso_local i32 @diffcore_fix_diff_index(...) #1

declare dso_local i32 @diffcore_std(i32*) #1

declare dso_local i32 @diff_flush(i32*) #1

declare dso_local i32 @trace_performance_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
