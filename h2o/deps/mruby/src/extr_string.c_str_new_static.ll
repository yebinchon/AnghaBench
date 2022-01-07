; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_string.c_str_new_static.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_string.c_str_new_static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }

@MRB_INT_MAX = common dso_local global i64 0, align 8
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"string size too big\00", align 1
@MRB_STR_NOFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (i32*, i8*, i64)* @str_new_static to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_new_static(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @MRB_INT_MAX, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %14 = call i32 @mrb_raise(i32* %12, i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.RString* @mrb_obj_alloc_string(i32* %16)
  store %struct.RString* %17, %struct.RString** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.RString*, %struct.RString** %7, align 8
  %20 = getelementptr inbounds %struct.RString, %struct.RString* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i64 %18, i64* %22, align 8
  %23 = load %struct.RString*, %struct.RString** %7, align 8
  %24 = getelementptr inbounds %struct.RString, %struct.RString* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.RString*, %struct.RString** %7, align 8
  %30 = getelementptr inbounds %struct.RString, %struct.RString* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load i32, i32* @MRB_STR_NOFREE, align 4
  %34 = load %struct.RString*, %struct.RString** %7, align 8
  %35 = getelementptr inbounds %struct.RString, %struct.RString* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.RString*, %struct.RString** %7, align 8
  ret %struct.RString* %36
}

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local %struct.RString* @mrb_obj_alloc_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
