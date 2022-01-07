; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_load_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_load_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_rptr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @load_string() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @preload_string()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** @idx_rptr, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** @idx_rptr, align 8
  store i8* null, i8** %1, align 8
  br label %20

10:                                               ; preds = %0
  %11 = load i8*, i8** @idx_rptr, align 8
  store i8* %11, i8** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i8*, i8** @idx_rptr, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** @idx_rptr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i8* @exact_strdup(i8* %17, i32 %18)
  store i8* %19, i8** %1, align 8
  br label %20

20:                                               ; preds = %10, %7
  %21 = load i8*, i8** %1, align 8
  ret i8* %21
}

declare dso_local i32 @preload_string(...) #1

declare dso_local i8* @exact_strdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
