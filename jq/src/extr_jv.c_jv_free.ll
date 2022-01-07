; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_free.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jv_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @JVP_KIND(i32 %3)
  switch i32 %4, label %20 [
    i32 132, label %5
    i32 128, label %8
    i32 129, label %11
    i32 131, label %14
    i32 130, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @jvp_array_free(i32 %6)
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @jvp_string_free(i32 %9)
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @jvp_object_free(i32 %12)
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @jvp_invalid_free(i32 %15)
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @jvp_number_free(i32 %18)
  br label %20

20:                                               ; preds = %1, %17, %14, %11, %8, %5
  ret void
}

declare dso_local i32 @JVP_KIND(i32) #1

declare dso_local i32 @jvp_array_free(i32) #1

declare dso_local i32 @jvp_string_free(i32) #1

declare dso_local i32 @jvp_object_free(i32) #1

declare dso_local i32 @jvp_invalid_free(i32) #1

declare dso_local i32 @jvp_number_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
