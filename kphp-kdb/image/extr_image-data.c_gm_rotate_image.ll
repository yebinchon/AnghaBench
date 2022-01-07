; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_gm_rotate_image.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_gm_rotate_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_6__ = type { i64 }

@UndefinedException = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.forth_stack*, i32*, i32)* @gm_rotate_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gm_rotate_image(%struct.forth_stack* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  store %struct.forth_stack* %0, %struct.forth_stack** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 360
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ false, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @ReferenceImage(i32* %22)
  store i32* %23, i32** %4, align 8
  br label %46

24:                                               ; preds = %15
  %25 = call i32 @GetExceptionInfo(%struct.TYPE_6__* %8)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sitofp i32 %27 to double
  %29 = call i32* @RotateImage(i32* %26, double %28, %struct.TYPE_6__* %8)
  store i32* %29, i32** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UndefinedException, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %36 = call i32 @gm_catch_exception(%struct.forth_stack* %35, %struct.TYPE_6__* %8)
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @DestroyImage(i32* %40)
  br label %42

42:                                               ; preds = %39, %34
  store i32* null, i32** %4, align 8
  br label %46

43:                                               ; preds = %24
  %44 = call i32 @DestroyExceptionInfo(%struct.TYPE_6__* %8)
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %43, %42, %21
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ReferenceImage(i32*) #1

declare dso_local i32 @GetExceptionInfo(%struct.TYPE_6__*) #1

declare dso_local i32* @RotateImage(i32*, double, %struct.TYPE_6__*) #1

declare dso_local i32 @gm_catch_exception(%struct.forth_stack*, %struct.TYPE_6__*) #1

declare dso_local i32 @DestroyImage(i32*) #1

declare dso_local i32 @DestroyExceptionInfo(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
