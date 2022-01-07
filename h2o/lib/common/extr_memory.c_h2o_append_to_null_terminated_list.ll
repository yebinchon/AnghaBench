; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_append_to_null_terminated_list.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_append_to_null_terminated_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_append_to_null_terminated_list(i8*** %0, i8* %1) #0 {
  %3 = alloca i8***, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8*** %0, i8**** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i8***, i8**** %3, align 8
  %8 = load i8**, i8*** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %5, align 8
  br label %6

17:                                               ; preds = %6
  %18 = load i8***, i8**** %3, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 2
  %22 = mul i64 %21, 8
  %23 = call i8** @h2o_mem_realloc(i8** %19, i64 %22)
  %24 = load i8***, i8**** %3, align 8
  store i8** %23, i8*** %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8***, i8**** %3, align 8
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  %30 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %25, i8** %30, align 8
  %31 = load i8***, i8**** %3, align 8
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* null, i8** %34, align 8
  ret void
}

declare dso_local i8** @h2o_mem_realloc(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
