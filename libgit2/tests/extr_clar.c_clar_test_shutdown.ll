; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_shutdown.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar.c_clar_test_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clar_report*, %struct.clar_report*, %struct.clar_report*, i32, i64, i32, i32 }
%struct.clar_report = type { %struct.clar_report* }
%struct.clar_explicit = type { %struct.clar_explicit* }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_clar_suite_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to write the summary file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clar_test_shutdown() #0 {
  %1 = alloca %struct.clar_explicit*, align 8
  %2 = alloca %struct.clar_explicit*, align 8
  %3 = alloca %struct.clar_report*, align 8
  %4 = alloca %struct.clar_report*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 6), align 4
  %6 = load i64, i64* @_clar_suite_count, align 8
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 5), align 8
  %9 = call i32 @clar_print_shutdown(i32 %5, i32 %7, i32 %8)
  %10 = call i32 (...) @clar_unsandbox()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 4), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 3), align 8
  %15 = call i64 @clar_summary_shutdown(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @clar_print_onabort(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @exit(i32 -1) #3
  unreachable

20:                                               ; preds = %13, %0
  %21 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 2), align 8
  %22 = bitcast %struct.clar_report* %21 to %struct.clar_explicit*
  store %struct.clar_explicit* %22, %struct.clar_explicit** %1, align 8
  br label %23

23:                                               ; preds = %33, %20
  %24 = load %struct.clar_explicit*, %struct.clar_explicit** %1, align 8
  %25 = icmp ne %struct.clar_explicit* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.clar_explicit*, %struct.clar_explicit** %1, align 8
  %28 = getelementptr inbounds %struct.clar_explicit, %struct.clar_explicit* %27, i32 0, i32 0
  %29 = load %struct.clar_explicit*, %struct.clar_explicit** %28, align 8
  store %struct.clar_explicit* %29, %struct.clar_explicit** %2, align 8
  %30 = load %struct.clar_explicit*, %struct.clar_explicit** %1, align 8
  %31 = bitcast %struct.clar_explicit* %30 to %struct.clar_report*
  %32 = call i32 @free(%struct.clar_report* %31)
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.clar_explicit*, %struct.clar_explicit** %2, align 8
  store %struct.clar_explicit* %34, %struct.clar_explicit** %1, align 8
  br label %23

35:                                               ; preds = %23
  %36 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 8
  store %struct.clar_report* %36, %struct.clar_report** %3, align 8
  br label %37

37:                                               ; preds = %46, %35
  %38 = load %struct.clar_report*, %struct.clar_report** %3, align 8
  %39 = icmp ne %struct.clar_report* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.clar_report*, %struct.clar_report** %3, align 8
  %42 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %41, i32 0, i32 0
  %43 = load %struct.clar_report*, %struct.clar_report** %42, align 8
  store %struct.clar_report* %43, %struct.clar_report** %4, align 8
  %44 = load %struct.clar_report*, %struct.clar_report** %3, align 8
  %45 = call i32 @free(%struct.clar_report* %44)
  br label %46

46:                                               ; preds = %40
  %47 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  store %struct.clar_report* %47, %struct.clar_report** %3, align 8
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  %50 = call i32 @free(%struct.clar_report* %49)
  ret void
}

declare dso_local i32 @clar_print_shutdown(i32, i32, i32) #1

declare dso_local i32 @clar_unsandbox(...) #1

declare dso_local i64 @clar_summary_shutdown(i32) #1

declare dso_local i32 @clar_print_onabort(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free(%struct.clar_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
