; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_check_object_key.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_check_object_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Cannot use %s (%s) as object key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_object_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_object_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [15 x i8], align 1
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @block_is_const(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @block_const_kind(i32 %9)
  %11 = load i64, i64* @JV_KIND_STRING, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @block_const_kind(i32 %14)
  %16 = call i32 @jv_kind_name(i64 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @block_const(i32 %17)
  %19 = getelementptr inbounds [15 x i8], [15 x i8]* %4, i64 0, i64 0
  %20 = call i32 @jv_dump_string_trunc(i32 %18, i8* %19, i32 15)
  %21 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %8, %1
  %23 = call i32 (...) @jv_invalid()
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @block_is_const(i32) #1

declare dso_local i64 @block_const_kind(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i32) #1

declare dso_local i32 @jv_kind_name(i64) #1

declare dso_local i32 @jv_dump_string_trunc(i32, i8*, i32) #1

declare dso_local i32 @block_const(i32) #1

declare dso_local i32 @jv_invalid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
