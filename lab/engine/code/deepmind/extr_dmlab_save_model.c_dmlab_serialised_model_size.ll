; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_dmlab_serialised_model_size.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_dmlab_serialised_model_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*)*, i64 (i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dmlab_serialised_model_size(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 4, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 %12(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64 (i8*)*, i64 (i8*)** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 %21(i8* %22)
  store i64 %23, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %35, %2
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @SurfaceSize(i64 %29, %struct.TYPE_4__* %30, i8* %31)
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local i64 @SurfaceSize(i64, %struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
