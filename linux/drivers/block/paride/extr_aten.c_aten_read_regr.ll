; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_aten.c_aten_read_regr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_aten.c_aten_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @aten_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aten_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** @cont_map, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  %18 = add nsw i32 %17, 64
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %52 [
    i32 0, label %22
    i32 1, label %37
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @w0(i32 %23)
  %25 = call i32 @w2(i32 14)
  %26 = call i32 @w2(i32 6)
  %27 = call i32 @w2(i32 7)
  %28 = call i32 @w2(i32 6)
  %29 = call i32 @w2(i32 0)
  %30 = call i32 (...) @r1()
  store i32 %30, i32* %8, align 4
  %31 = call i32 @w0(i32 16)
  %32 = call i32 (...) @r1()
  store i32 %32, i32* %9, align 4
  %33 = call i32 @w2(i32 12)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @j44(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, 16
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @w0(i32 %40)
  %42 = call i32 @w2(i32 14)
  %43 = call i32 @w2(i32 6)
  %44 = call i32 @w0(i32 255)
  %45 = call i32 @w2(i32 39)
  %46 = call i32 @w2(i32 38)
  %47 = call i32 @w2(i32 32)
  %48 = call i32 (...) @r0()
  store i32 %48, i32* %8, align 4
  %49 = call i32 @w2(i32 38)
  %50 = call i32 @w2(i32 12)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %37, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
