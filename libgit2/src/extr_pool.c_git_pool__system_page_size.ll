; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pool.c_git_pool__system_page_size.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pool.c_git_pool__system_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_pool__system_page_size.size = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @git_pool__system_page_size() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @git_pool__system_page_size.size, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = call i64 @git__page_size(i64* %1)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i64 4096, i64* %1, align 8
  br label %8

8:                                                ; preds = %7, %4
  %9 = load i64, i64* %1, align 8
  %10 = sub i64 %9, 16
  %11 = sub i64 %10, 4
  store i64 %11, i64* @git_pool__system_page_size.size, align 8
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i64, i64* @git_pool__system_page_size.size, align 8
  ret i64 %13
}

declare dso_local i64 @git__page_size(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
