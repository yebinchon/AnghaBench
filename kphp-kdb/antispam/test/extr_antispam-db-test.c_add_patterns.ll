; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_add_patterns.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/test/extr_antispam-db-test.c_add_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[%6.2f] Add all patterns... [free bytes = %ld] \00", align 1
@N = common dso_local global i32 0, align 4
@_id = common dso_local global i32* null, align 8
@_ip = common dso_local global i32* null, align 8
@_flag = common dso_local global i32* null, align 8
@_uahash = common dso_local global i32* null, align 8
@str = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"OK [free bytes = %ld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_patterns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = call double (...) @current_time()
  %5 = call i32 (...) @dyn_free_bytes()
  %6 = call i32 (i32, i8*, double, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), double %4, i32 %5)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %48, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @N, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %7
  %12 = load i32*, i32** @_id, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** @_ip, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @_flag, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** @_uahash, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** @str, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = bitcast %struct.TYPE_3__* %2 to { i64, i64 }*
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %42, i32 0, i32 1
  %46 = load i64, i64* %45, align 4
  %47 = call i32 @antispam_add(i64 %44, i64 %46, i32 %40, i32 %41)
  br label %48

48:                                               ; preds = %11
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %7

51:                                               ; preds = %7
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (...) @dyn_free_bytes()
  %54 = sitofp i32 %53 to double
  %55 = call i32 (i32, i8*, double, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), double %54)
  %56 = call i32 (...) @memory_statistic()
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double, ...) #1

declare dso_local double @current_time(...) #1

declare dso_local i32 @dyn_free_bytes(...) #1

declare dso_local i32 @antispam_add(i64, i64, i32, i32) #1

declare dso_local i32 @memory_statistic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
