; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_implode.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_implode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i32 0, align 4
@JV_KIND_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_string_implode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @JV_KIND_ARRAY, align 4
  %10 = call i32 @JVP_HAS_KIND(i32 %8, i32 %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @jv_copy(i32 %12)
  %14 = call i32 @jv_array_length(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @jv_string_empty(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %45, %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @jv_copy(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @jv_array_get(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @JV_KIND_NUMBER, align 4
  %32 = call i32 @JVP_HAS_KIND(i32 %30, i32 %31)
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @jv_number_value(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @jv_free(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 1114111
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 65533, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @jv_string_append_codepoint(i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @jv_free(i32 %49)
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_string_empty(i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i32 @jv_number_value(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_string_append_codepoint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
