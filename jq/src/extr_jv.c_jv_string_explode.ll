; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_explode.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_string_explode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @JV_KIND_STRING, align 4
  %10 = call i32 @JVP_HAS_KIND(i32 %8, i32 %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @jv_string_value(i32 %12)
  store i8* %13, i8** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @jv_copy(i32 %14)
  %16 = call i32 @jv_string_length_bytes(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @jv_array_sized(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %28, %1
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @jvp_utf8_next(i8* %24, i8* %25, i32* %7)
  store i8* %26, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @jv_number(i32 %30)
  %32 = call i32 @jv_array_append(i32 %29, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @jv_free(i32 %34)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array_sized(i32) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i32 @jv_number(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
