; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_ext_to_content_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_ext_to_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ct_partial = common dso_local global i32 0, align 4
@ct_gif = common dso_local global i32 0, align 4
@ct_jpeg = common dso_local global i32 0, align 4
@ct_mp3 = common dso_local global i32 0, align 4
@ct_mp4 = common dso_local global i32 0, align 4
@ct_mov = common dso_local global i32 0, align 4
@ct_pdf = common dso_local global i32 0, align 4
@ct_png = common dso_local global i32 0, align 4
@ct_webp = common dso_local global i32 0, align 4
@ct_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_to_content_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 8
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 8
  store i32 %18, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 2105376
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %46 [
    i32 6449518, label %28
    i32 6777190, label %30
    i32 6975591, label %32
    i32 7172147, label %34
    i32 7172148, label %36
    i32 7171958, label %38
    i32 7365734, label %40
    i32 7368295, label %42
    i32 7823984, label %44
  ]

28:                                               ; preds = %1
  %29 = load i32, i32* @ct_partial, align 4
  store i32 %29, i32* %2, align 4
  br label %48

30:                                               ; preds = %1
  %31 = load i32, i32* @ct_gif, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load i32, i32* @ct_jpeg, align 4
  store i32 %33, i32* %2, align 4
  br label %48

34:                                               ; preds = %1
  %35 = load i32, i32* @ct_mp3, align 4
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %1
  %37 = load i32, i32* @ct_mp4, align 4
  store i32 %37, i32* %2, align 4
  br label %48

38:                                               ; preds = %1
  %39 = load i32, i32* @ct_mov, align 4
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load i32, i32* @ct_pdf, align 4
  store i32 %41, i32* %2, align 4
  br label %48

42:                                               ; preds = %1
  %43 = load i32, i32* @ct_png, align 4
  store i32 %43, i32* %2, align 4
  br label %48

44:                                               ; preds = %1
  %45 = load i32, i32* @ct_webp, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @ct_unknown, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
