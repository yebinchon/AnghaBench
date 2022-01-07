; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_keep_word.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_keep_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tw = common dso_local global i32 0, align 4
@TL = common dso_local global i32* null, align 8
@Tc = common dso_local global i64 0, align 8
@TS = common dso_local global i32 0, align 4
@MAX_CHARS = common dso_local global i32 0, align 4
@MAX_TERMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @keep_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keep_word(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 64
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %39

11:                                               ; preds = %7
  %12 = load i32, i32* @Tw, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @memcpy(i32 %12, i8* %13, i32 %15)
  %17 = load i32, i32* @Tw, align 4
  %18 = load i32*, i32** @TL, align 8
  %19 = load i64, i64* @Tc, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @Tc, align 8
  %21 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 4
  %24 = and i32 %23, -4
  %25 = load i32, i32* @Tw, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* @Tw, align 4
  %27 = load i32, i32* @Tw, align 4
  %28 = load i32, i32* @TS, align 4
  %29 = load i32, i32* @MAX_CHARS, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 512
  %32 = icmp sge i32 %27, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %11
  %34 = load i64, i64* @Tc, align 8
  %35 = load i64, i64* @MAX_TERMS, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %11
  %38 = call i32 (...) @flush_words()
  br label %39

39:                                               ; preds = %10, %37, %33
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @flush_words(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
