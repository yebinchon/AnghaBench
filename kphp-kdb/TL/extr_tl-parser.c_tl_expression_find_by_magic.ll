; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_find_by_magic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_find_by_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { i32 }
%struct.tl_compiler = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_expression* @tl_expression_find_by_magic(%struct.tl_compiler* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_expression*, align 8
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tl_expression, align 4
  %8 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %16 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call %struct.tl_expression* @tl_hashmap_get_f(i32* %20, %struct.tl_expression* %7, i32 0)
  store %struct.tl_expression* %21, %struct.tl_expression** %8, align 8
  %22 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %23 = icmp ne %struct.tl_expression* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  store %struct.tl_expression* %25, %struct.tl_expression** %3, align 8
  br label %31

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %11
  store %struct.tl_expression* null, %struct.tl_expression** %3, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.tl_expression*, %struct.tl_expression** %3, align 8
  ret %struct.tl_expression* %32
}

declare dso_local %struct.tl_expression* @tl_hashmap_get_f(i32*, %struct.tl_expression*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
