; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_allocate_holder_by_module.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_allocate_holder_by_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"raw data is NULL for module: %d.\0A\00", align 1
@holder = common dso_local global i64 0, align 8
@module_sort = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @allocate_holder_by_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_holder_by_module(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32* @parse_raw_data(i64 %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @LOG_DEBUG(i8* %10)
  br label %23

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* @holder, align 8
  %15 = load i64, i64* %2, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* %2, align 8
  %18 = load i32*, i32** @module_sort, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @load_holder_data(i32* %13, i64 %16, i64 %17, i32 %21)
  br label %23

23:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32* @parse_raw_data(i64) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @load_holder_data(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
