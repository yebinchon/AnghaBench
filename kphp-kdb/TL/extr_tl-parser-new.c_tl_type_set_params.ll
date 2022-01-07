; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_type_set_params.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_type_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32, i32, i64, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Wrong num of params (type %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_type_set_params(%struct.tl_type* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tl_type* %0, %struct.tl_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %9 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %16 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %19 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %21 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, -5
  store i32 %23, i32* %21, align 8
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %26 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %32 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @stderr, align 4
  %38 = load %struct.tl_type*, %struct.tl_type** %5, align 8
  %39 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 0, i32* %4, align 4
  br label %44

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %13
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
