; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_get_stat.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-file-stat/src/extr_file-stat.c_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@mrb_stat_type = common dso_local global i32 0, align 4
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"uninitialized File::Stat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stat* (i32*, i32)* @get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stat* @get_stat(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @mrb_data_get_ptr(i32* %6, i32 %7, i32* @mrb_stat_type)
  %9 = inttoptr i64 %8 to %struct.stat*
  store %struct.stat* %9, %struct.stat** %5, align 8
  %10 = load %struct.stat*, %struct.stat** %5, align 8
  %11 = icmp ne %struct.stat* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @E_TYPE_ERROR, align 4
  %15 = call i32 @mrb_raise(i32* %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.stat*, %struct.stat** %5, align 8
  ret %struct.stat* %17
}

declare dso_local i64 @mrb_data_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
