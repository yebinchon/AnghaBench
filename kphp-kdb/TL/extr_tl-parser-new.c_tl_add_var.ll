; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_var.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_var = type { i32, i64, %struct.tl_combinator_tree*, i32 }
%struct.tl_combinator_tree = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Add var %s\0A\00", align 1
@vars = common dso_local global i32* null, align 8
@namespace_level = common dso_local global i64 0, align 8
@last_num_var = common dso_local global %struct.tl_var** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_var* @tl_add_var(i8* %0, %struct.tl_combinator_tree* %1, i32 %2) #0 {
  %4 = alloca %struct.tl_var*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tl_combinator_tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_var*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tl_combinator_tree* %1, %struct.tl_combinator_tree** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = call %struct.tl_var* @zmalloc(i32 32)
  store %struct.tl_var* %11, %struct.tl_var** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @zstrdup(i8* %12)
  %14 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %15 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %18 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %20 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %21 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %20, i32 0, i32 2
  store %struct.tl_combinator_tree* %19, %struct.tl_combinator_tree** %21, align 8
  %22 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %23 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** @vars, align 8
  %25 = load i64, i64* @namespace_level, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %29 = call i64 @tree_lookup_tl_var(i32 %27, %struct.tl_var* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store %struct.tl_var* null, %struct.tl_var** %4, align 8
  br label %52

32:                                               ; preds = %3
  %33 = load i32*, i32** @vars, align 8
  %34 = load i64, i64* @namespace_level, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %38 = call i32 (...) @lrand48()
  %39 = call i32 @tree_insert_tl_var(i32 %36, %struct.tl_var* %37, i32 %38)
  %40 = load i32*, i32** @vars, align 8
  %41 = load i64, i64* @namespace_level, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %32
  %46 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  %47 = load %struct.tl_var**, %struct.tl_var*** @last_num_var, align 8
  %48 = load i64, i64* @namespace_level, align 8
  %49 = getelementptr inbounds %struct.tl_var*, %struct.tl_var** %47, i64 %48
  store %struct.tl_var* %46, %struct.tl_var** %49, align 8
  br label %50

50:                                               ; preds = %45, %32
  %51 = load %struct.tl_var*, %struct.tl_var** %8, align 8
  store %struct.tl_var* %51, %struct.tl_var** %4, align 8
  br label %52

52:                                               ; preds = %50, %31
  %53 = load %struct.tl_var*, %struct.tl_var** %4, align 8
  ret %struct.tl_var* %53
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local %struct.tl_var* @zmalloc(i32) #1

declare dso_local i32 @zstrdup(i8*) #1

declare dso_local i64 @tree_lookup_tl_var(i32, %struct.tl_var*) #1

declare dso_local i32 @tree_insert_tl_var(i32, %struct.tl_var*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
