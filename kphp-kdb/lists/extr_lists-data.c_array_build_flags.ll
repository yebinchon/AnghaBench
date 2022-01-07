; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_array_build_flags.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_array_build_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LF_BIGFLAGS = common dso_local global i32 0, align 4
@new_flags = common dso_local global i32 0, align 4
@LF_HAVE_VALUES = common dso_local global i32 0, align 4
@LF_HAVE_DATES = common dso_local global i32 0, align 4
@LF_HAVE_TEXTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @array_build_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_build_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @metafile_get_flags(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp uge i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @LF_BIGFLAGS, align 4
  %13 = load i32, i32* @new_flags, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @new_flags, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @metafile_get_value(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @LF_HAVE_VALUES, align 4
  %21 = load i32, i32* @new_flags, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @new_flags, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @metafile_get_date(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @LF_HAVE_DATES, align 4
  %29 = load i32, i32* @new_flags, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @new_flags, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @metafile_get_text(i32 %32, i32* %6)
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @LF_HAVE_TEXTS, align 4
  %38 = load i32, i32* @new_flags, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @new_flags, align 4
  br label %40

40:                                               ; preds = %36, %31
  ret i32 0
}

declare dso_local i32 @metafile_get_flags(i32) #1

declare dso_local i64 @metafile_get_value(i32) #1

declare dso_local i64 @metafile_get_date(i32) #1

declare dso_local i32 @metafile_get_text(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
