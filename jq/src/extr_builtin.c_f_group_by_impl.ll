; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_group_by_impl.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_group_by_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"cannot be sorted, as they are not both arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_group_by_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_group_by_impl(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  %10 = load i64, i64* @JV_KIND_ARRAY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @jv_get_kind(i32 %13)
  %15 = load i64, i64* @JV_KIND_ARRAY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @jv_copy(i32 %18)
  %20 = call i64 @jv_array_length(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @jv_copy(i32 %21)
  %23 = call i64 @jv_array_length(i32 %22)
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @jv_group(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %17, %12, %3
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @type_error2(i32 %30, i32 %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i64 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_group(i32, i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
