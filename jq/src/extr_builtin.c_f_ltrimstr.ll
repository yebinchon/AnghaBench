; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_ltrimstr.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_ltrimstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_ltrimstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_ltrimstr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @jv_copy(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @jv_copy(i32 %13)
  %15 = call i32 @f_startswith(i32* %10, i32 %12, i32 %14)
  %16 = call i64 @jv_get_kind(i32 %15)
  %17 = load i64, i64* @JV_KIND_TRUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @jv_free(i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @jv_string_length_bytes(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @jv_string_value(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @jv_copy(i32 %31)
  %33 = call i32 @jv_string_length_bytes(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i32 @jv_string_sized(i64 %30, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @jv_free(i32 %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %23, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @f_startswith(i32*, i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_string_sized(i64, i32) #1

declare dso_local i64 @jv_string_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
