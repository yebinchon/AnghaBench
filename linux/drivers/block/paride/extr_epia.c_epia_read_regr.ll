; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_epia.c_epia_read_regr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_epia.c_epia_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @epia_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epia_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
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
  %11 = load i64*, i64** @cont_map, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %77 [
    i32 0, label %23
    i32 1, label %39
    i32 2, label %59
    i32 3, label %70
    i32 4, label %70
    i32 5, label %70
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, 57
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @w0(i32 %26)
  %28 = call i32 @w2(i32 1)
  %29 = call i32 @w2(i32 3)
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @w0(i32 %30)
  %32 = call i32 (...) @r1()
  store i32 %32, i32* %8, align 4
  %33 = call i32 @w2(i32 1)
  %34 = call i32 (...) @r1()
  store i32 %34, i32* %9, align 4
  %35 = call i32 @w2(i32 4)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @j44(i32 %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %78

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, 49
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @w0(i32 %42)
  %44 = call i32 @w2(i32 1)
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 55
  %47 = call i32 @w0(i32 %46)
  %48 = call i32 @w2(i32 3)
  %49 = call i32 @w2(i32 5)
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, 240
  %52 = call i32 @w0(i32 %51)
  %53 = call i32 (...) @r1()
  store i32 %53, i32* %8, align 4
  %54 = call i32 (...) @r2()
  store i32 %54, i32* %9, align 4
  %55 = call i32 @w2(i32 4)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @j53(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %3
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %60, 41
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @w0(i32 %62)
  %64 = call i32 @w2(i32 1)
  %65 = call i32 @w2(i32 33)
  %66 = call i32 @w2(i32 35)
  %67 = call i32 (...) @r0()
  store i32 %67, i32* %8, align 4
  %68 = call i32 @w2(i32 4)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %78

70:                                               ; preds = %3, %3, %3
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @w3(i32 %71)
  %73 = call i32 @w2(i32 36)
  %74 = call i32 (...) @r4()
  store i32 %74, i32* %8, align 4
  %75 = call i32 @w2(i32 4)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %70, %59, %39, %23
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @j53(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
