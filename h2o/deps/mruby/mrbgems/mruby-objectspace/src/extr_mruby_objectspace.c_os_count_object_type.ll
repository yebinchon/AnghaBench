; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_count_object_type.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-objectspace/src/extr_mruby_objectspace.c_os_count_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RBasic = type { i64 }
%struct.os_count_struct = type { i32*, i32, i32 }

@MRB_EACH_OBJ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.RBasic*, i8*)* @os_count_object_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_count_object_type(i32* %0, %struct.RBasic* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.RBasic*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.os_count_struct*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.RBasic* %1, %struct.RBasic** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.os_count_struct*
  store %struct.os_count_struct* %9, %struct.os_count_struct** %7, align 8
  %10 = load %struct.os_count_struct*, %struct.os_count_struct** %7, align 8
  %11 = getelementptr inbounds %struct.os_count_struct, %struct.os_count_struct* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %16 = call i64 @mrb_object_dead_p(i32* %14, %struct.RBasic* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.os_count_struct*, %struct.os_count_struct** %7, align 8
  %20 = getelementptr inbounds %struct.os_count_struct, %struct.os_count_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.os_count_struct*, %struct.os_count_struct** %7, align 8
  %25 = getelementptr inbounds %struct.os_count_struct, %struct.os_count_struct* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.RBasic*, %struct.RBasic** %5, align 8
  %28 = getelementptr inbounds %struct.RBasic, %struct.RBasic* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %23, %18
  %34 = load i32, i32* @MRB_EACH_OBJ_OK, align 4
  ret i32 %34
}

declare dso_local i64 @mrb_object_dead_p(i32*, %struct.RBasic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
