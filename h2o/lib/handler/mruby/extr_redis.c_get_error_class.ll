; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_get_error_class.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_get_error_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@H2O_MRUBY_H2O_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Redis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RClass* (%struct.TYPE_5__*, i8*)* @get_error_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RClass* @get_error_class(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @H2O_MRUBY_H2O_MODULE, align 4
  %16 = call i32 @mrb_ary_entry(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @mrb_obj_ptr(i32 %18)
  %20 = inttoptr i64 %19 to %struct.RClass*
  %21 = call %struct.RClass* @mrb_class_get_under(%struct.TYPE_5__* %17, %struct.RClass* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %21, %struct.RClass** %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load %struct.RClass*, %struct.RClass** %7, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call %struct.RClass* @mrb_class_get_under(%struct.TYPE_5__* %22, %struct.RClass* %23, i8* %24)
  store %struct.RClass* %25, %struct.RClass** %8, align 8
  %26 = load %struct.RClass*, %struct.RClass** %8, align 8
  ret %struct.RClass* %26
}

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local %struct.RClass* @mrb_class_get_under(%struct.TYPE_5__*, %struct.RClass*, i8*) #1

declare dso_local i64 @mrb_obj_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
