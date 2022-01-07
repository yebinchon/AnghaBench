; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_rtrimstr.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_rtrimstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_rtrimstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_rtrimstr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @jv_copy(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @jv_copy(i32 %12)
  %14 = call i32 @f_endswith(i32* %9, i32 %11, i32 %13)
  %15 = call i64 @jv_get_kind(i32 %14)
  %16 = load i64, i64* @JV_KIND_TRUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @jv_string_value(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @jv_copy(i32 %21)
  %23 = call i64 @jv_string_length_bytes(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @jv_string_length_bytes(i32 %24)
  %26 = sub nsw i64 %23, %25
  %27 = call i32 @jv_string_sized(i32 %20, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @jv_free(i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @jv_free(i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @f_endswith(i32*, i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_string_sized(i32, i64) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i64 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
