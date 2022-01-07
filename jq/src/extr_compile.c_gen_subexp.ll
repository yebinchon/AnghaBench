; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_gen_subexp.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_gen_subexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@DUP = common dso_local global i32 0, align 4
@LOADK = common dso_local global i64 0, align 8
@SUBEXP_BEGIN = common dso_local global i32 0, align 4
@SUBEXP_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @gen_subexp(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_16__, align 8
  %3 = alloca %struct.TYPE_16__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = call i64 @block_is_noop(%struct.TYPE_15__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @DUP, align 4
  %14 = call %struct.TYPE_15__* @gen_op_simple(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %15, align 8
  br label %53

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = call i64 @block_is_single(%struct.TYPE_15__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LOADK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 @block_const(%struct.TYPE_15__* %30)
  store i32 %31, i32* %4, align 4
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = call i32 @block_free(%struct.TYPE_15__* %33)
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.TYPE_15__* @gen_op_pushk_under(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %37, align 8
  br label %53

38:                                               ; preds = %21, %16
  %39 = load i32, i32* @SUBEXP_BEGIN, align 4
  %40 = call %struct.TYPE_15__* @gen_op_simple(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %41, align 8
  %42 = load i32, i32* @SUBEXP_END, align 4
  %43 = call %struct.TYPE_15__* @gen_op_simple(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = call %struct.TYPE_15__* @BLOCK(%struct.TYPE_15__* %46, %struct.TYPE_15__* %48, %struct.TYPE_15__* %50)
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %52, align 8
  br label %53

53:                                               ; preds = %38, %28, %12
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  ret %struct.TYPE_15__* %55
}

declare dso_local i64 @block_is_noop(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @gen_op_simple(i32) #1

declare dso_local i64 @block_is_single(%struct.TYPE_15__*) #1

declare dso_local i32 @block_const(%struct.TYPE_15__*) #1

declare dso_local i32 @block_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @gen_op_pushk_under(i32) #1

declare dso_local %struct.TYPE_15__* @BLOCK(%struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
