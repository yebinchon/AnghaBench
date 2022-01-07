; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_file_type_to_content_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-content.c_file_type_to_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ct_unknown = common dso_local global i32 0, align 4
@ct_jpeg = common dso_local global i32 0, align 4
@ct_gif = common dso_local global i32 0, align 4
@ct_png = common dso_local global i32 0, align 4
@ct_pdf = common dso_local global i32 0, align 4
@ct_mp3 = common dso_local global i32 0, align 4
@ct_mov = common dso_local global i32 0, align 4
@ct_mp4 = common dso_local global i32 0, align 4
@ct_partial = common dso_local global i32 0, align 4
@ct_webp = common dso_local global i32 0, align 4
@ct_last = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_type_to_content_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 129, label %5
    i32 136, label %7
    i32 137, label %9
    i32 130, label %11
    i32 131, label %13
    i32 134, label %15
    i32 135, label %17
    i32 133, label %19
    i32 132, label %21
    i32 128, label %23
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @ct_unknown, align 4
  store i32 %6, i32* %2, align 4
  br label %28

7:                                                ; preds = %1
  %8 = load i32, i32* @ct_jpeg, align 4
  store i32 %8, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @ct_gif, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i32, i32* @ct_png, align 4
  store i32 %12, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @ct_pdf, align 4
  store i32 %14, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @ct_mp3, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  %18 = load i32, i32* @ct_mov, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @ct_mp4, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @ct_partial, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @ct_webp, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ct_last, align 4
  %27 = or i32 %26, 1073741824
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
