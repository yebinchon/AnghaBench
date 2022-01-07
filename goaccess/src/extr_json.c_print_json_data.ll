; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_data.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_print_json_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.GPanel_ = type { i32 }

@conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32, %struct.GPanel_*)* @print_json_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_json_data(i32* %0, %struct.TYPE_6__* %1, i32 %2, %struct.GPanel_* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.GPanel_*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.GPanel_* %3, %struct.GPanel_** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @conf, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @module_to_id(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @popen_obj_attr(i32* %14, i32 %18, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @print_meta_data(i32* %21, %struct.TYPE_6__* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.GPanel_*, %struct.GPanel_** %8, align 8
  %30 = call i32 @print_data_metrics(i32* %25, %struct.TYPE_6__* %26, i32 %27, i32 %28, %struct.GPanel_* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @pclose_obj(i32* %31, i32 %32, i32 1)
  ret void
}

declare dso_local i32 @popen_obj_attr(i32*, i32, i32) #1

declare dso_local i32 @module_to_id(i32) #1

declare dso_local i32 @print_meta_data(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_data_metrics(i32*, %struct.TYPE_6__*, i32, i32, %struct.GPanel_*) #1

declare dso_local i32 @pclose_obj(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
