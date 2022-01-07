; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_get_var.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_get_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_var = type { i8* }

@namespace_level = common dso_local global i32 0, align 4
@vars = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_var* @tl_get_var(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_var*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tl_var, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tl_var**, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @mystrdup(i8* %10, i32 %11)
  store i8* %12, i8** %6, align 8
  %13 = getelementptr inbounds %struct.tl_var, %struct.tl_var* %7, i32 0, i32 0
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i32, i32* @namespace_level, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i32*, i32** @vars, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.tl_var** @tree_lookup_value_tl_var(i32 %24, %struct.tl_var* %7)
  store %struct.tl_var** %25, %struct.tl_var*** %9, align 8
  %26 = load %struct.tl_var**, %struct.tl_var*** %9, align 8
  %27 = icmp ne %struct.tl_var** %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 @zfree(i8* %29, i32 %31)
  %33 = load %struct.tl_var**, %struct.tl_var*** %9, align 8
  %34 = load %struct.tl_var*, %struct.tl_var** %33, align 8
  store %struct.tl_var* %34, %struct.tl_var** %3, align 8
  br label %40

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %16

39:                                               ; preds = %16
  store %struct.tl_var* null, %struct.tl_var** %3, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.tl_var*, %struct.tl_var** %3, align 8
  ret %struct.tl_var* %41
}

declare dso_local i8* @mystrdup(i8*, i32) #1

declare dso_local %struct.tl_var** @tree_lookup_value_tl_var(i32, %struct.tl_var*) #1

declare dso_local i32 @zfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
