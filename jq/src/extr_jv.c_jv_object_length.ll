; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_object_length.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_object_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_object_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @JV_KIND_OBJECT, align 4
  %6 = call i32 @JVP_HAS_KIND(i32 %4, i32 %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @jvp_object_length(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @jv_free(i32 %10)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jvp_object_length(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
