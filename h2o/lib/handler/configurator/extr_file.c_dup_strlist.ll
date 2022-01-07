; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_dup_strlist.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_file.c_dup_strlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**)* @dup_strlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @dup_strlist(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %3, align 8
  br label %5

15:                                               ; preds = %5
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 8, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8** @h2o_mem_alloc(i32 %19)
  store i8** %20, i8*** %4, align 8
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %35, %15
  %22 = load i8**, i8*** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i8**, i8*** %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %21

38:                                               ; preds = %21
  %39 = load i8**, i8*** %4, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  store i8* null, i8** %41, align 8
  %42 = load i8**, i8*** %4, align 8
  ret i8** %42
}

declare dso_local i8** @h2o_mem_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
