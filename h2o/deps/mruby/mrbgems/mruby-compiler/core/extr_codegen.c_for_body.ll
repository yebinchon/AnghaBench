; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_for_body.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-compiler/core/extr_codegen.c_for_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_26__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.loopinfo = type { i32 }

@VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unexpected scope\00", align 1
@OP_ENTER = common dso_local global i32 0, align 4
@NOVAL = common dso_local global i32 0, align 4
@LOOP_FOR = common dso_local global i32 0, align 4
@OP_RETURN = common dso_local global i32 0, align 4
@OP_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"each\00", align 1
@OP_SENDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, %struct.TYPE_28__*)* @for_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_body(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loopinfo*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %9 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %9, %struct.TYPE_29__** %5, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VAL, align 4
  %17 = call i32 @codegen(%struct.TYPE_29__* %10, i32 %15, i32 %16)
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = call %struct.TYPE_29__* @scope_new(i32 %20, %struct.TYPE_29__* %21, i32* null)
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %3, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %24 = icmp eq %struct.TYPE_29__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %27 = call i32 @raise_error(%struct.TYPE_29__* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %2
  %29 = call i32 (...) @push()
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %8, align 8
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %34 = load i32, i32* @OP_ENTER, align 4
  %35 = call i32 @genop_W(%struct.TYPE_29__* %33, i32 %34, i32 262144)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = icmp ne %struct.TYPE_28__* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %28
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = icmp ne %struct.TYPE_26__* %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  %51 = icmp ne %struct.TYPE_26__* %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  %59 = load i32, i32* @NOVAL, align 4
  %60 = call i32 @gen_assignment(%struct.TYPE_29__* %53, %struct.TYPE_28__* %58, i32 1, i32 %59)
  br label %66

61:                                               ; preds = %47, %40, %28
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %64 = load i32, i32* @VAL, align 4
  %65 = call i32 @gen_vmassignment(%struct.TYPE_29__* %62, %struct.TYPE_28__* %63, i32 1, i32 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %68 = load i32, i32* @LOOP_FOR, align 4
  %69 = call %struct.loopinfo* @loop_push(%struct.TYPE_29__* %67, i32 %68)
  store %struct.loopinfo* %69, %struct.loopinfo** %7, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = call i32 @new_label(%struct.TYPE_29__* %70)
  %72 = load %struct.loopinfo*, %struct.loopinfo** %7, align 8
  %73 = getelementptr inbounds %struct.loopinfo, %struct.loopinfo* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @VAL, align 4
  %83 = call i32 @codegen(%struct.TYPE_29__* %74, i32 %81, i32 %82)
  %84 = call i32 (...) @pop()
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %86 = load i32, i32* @OP_RETURN, align 4
  %87 = call i32 (...) @cursp()
  %88 = call i32 @gen_return(%struct.TYPE_29__* %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %90 = load i32, i32* @NOVAL, align 4
  %91 = call i32 @loop_pop(%struct.TYPE_29__* %89, i32 %90)
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %93 = call i32 @scope_finish(%struct.TYPE_29__* %92)
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_29__* %94, %struct.TYPE_29__** %3, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = load i32, i32* @OP_BLOCK, align 4
  %97 = call i32 (...) @cursp()
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  %104 = call i32 @genop_2(%struct.TYPE_29__* %95, i32 %96, i32 %97, i64 %103)
  %105 = call i32 (...) @push()
  %106 = call i32 (...) @pop()
  %107 = call i32 (...) @pop()
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mrb_intern_lit(i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i32 @new_sym(%struct.TYPE_29__* %108, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %115 = load i32, i32* @OP_SENDB, align 4
  %116 = call i32 (...) @cursp()
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @genop_3(%struct.TYPE_29__* %114, i32 %115, i32 %116, i32 %117, i32 0)
  ret void
}

declare dso_local i32 @codegen(%struct.TYPE_29__*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @scope_new(i32, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @raise_error(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @push(...) #1

declare dso_local i32 @genop_W(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @gen_assignment(%struct.TYPE_29__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @gen_vmassignment(%struct.TYPE_29__*, %struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.loopinfo* @loop_push(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @new_label(%struct.TYPE_29__*) #1

declare dso_local i32 @pop(...) #1

declare dso_local i32 @gen_return(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @cursp(...) #1

declare dso_local i32 @loop_pop(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @scope_finish(%struct.TYPE_29__*) #1

declare dso_local i32 @genop_2(%struct.TYPE_29__*, i32, i32, i64) #1

declare dso_local i32 @new_sym(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32, i8*) #1

declare dso_local i32 @genop_3(%struct.TYPE_29__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
