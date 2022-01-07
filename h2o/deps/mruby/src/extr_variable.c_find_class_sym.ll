; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_find_class_sym.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_variable.c_find_class_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }
%struct.csym_arg = type { i64, %struct.RClass* }

@csym_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.RClass*, %struct.RClass*)* @find_class_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_class_sym(i32* %0, %struct.RClass* %1, %struct.RClass* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.RClass*, align 8
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.csym_arg, align 8
  store i32* %0, i32** %5, align 8
  store %struct.RClass* %1, %struct.RClass** %6, align 8
  store %struct.RClass* %2, %struct.RClass** %7, align 8
  %9 = load %struct.RClass*, %struct.RClass** %6, align 8
  %10 = icmp ne %struct.RClass* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %29

12:                                               ; preds = %3
  %13 = load %struct.RClass*, %struct.RClass** %6, align 8
  %14 = load %struct.RClass*, %struct.RClass** %7, align 8
  %15 = icmp eq %struct.RClass* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %29

17:                                               ; preds = %12
  %18 = load %struct.RClass*, %struct.RClass** %7, align 8
  %19 = getelementptr inbounds %struct.csym_arg, %struct.csym_arg* %8, i32 0, i32 1
  store %struct.RClass* %18, %struct.RClass** %19, align 8
  %20 = getelementptr inbounds %struct.csym_arg, %struct.csym_arg* %8, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.RClass*, %struct.RClass** %6, align 8
  %23 = getelementptr inbounds %struct.RClass, %struct.RClass* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @csym_i, align 4
  %26 = call i32 @iv_foreach(i32* %21, i32 %24, i32 %25, %struct.csym_arg* %8)
  %27 = getelementptr inbounds %struct.csym_arg, %struct.csym_arg* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %17, %16, %11
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i32 @iv_foreach(i32*, i32, i32, %struct.csym_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
