; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_json_parse.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_json_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"only strings can be parsed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_json_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_json_parse(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @jv_get_kind(i32 %7)
  %9 = load i64, i64* @JV_KIND_STRING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @type_error(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @jv_string_value(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jv_copy(i32 %17)
  %19 = call i32 @jv_string_length_bytes(i32 %18)
  %20 = call i32 @jv_parse_sized(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @jv_free(i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %14, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @type_error(i32, i8*) #1

declare dso_local i32 @jv_parse_sized(i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
