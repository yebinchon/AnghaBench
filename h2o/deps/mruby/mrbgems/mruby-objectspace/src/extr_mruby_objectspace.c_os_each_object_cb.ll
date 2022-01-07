; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_each_object_cb.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_each_object_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RBasic = type { i32, i32 }
%struct.os_each_object_data = type { i32, i32, i64 }

@MRB_EACH_OBJ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.RBasic*, i8*)* @os_each_object_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_each_object_cb(i32* %0, %struct.RBasic* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.RBasic*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.os_each_object_data*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.RBasic* %1, %struct.RBasic** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.os_each_object_data*
  store %struct.os_each_object_data* %10, %struct.os_each_object_data** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %13 = call i64 @mrb_object_dead_p(i32* %11, %struct.RBasic* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %19 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %23 [
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %17, %17
  %22 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %26 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %24
  %32 = load %struct.os_each_object_data*, %struct.os_each_object_data** %8, align 8
  %33 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %39 = call i32 @mrb_obj_value(%struct.RBasic* %38)
  %40 = load %struct.os_each_object_data*, %struct.os_each_object_data** %8, align 8
  %41 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @mrb_obj_is_kind_of(i32* %37, i32 %39, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %36, %31
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.os_each_object_data*, %struct.os_each_object_data** %8, align 8
  %50 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.RBasic*, %struct.RBasic** %6, align 8
  %53 = call i32 @mrb_obj_value(%struct.RBasic* %52)
  %54 = call i32 @mrb_yield(i32* %48, i32 %51, i32 %53)
  %55 = load %struct.os_each_object_data*, %struct.os_each_object_data** %8, align 8
  %56 = getelementptr inbounds %struct.os_each_object_data, %struct.os_each_object_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %47, %45, %29, %21, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @mrb_object_dead_p(i32*, %struct.RBasic*) #1

declare dso_local i32 @mrb_obj_is_kind_of(i32*, i32, i64) #1

declare dso_local i32 @mrb_obj_value(%struct.RBasic*) #1

declare dso_local i32 @mrb_yield(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
