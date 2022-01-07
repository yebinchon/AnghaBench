; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-fiber/src/extr_fiber.c_fiber_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.mrb_context*, %struct.mrb_context* }
%struct.mrb_context = type { i32, %struct.TYPE_15__*, i32, i32*, %struct.TYPE_14__*, %struct.mrb_context* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@MRB_FIBER_TRANSFERRED = common dso_local global i32 0, align 4
@E_FIBER_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"resuming transferred fiber\00", align 1
@MRB_FIBER_RUNNING = common dso_local global i32 0, align 4
@MRB_FIBER_RESUMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"double resume\00", align 1
@MRB_FIBER_TERMINATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"resuming dead fiber\00", align 1
@MRB_FIBER_CREATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"double resume (current)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32*, i64, i64)* @fiber_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiber_switch(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mrb_context*, align 8
  %14 = alloca %struct.mrb_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.mrb_context* @fiber_check(%struct.TYPE_16__* %19, i32 %20)
  store %struct.mrb_context* %21, %struct.mrb_context** %13, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.mrb_context*, %struct.mrb_context** %23, align 8
  store %struct.mrb_context* %24, %struct.mrb_context** %14, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %27 = call i32 @fiber_check_cfunc(%struct.TYPE_16__* %25, %struct.mrb_context* %26)
  %28 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %29 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %6
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @MRB_FIBER_TRANSFERRED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = load i32, i32* @E_FIBER_ERROR, align 4
  %40 = call i32 @mrb_raise(%struct.TYPE_16__* %38, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %33, %6
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @MRB_FIBER_RUNNING, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @MRB_FIBER_RESUMED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = load i32, i32* @E_FIBER_ERROR, align 4
  %52 = call i32 @mrb_raise(%struct.TYPE_16__* %50, i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @MRB_FIBER_TERMINATED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = load i32, i32* @E_FIBER_ERROR, align 4
  %60 = call i32 @mrb_raise(%struct.TYPE_16__* %58, i32 %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @MRB_FIBER_RESUMED, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @MRB_FIBER_TRANSFERRED, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.mrb_context*, %struct.mrb_context** %14, align 8
  %71 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.mrb_context*, %struct.mrb_context** %76, align 8
  br label %93

78:                                               ; preds = %68
  %79 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %80 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %79, i32 0, i32 5
  %81 = load %struct.mrb_context*, %struct.mrb_context** %80, align 8
  %82 = icmp ne %struct.mrb_context* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %85 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %84, i32 0, i32 5
  %86 = load %struct.mrb_context*, %struct.mrb_context** %85, align 8
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load %struct.mrb_context*, %struct.mrb_context** %89, align 8
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi %struct.mrb_context* [ %86, %83 ], [ %90, %87 ]
  br label %93

93:                                               ; preds = %91, %74
  %94 = phi %struct.mrb_context* [ %77, %74 ], [ %92, %91 ]
  %95 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %96 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %95, i32 0, i32 5
  store %struct.mrb_context* %94, %struct.mrb_context** %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %99 = call i32 @fiber_switch_context(%struct.TYPE_16__* %97, %struct.mrb_context* %98)
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @MRB_FIBER_CREATED, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %157

103:                                              ; preds = %93
  %104 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %105 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %104, i32 0, i32 1
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = load i32, i32* @E_FIBER_ERROR, align 4
  %113 = call i32 @mrb_raise(%struct.TYPE_16__* %111, i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 2
  %118 = call i32 @mrb_stack_extend(%struct.TYPE_16__* %115, i32 %117)
  %119 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %120 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32* %122, i32** %17, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32* %126, i32** %18, align 8
  br label %127

127:                                              ; preds = %131, %114
  %128 = load i32*, i32** %17, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = icmp ult i32* %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %10, align 8
  %134 = load i32, i32* %132, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %17, align 8
  store i32 %134, i32* %135, align 4
  br label %127

137:                                              ; preds = %127
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %140 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %139, i32 0, i32 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %144 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %143, i32 0, i32 1
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_13__* @MRB_PROC_ENV(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %154 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %152, i32* %156, align 4
  store i32 %152, i32* %16, align 4
  br label %162

157:                                              ; preds = %93
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @fiber_result(%struct.TYPE_16__* %158, i32* %159, i32 %160)
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %157, %137
  %163 = load i64, i64* %12, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load i32, i32* @TRUE, align 4
  %167 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %168 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %171 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i64 -1
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %177 = getelementptr inbounds %struct.mrb_context, %struct.mrb_context* %176, i32 0, i32 1
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @mrb_vm_exec(%struct.TYPE_16__* %169, i32 %175, i32 %180)
  store i32 %181, i32* %16, align 4
  %182 = load %struct.mrb_context*, %struct.mrb_context** %14, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  store %struct.mrb_context* %182, %struct.mrb_context** %184, align 8
  br label %188

185:                                              ; preds = %162
  %186 = load %struct.mrb_context*, %struct.mrb_context** %13, align 8
  %187 = call i32 @MARK_CONTEXT_MODIFY(%struct.mrb_context* %186)
  br label %188

188:                                              ; preds = %185, %165
  %189 = load i32, i32* %16, align 4
  ret i32 %189
}

declare dso_local %struct.mrb_context* @fiber_check(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fiber_check_cfunc(%struct.TYPE_16__*, %struct.mrb_context*) #1

declare dso_local i32 @mrb_raise(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @fiber_switch_context(%struct.TYPE_16__*, %struct.mrb_context*) #1

declare dso_local i32 @mrb_stack_extend(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_13__* @MRB_PROC_ENV(i32) #1

declare dso_local i32 @fiber_result(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @mrb_vm_exec(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MARK_CONTEXT_MODIFY(%struct.mrb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
