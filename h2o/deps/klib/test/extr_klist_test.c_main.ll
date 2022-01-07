; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_klist_test.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_klist_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kl = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @klist_t(i32 32)
  %3 = load i32, i32* @kl, align 4
  %4 = mul nsw i32 %2, %3
  %5 = call i32 @kliter_t(i32 32)
  %6 = load i32, i32* @p, align 4
  %7 = mul nsw i32 %5, %6
  %8 = call i32 @kl_init(i32 32)
  store i32 %8, i32* @kl, align 4
  %9 = load i32, i32* @kl, align 4
  %10 = call i32* @kl_pushp(i32 32, i32 %9)
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @kl, align 4
  %12 = call i32* @kl_pushp(i32 32, i32 %11)
  store i32 10, i32* %12, align 4
  %13 = load i32, i32* @kl, align 4
  %14 = call i32 @kl_shift(i32 32, i32 %13, i32 0)
  %15 = load i32, i32* @kl, align 4
  %16 = call i32 @kl_begin(i32 %15)
  store i32 %16, i32* @p, align 4
  br label %17

17:                                               ; preds = %26, %0
  %18 = load i32, i32* @p, align 4
  %19 = load i32, i32* @kl, align 4
  %20 = call i32 @kl_end(i32 %19)
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* @p, align 4
  %24 = call i32 @kl_val(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @p, align 4
  %28 = call i32 @kl_next(i32 %27)
  store i32 %28, i32* @p, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i32, i32* @kl, align 4
  %31 = call i32 @kl_destroy(i32 32, i32 %30)
  ret i32 0
}

declare dso_local i32 @klist_t(i32) #1

declare dso_local i32 @kliter_t(i32) #1

declare dso_local i32 @kl_init(i32) #1

declare dso_local i32* @kl_pushp(i32, i32) #1

declare dso_local i32 @kl_shift(i32, i32, i32) #1

declare dso_local i32 @kl_begin(i32) #1

declare dso_local i32 @kl_end(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @kl_val(i32) #1

declare dso_local i32 @kl_next(i32) #1

declare dso_local i32 @kl_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
