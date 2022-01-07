; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_array_set.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_array_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Out of bounds negative array index\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_array_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @JV_KIND_ARRAY, align 4
  %11 = call i32 @JVP_HAS_KIND(i32 %9, i32 %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @jvp_array_length(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @jv_free(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @jv_free(i32 %26)
  %28 = call i32 @jv_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @jv_invalid_with_msg(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @jvp_array_write(i32* %5, i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @jv_free(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %30, %23
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jvp_array_length(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32* @jvp_array_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
