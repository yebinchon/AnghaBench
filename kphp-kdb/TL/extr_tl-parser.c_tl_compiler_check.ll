; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_check.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_compiler_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { %struct.tl_expression* }
%struct.tl_expression = type { i8*, i32, %struct.tl_expression* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"before %s (E: %p, E->text: %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_compiler_check(%struct.tl_compiler* %0, i8* %1, %struct.tl_expression* %2) #0 {
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_expression*, align 8
  %9 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.tl_expression* %2, %struct.tl_expression** %6, align 8
  %10 = load i32, i32* @stderr, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %13 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %14 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %11, %struct.tl_expression* %12, i8* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %22 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %21, i32 0, i32 0
  %23 = load %struct.tl_expression*, %struct.tl_expression** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %23, i64 %25
  store %struct.tl_expression* %26, %struct.tl_expression** %8, align 8
  %27 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %28 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %27, i32 0, i32 2
  %29 = load %struct.tl_expression*, %struct.tl_expression** %28, align 8
  store %struct.tl_expression* %29, %struct.tl_expression** %9, align 8
  br label %30

30:                                               ; preds = %42, %20
  %31 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %32 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %33 = icmp ne %struct.tl_expression* %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %36 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %44 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %43, i32 0, i32 2
  %45 = load %struct.tl_expression*, %struct.tl_expression** %44, align 8
  store %struct.tl_expression* %45, %struct.tl_expression** %9, align 8
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %17
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, %struct.tl_expression*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
