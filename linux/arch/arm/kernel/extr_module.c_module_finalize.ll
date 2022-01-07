; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_module.c_module_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_module.c_module_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }
%struct.module = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c".alt.smp.init\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ARM_SEC_CORE = common dso_local global i64 0, align 8
@ARM_SEC_EXIT = common dso_local global i64 0, align 8
@ARM_SEC_HOT = common dso_local global i64 0, align 8
@ARM_SEC_INIT = common dso_local global i64 0, align 8
@ARM_SEC_MAX = common dso_local global i32 0, align 4
@ARM_SEC_UNLIKELY = common dso_local global i64 0, align 8
@SHF_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_finalize(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.module* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = call %struct.TYPE_10__* @find_mod_section(%struct.TYPE_11__* %9, %struct.TYPE_10__* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = call i32 (...) @is_smp()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.TYPE_10__* @find_mod_section(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @is_smp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
