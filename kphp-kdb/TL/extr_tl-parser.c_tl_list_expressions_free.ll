; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_list_expressions_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { %struct.tl_expression* }
%struct.tl_expression = type { i32, %struct.tl_expression*, %struct.tl_expression* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tl_compiler*, i32)* @tl_list_expressions_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tl_list_expressions_free(%struct.tl_compiler* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_compiler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_expression*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %18 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %17, i32 0, i32 0
  %19 = load %struct.tl_expression*, %struct.tl_expression** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %19, i64 %21
  store %struct.tl_expression* %22, %struct.tl_expression** %5, align 8
  %23 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %24 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %23, i32 0, i32 1
  %25 = load %struct.tl_expression*, %struct.tl_expression** %24, align 8
  store %struct.tl_expression* %25, %struct.tl_expression** %6, align 8
  br label %26

26:                                               ; preds = %43, %13
  %27 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %28 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %29 = icmp ne %struct.tl_expression* %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %32 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %39 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %38, i32 0, i32 1
  %40 = load %struct.tl_expression*, %struct.tl_expression** %39, align 8
  store %struct.tl_expression* %40, %struct.tl_expression** %7, align 8
  %41 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %42 = call i32 @tl_expression_free(%struct.tl_expression* %41)
  br label %43

43:                                               ; preds = %30
  %44 = load %struct.tl_expression*, %struct.tl_expression** %7, align 8
  store %struct.tl_expression* %44, %struct.tl_expression** %6, align 8
  br label %26

45:                                               ; preds = %26
  %46 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %47 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %48 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %47, i32 0, i32 1
  store %struct.tl_expression* %46, %struct.tl_expression** %48, align 8
  %49 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %50 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %49, i32 0, i32 2
  store %struct.tl_expression* %46, %struct.tl_expression** %50, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_expression_free(%struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
