; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_run_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_run.c_spu_run_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.spu_context*)*, i64 (%struct.spu_context*)*, i32 (%struct.spu_context*, i64)*, i32 (%struct.spu_context*, i32)*, i32 (%struct.spu_context*, i64)* }

@SPU_RUNCNTL_RUNNABLE = common dso_local global i64 0, align 8
@SPU_UTIL_SYSTEM = common dso_local global i32 0, align 4
@SPU_CREATE_NOSCHED = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@SPU_CREATE_ISOLATE = common dso_local global i32 0, align 4
@SPU_STATUS_ISOLATED_STATE = common dso_local global i32 0, align 4
@SPU_RUNCNTL_ISOLATE = common dso_local global i64 0, align 8
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@SPU_PRIVCNTL_MODE_SINGLE_STEP = common dso_local global i64 0, align 8
@SPU_PRIVCNTL_MODE_NORMAL = common dso_local global i64 0, align 8
@SPU_UTIL_USER = common dso_local global i32 0, align 4
@SPU_SCHED_SPU_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32*)* @spu_run_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_run_init(%struct.spu_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.spu_context* %0, %struct.spu_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @SPU_RUNCNTL_RUNNABLE, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %11 = load i32, i32* @SPU_UTIL_SYSTEM, align 4
  %12 = call i32 @spuctx_switch_state(%struct.spu_context* %10, i32 %11)
  %13 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPU_STATE_SAVED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %27 = call i32 @spu_activate(%struct.spu_context* %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %146

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %36 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SPU_CREATE_ISOLATE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.spu_context*)*, i32 (%struct.spu_context*)** %45, align 8
  %47 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %48 = call i32 %46(%struct.spu_context* %47)
  %49 = load i32, i32* @SPU_STATUS_ISOLATED_STATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %41
  %53 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %54 = call i32 @spu_setup_isolated(%struct.spu_context* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %146

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %62 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64 (%struct.spu_context*)*, i64 (%struct.spu_context*)** %64, align 8
  %66 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %67 = call i64 %65(%struct.spu_context* %66)
  %68 = load i64, i64* @SPU_RUNCNTL_RUNNABLE, align 8
  %69 = load i64, i64* @SPU_RUNCNTL_ISOLATE, align 8
  %70 = or i64 %68, %69
  %71 = and i64 %67, %70
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = load i64, i64* @SPU_RUNCNTL_RUNNABLE, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %60
  br label %103

77:                                               ; preds = %34
  %78 = load i32, i32* @TIF_SINGLESTEP, align 4
  %79 = call i64 @test_thread_flag(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @SPU_PRIVCNTL_MODE_SINGLE_STEP, align 8
  store i64 %82, i64* %8, align 8
  br label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @SPU_PRIVCNTL_MODE_NORMAL, align 8
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %87 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32 (%struct.spu_context*, i64)*, i32 (%struct.spu_context*, i64)** %89, align 8
  %91 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 %90(%struct.spu_context* %91, i64 %92)
  %94 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %95 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32 (%struct.spu_context*, i32)*, i32 (%struct.spu_context*, i32)** %97, align 8
  %99 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %98(%struct.spu_context* %99, i32 %101)
  br label %103

103:                                              ; preds = %85, %76
  %104 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %105 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32 (%struct.spu_context*, i64)*, i32 (%struct.spu_context*, i64)** %107, align 8
  %109 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 %108(%struct.spu_context* %109, i64 %110)
  %112 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %113 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SPU_CREATE_NOSCHED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %120 = load i32, i32* @SPU_UTIL_USER, align 4
  %121 = call i32 @spuctx_switch_state(%struct.spu_context* %119, i32 %120)
  br label %141

122:                                              ; preds = %103
  %123 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %124 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SPU_STATE_SAVED, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %130 = call i32 @spu_activate(%struct.spu_context* %129, i32 0)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %3, align 4
  br label %146

135:                                              ; preds = %128
  br label %140

136:                                              ; preds = %122
  %137 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %138 = load i32, i32* @SPU_UTIL_USER, align 4
  %139 = call i32 @spuctx_switch_state(%struct.spu_context* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %135
  br label %141

141:                                              ; preds = %140, %118
  %142 = load i32, i32* @SPU_SCHED_SPU_RUN, align 4
  %143 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %144 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %143, i32 0, i32 2
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %141, %133, %57, %30
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @spuctx_switch_state(%struct.spu_context*, i32) #1

declare dso_local i32 @spu_activate(%struct.spu_context*, i32) #1

declare dso_local i32 @spu_setup_isolated(%struct.spu_context*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
