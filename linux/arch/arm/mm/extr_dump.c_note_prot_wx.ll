; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_note_prot_wx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_note_prot_wx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pg_state = type { i32, i64, i64, i64, i32 }

@pg_level = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"arm/mm: Found insecure W+X mapping at address %pS\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i64)* @note_prot_wx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_prot_wx(%struct.pg_state* %0, i64 %1) #0 {
  %3 = alloca %struct.pg_state*, align 8
  %4 = alloca i64, align 8
  store %struct.pg_state* %0, %struct.pg_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %6 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %12 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pg_level, align 8
  %15 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %16 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %13, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pg_level, align 8
  %25 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %26 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %23, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %10
  br label %77

35:                                               ; preds = %10
  %36 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %37 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pg_level, align 8
  %40 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %41 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %38, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pg_level, align 8
  %50 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %51 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %48, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %35
  br label %77

60:                                               ; preds = %35
  %61 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %62 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %68 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = udiv i64 %70, %71
  %73 = load %struct.pg_state*, %struct.pg_state** %3, align 8
  %74 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %60, %59, %34, %9
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
