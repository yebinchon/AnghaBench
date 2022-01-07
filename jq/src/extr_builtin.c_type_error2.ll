; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_type_error2.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_type_error2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"%s (%s) and %s (%s) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @type_error2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_error2(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [15 x i8], align 1
  %8 = alloca [15 x i8], align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @jv_get_kind(i32 %10)
  %12 = call i32 @jv_kind_name(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @jv_copy(i32 %13)
  %15 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %16 = call i32 @jv_dump_string_trunc(i32 %14, i8* %15, i32 15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jv_get_kind(i32 %17)
  %19 = call i32 @jv_kind_name(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @jv_copy(i32 %20)
  %22 = getelementptr inbounds [15 x i8], [15 x i8]* %8, i64 0, i64 0
  %23 = call i32 @jv_dump_string_trunc(i32 %21, i8* %22, i32 15)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %19, i32 %23, i8* %24)
  %26 = call i32 @jv_invalid_with_msg(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @jv_free(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @jv_free(i32 %29)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @jv_kind_name(i32) #1

declare dso_local i32 @jv_get_kind(i32) #1

declare dso_local i32 @jv_dump_string_trunc(i32, i8*, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
