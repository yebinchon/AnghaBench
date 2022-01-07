; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_field.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@namespace_level = common dso_local global i32 0, align 4
@fields = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_add_field(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @namespace_level, align 4
  %5 = icmp slt i32 %4, 10
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @namespace_level, align 4
  %9 = icmp sge i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** @fields, align 8
  %13 = load i32, i32* @namespace_level, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @tree_lookup_tl_field(i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load i32*, i32** @fields, align 8
  %23 = load i32, i32* @namespace_level, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (...) @lrand48()
  %29 = call i32 @tree_insert_tl_field(i32 %26, i8* %27, i32 %28)
  %30 = load i32*, i32** @fields, align 8
  %31 = load i32, i32* @namespace_level, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tree_lookup_tl_field(i32, i8*) #1

declare dso_local i32 @tree_insert_tl_field(i32, i8*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
