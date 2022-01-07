; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spuctx_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c_spuctx_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.spu_context = type { %struct.TYPE_4__, %struct.spu*, i32 }
%struct.TYPE_4__ = type { i64, i32, i64* }
%struct.spu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, i32, i64 }

@SPU_UTIL_USER = common dso_local global i32 0, align 4
@cbe_spu_info = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spuctx_switch_state(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.spu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i64 (...) @ktime_get_ns()
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %13 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %11, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 2
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %29 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %28, i32 0, i32 1
  %30 = load %struct.spu*, %struct.spu** %29, align 8
  store %struct.spu* %30, %struct.spu** %7, align 8
  %31 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %32 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %41 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.spu*, %struct.spu** %7, align 8
  %44 = icmp ne %struct.spu* %43, null
  br i1 %44, label %45, label %99

45:                                               ; preds = %2
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %48 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %46
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.spu*, %struct.spu** %7, align 8
  %58 = getelementptr inbounds %struct.spu, %struct.spu* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %56
  store i64 %65, i64* %63, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.spu*, %struct.spu** %7, align 8
  %68 = getelementptr inbounds %struct.spu, %struct.spu* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.spu*, %struct.spu** %7, align 8
  %72 = getelementptr inbounds %struct.spu, %struct.spu* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  %74 = load %struct.spu*, %struct.spu** %7, align 8
  %75 = getelementptr inbounds %struct.spu, %struct.spu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SPU_UTIL_USER, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %45
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @atomic_dec(i32* %85)
  br label %87

87:                                               ; preds = %80, %45
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SPU_UTIL_USER, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_spu_info, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @atomic_inc(i32* %96)
  br label %98

98:                                               ; preds = %91, %87
  br label %99

99:                                               ; preds = %98, %2
  ret void
}

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
