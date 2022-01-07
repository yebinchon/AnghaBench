; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_generate_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_generate_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_MASK = common dso_local global i64 0, align 8
@id_tree = common dso_local global i32 0, align 4
@CLUSTER_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generate_id(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  br label %4

4:                                                ; preds = %1, %23
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @ID_MASK, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* @id_tree, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i64 @tree_lookup(i32 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %12, %4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, i64* %2, align 8
  ret i64 %22

23:                                               ; preds = %18
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @CLUSTER_MASK, align 8
  %26 = and i64 %24, %25
  %27 = call i64 (...) @lrand48()
  %28 = trunc i64 %27 to i32
  %29 = zext i32 %28 to i64
  %30 = or i64 %26, %29
  store i64 %30, i64* %2, align 8
  br label %4
}

declare dso_local i64 @tree_lookup(i32, i64) #1

declare dso_local i64 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
