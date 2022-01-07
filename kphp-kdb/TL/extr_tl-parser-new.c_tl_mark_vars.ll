; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_mark_vars.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_mark_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i8*, %struct.tl_combinator_tree*, %struct.tl_combinator_tree* }
%struct.tl_var = type { i32 }

@act_var = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_mark_vars(%struct.tl_combinator_tree* %0) #0 {
  %2 = alloca %struct.tl_combinator_tree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tl_var*, align 8
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %2, align 8
  %5 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  %6 = icmp ne %struct.tl_combinator_tree* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  %10 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @act_var, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  %16 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.tl_combinator_tree*
  %19 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call %struct.tl_var* @tl_get_var(i8* %21, i32 %23)
  store %struct.tl_var* %24, %struct.tl_var** %4, align 8
  %25 = load %struct.tl_var*, %struct.tl_var** %4, align 8
  %26 = call i32 @assert(%struct.tl_var* %25)
  %27 = load %struct.tl_var*, %struct.tl_var** %4, align 8
  %28 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %14, %8
  %32 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  %33 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %32, i32 0, i32 3
  %34 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %33, align 8
  call void @tl_mark_vars(%struct.tl_combinator_tree* %34)
  %35 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %2, align 8
  %36 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %35, i32 0, i32 2
  %37 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %36, align 8
  call void @tl_mark_vars(%struct.tl_combinator_tree* %37)
  br label %38

38:                                               ; preds = %31, %7
  ret void
}

declare dso_local %struct.tl_var* @tl_get_var(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(%struct.tl_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
