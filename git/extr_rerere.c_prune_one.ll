; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_prune_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_prune_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rerere_id*, i64, i64)* @prune_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_one(%struct.rerere_id* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rerere_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rerere_id* %0, %struct.rerere_id** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.rerere_id*, %struct.rerere_id** %4, align 8
  %10 = call i64 @rerere_last_used_at(%struct.rerere_id* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %8, align 8
  br label %23

15:                                               ; preds = %3
  %16 = load %struct.rerere_id*, %struct.rerere_id** %4, align 8
  %17 = call i64 @rerere_created_at(%struct.rerere_id* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %30

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %21, %13
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.rerere_id*, %struct.rerere_id** %4, align 8
  %29 = call i32 @unlink_rr_item(%struct.rerere_id* %28)
  br label %30

30:                                               ; preds = %20, %27, %23
  ret void
}

declare dso_local i64 @rerere_last_used_at(%struct.rerere_id*) #1

declare dso_local i64 @rerere_created_at(%struct.rerere_id*) #1

declare dso_local i32 @unlink_rr_item(%struct.rerere_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
