; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.coverage_entry* }
%struct.coverage_entry = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@coverage = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [59 x i8] c"FAIL: Register test coverage missing for %08x %08x (%05x)\0A\00", align 1
@coverage_fail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"FAIL: Test coverage entry missing for %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @coverage_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coverage_end() #0 {
  %1 = alloca %struct.coverage_entry*, align 8
  %2 = alloca %struct.coverage_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.coverage_entry*, %struct.coverage_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 1), align 8
  store %struct.coverage_entry* %5, %struct.coverage_entry** %1, align 8
  %6 = load %struct.coverage_entry*, %struct.coverage_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 1), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 0), align 8
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %6, i64 %8
  store %struct.coverage_entry* %9, %struct.coverage_entry** %2, align 8
  br label %10

10:                                               ; preds = %48, %0
  %11 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %12 = load %struct.coverage_entry*, %struct.coverage_entry** %2, align 8
  %13 = icmp ult %struct.coverage_entry* %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %16 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %22 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %28 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %35 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %36)
  store i32 1, i32* @coverage_fail, align 4
  br label %38

38:                                               ; preds = %31, %14
  %39 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %40 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  store i32 1, i32* @coverage_fail, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.coverage_entry*, %struct.coverage_entry** %1, align 8
  %50 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %49, i32 1
  store %struct.coverage_entry* %50, %struct.coverage_entry** %1, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.coverage_entry*, %struct.coverage_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 1), align 8
  %53 = call i32 @kfree(%struct.coverage_entry* %52)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @kfree(%struct.coverage_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
