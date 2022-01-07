; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_kbic.c_kbic_read_regr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_kbic.c_kbic_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @kbic_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbic_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
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
  %11 = load i32*, i32** @cont_map, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %81 [
    i32 0, label %19
    i32 1, label %37
    i32 2, label %52
    i32 3, label %66
    i32 4, label %66
    i32 5, label %66
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 24
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @w0(i32 %23)
  %25 = call i32 @w2(i32 4)
  %26 = call i32 @w2(i32 6)
  %27 = call i32 @w2(i32 4)
  %28 = call i32 @w2(i32 1)
  %29 = call i32 @w0(i32 8)
  %30 = call i32 (...) @r1()
  store i32 %30, i32* %8, align 4
  %31 = call i32 @w0(i32 40)
  %32 = call i32 (...) @r1()
  store i32 %32, i32* %9, align 4
  %33 = call i32 @w2(i32 4)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @j44(i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %82

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, 56
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @w0(i32 %41)
  %43 = call i32 @w2(i32 4)
  %44 = call i32 @w2(i32 6)
  %45 = call i32 @w2(i32 4)
  %46 = call i32 @w2(i32 5)
  %47 = call i32 @w0(i32 8)
  %48 = call i32 (...) @r12w()
  store i32 %48, i32* %8, align 4
  %49 = call i32 @w2(i32 4)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @j53(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %82

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, 8
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @w0(i32 %56)
  %58 = call i32 @w2(i32 4)
  %59 = call i32 @w2(i32 6)
  %60 = call i32 @w2(i32 4)
  %61 = call i32 @w2(i32 165)
  %62 = call i32 @w2(i32 161)
  %63 = call i32 (...) @r0()
  store i32 %63, i32* %8, align 4
  %64 = call i32 @w2(i32 4)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %82

66:                                               ; preds = %3, %3, %3
  %67 = load i32, i32* %10, align 4
  %68 = or i32 32, %67
  %69 = call i32 @w0(i32 %68)
  %70 = call i32 @w2(i32 4)
  %71 = call i32 @w2(i32 6)
  %72 = call i32 @w2(i32 4)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @w3(i32 %73)
  %75 = call i32 (...) @r4()
  store i32 %75, i32* %8, align 4
  %76 = call i32 (...) @r4()
  store i32 %76, i32* %9, align 4
  %77 = call i32 @w2(i32 4)
  %78 = call i32 @w2(i32 0)
  %79 = call i32 @w2(i32 4)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %66, %52, %37, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r12w(...) #1

declare dso_local i32 @j53(i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
