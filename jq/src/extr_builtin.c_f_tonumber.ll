; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_tonumber.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_tonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"cannot be parsed as a number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_tonumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_tonumber(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @jv_get_kind(i32 %7)
  %9 = load i64, i64* @JV_KIND_NUMBER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @jv_get_kind(i32 %14)
  %16 = load i64, i64* @JV_KIND_STRING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @jv_string_value(i32 %19)
  %21 = call i32 @jv_parse(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @jv_is_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @jv_get_kind(i32 %26)
  %28 = load i64, i64* @JV_KIND_NUMBER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @jv_free(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @type_error(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %30, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_parse(i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @type_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
