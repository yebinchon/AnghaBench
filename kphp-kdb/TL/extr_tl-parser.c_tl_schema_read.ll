; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32, i32* }

@tl_builtin_shema = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_schema_read(%struct.tl_compiler* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %9 = call i32 @tl_compiler_init(%struct.tl_compiler* %8)
  %10 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %11 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %13 = load i8*, i8** @tl_builtin_shema, align 8
  %14 = call i32 @tl_schema_split(%struct.tl_compiler* %12, i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %21 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @tl_schema_split(%struct.tl_compiler* %22, i8* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %51

29:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %35 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %36 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @tl_list_expressions_parse(%struct.tl_compiler* %34, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %30

50:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @tl_compiler_init(%struct.tl_compiler*) #1

declare dso_local i32 @tl_schema_split(%struct.tl_compiler*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_list_expressions_parse(%struct.tl_compiler*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
