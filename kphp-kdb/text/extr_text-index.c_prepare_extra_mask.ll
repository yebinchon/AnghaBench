; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_extra_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_prepare_extra_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_extra_mask = common dso_local global i32 0, align 4
@final_extra_mask = common dso_local global i32 0, align 4
@extra_ints_num = common dso_local global i32 0, align 4
@MAX_EXTRA_INTS = common dso_local global i32 0, align 4
@ES = common dso_local global i32* null, align 8
@SE = common dso_local global i32* null, align 8
@text_shift = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"extra_mask=%08x, extra_ints=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_extra_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @current_extra_mask, align 4
  store i32 %3, i32* @final_extra_mask, align 4
  store i32 0, i32* @extra_ints_num, align 4
  %4 = load i32, i32* @final_extra_mask, align 4
  %5 = call i32 @unpack_extra_mask(i32 %4)
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %37, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @MAX_EXTRA_INTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load i32*, i32** @ES, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** @SE, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %10
  %25 = load i32, i32* @extra_ints_num, align 4
  %26 = load i32*, i32** @SE, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32*, i32** @ES, align 8
  %32 = load i32, i32* @extra_ints_num, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @extra_ints_num, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %10
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load i32, i32* @extra_ints_num, align 4
  %42 = mul nsw i32 %41, 4
  store i32 %42, i32* @text_shift, align 4
  %43 = load i64, i64* @verbosity, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @final_extra_mask, align 4
  %48 = load i32, i32* @extra_ints_num, align 4
  %49 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @unpack_extra_mask(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
