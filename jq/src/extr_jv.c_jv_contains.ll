; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_contains.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_OBJECT = common dso_local global i32 0, align 4
@JV_KIND_ARRAY = common dso_local global i32 0, align 4
@JV_KIND_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_contains(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @jv_get_kind(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @jv_get_kind(i32 %9)
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @JV_KIND_OBJECT, align 4
  %16 = call i64 @JVP_HAS_KIND(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @jvp_object_contains(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @JV_KIND_ARRAY, align 4
  %25 = call i64 @JVP_HAS_KIND(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @jvp_array_contains(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %63

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @JV_KIND_STRING, align 4
  %34 = call i64 @JVP_HAS_KIND(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @jv_copy(i32 %37)
  %39 = call i32 @jv_string_length_bytes(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @jv_string_value(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @jv_copy(i32 %45)
  %47 = call i32 @jv_string_length_bytes(i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @jv_string_value(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @_jq_memmem(i32 %44, i32 %47, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %42
  br label %62

56:                                               ; preds = %31
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @jv_copy(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @jv_copy(i32 %59)
  %61 = call i32 @jv_equal(i32 %58, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %55
  br label %63

63:                                               ; preds = %62, %27
  br label %64

64:                                               ; preds = %63, %18
  br label %65

65:                                               ; preds = %64, %12
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @jv_free(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @jv_free(i32 %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i64 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jvp_object_contains(i32, i32) #1

declare dso_local i32 @jvp_array_contains(i32, i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @_jq_memmem(i32, i32, i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_equal(i32, i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
