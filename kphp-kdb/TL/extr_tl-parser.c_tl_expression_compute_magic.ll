; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_compute_magic.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_compute_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { i64, i32, i32 }

@tlet_simple = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"tl_expression_compute_magic: magic in schema (0x%x) isn't equal to computed magic (0x%x), expr: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_compute_magic(%struct.tl_compiler* %0, %struct.tl_expression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca %struct.tl_expression*, align 8
  %6 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %5, align 8
  %7 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %8 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @tlet_simple, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %15 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %18 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = call i32 @compute_crc32(i32 %16, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %23 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %13
  %27 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %28 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %34 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %35 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %39 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tl_failf(%struct.tl_compiler* %33, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %26, %13
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %45 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %32, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @compute_crc32(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
