; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_type_generator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_tl_type_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_expression*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@tl_type_generator.len = internal global i32 0, align 4
@tl_type_generator.E = internal global %struct.tl_expression* null, align 8
@compiler = common dso_local global i32 0, align 4
@expected_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @tl_type_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tl_type_generator(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @expected_type, align 4
  %11 = call %struct.tl_expression* @tl_expression_find_first_by_composite_typename(i32* @compiler, i32 %10)
  store %struct.tl_expression* %11, %struct.tl_expression** @tl_type_generator.E, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* @tl_type_generator.len, align 4
  br label %14

14:                                               ; preds = %9, %2
  br label %15

15:                                               ; preds = %35, %14
  %16 = load %struct.tl_expression*, %struct.tl_expression** @tl_type_generator.E, align 8
  %17 = icmp ne %struct.tl_expression* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.tl_expression*, %struct.tl_expression** @tl_type_generator.E, align 8
  %20 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load %struct.tl_expression*, %struct.tl_expression** @tl_type_generator.E, align 8
  %25 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %24, i32 0, i32 0
  %26 = load %struct.tl_expression*, %struct.tl_expression** %25, align 8
  store %struct.tl_expression* %26, %struct.tl_expression** @tl_type_generator.E, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @tl_type_generator.len, align 4
  %30 = call i32 @strncmp(i8* %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %3, align 8
  br label %37

35:                                               ; preds = %18
  br label %15

36:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local %struct.tl_expression* @tl_expression_find_first_by_composite_typename(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
