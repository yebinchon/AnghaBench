; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_module.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MODULEMETA = common dso_local global i32 0, align 4
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_module(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @MODULEMETA, align 4
  %5 = call %struct.TYPE_6__* @inst_new(i32 %4)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @block_const(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @jv_get_kind(i32 %14)
  %16 = load i64, i64* @JV_KIND_OBJECT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = call i32 (...) @jv_object()
  %20 = call i32 @jv_string(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @jv_object_set(i32 %19, i32 %20, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %18, %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @block_free(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = call i32 @inst_block(%struct.TYPE_6__* %32)
  ret i32 %33
}

declare dso_local %struct.TYPE_6__* @inst_new(i32) #1

declare dso_local i32 @block_const(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_object_set(i32, i32, i32) #1

declare dso_local i32 @jv_object(...) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @block_free(i32) #1

declare dso_local i32 @inst_block(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
