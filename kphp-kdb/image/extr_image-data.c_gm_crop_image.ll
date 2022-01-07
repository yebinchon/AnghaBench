; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_gm_crop_image.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_gm_crop_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_6__ = type { i64 }

@UndefinedException = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.forth_stack*, i32*, i32*)* @gm_crop_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gm_crop_image(%struct.forth_stack* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  store %struct.forth_stack* %0, %struct.forth_stack** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @GetExceptionInfo(%struct.TYPE_6__* %8)
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32* @CropImage(i32* %11, i32* %12, %struct.TYPE_6__* %8)
  store i32* %13, i32** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UndefinedException, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %20 = call i32 @gm_catch_exception(%struct.forth_stack* %19, %struct.TYPE_6__* %8)
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @DestroyImage(i32* %24)
  br label %26

26:                                               ; preds = %23, %18
  store i32* null, i32** %4, align 8
  br label %30

27:                                               ; preds = %3
  %28 = call i32 @DestroyExceptionInfo(%struct.TYPE_6__* %8)
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %4, align 8
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32*, i32** %4, align 8
  ret i32* %31
}

declare dso_local i32 @GetExceptionInfo(%struct.TYPE_6__*) #1

declare dso_local i32* @CropImage(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @gm_catch_exception(%struct.forth_stack*, %struct.TYPE_6__*) #1

declare dso_local i32 @DestroyImage(i32*) #1

declare dso_local i32 @DestroyExceptionInfo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
