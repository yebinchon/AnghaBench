; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_write_to_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_write_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { i64, i8* }

@tlet_simple = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_expression_write_to_file(i32* %0, %struct.tl_compiler* %1, %struct.tl_expression* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tl_compiler*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.tl_compiler* %1, %struct.tl_compiler** %5, align 8
  store %struct.tl_expression* %2, %struct.tl_expression** %6, align 8
  %9 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %10 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %13 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @tlet_simple, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %3
  store i8* null, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %23 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %24 = call i8* @tl_expression_join(%struct.tl_compiler* %22, %struct.tl_expression* %23, i32 1)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %37 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i8* [ %34, %33 ], [ %38, %35 ]
  %41 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @cstr_free(i8** %8)
  br label %46

46:                                               ; preds = %44, %39
  ret void
}

declare dso_local i8* @tl_expression_join(%struct.tl_compiler*, %struct.tl_expression*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @cstr_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
