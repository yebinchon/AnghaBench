; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Free.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzArEx_Free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SzArEx_Free(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ISzAlloc_Free(i32 %5, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ISzAlloc_Free(i32 %10, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ISzAlloc_Free(i32 %15, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ISzAlloc_Free(i32 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ISzAlloc_Free(i32 %25, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ISzAlloc_Free(i32 %30, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SzBitUi32s_Free(i32* %36, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @SzBitUi32s_Free(i32* %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SzBitUi64s_Free(i32* %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @SzBitUi64s_Free(i32* %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @SzAr_Free(i32* %52, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = call i32 @SzArEx_Init(%struct.TYPE_4__* %55)
  ret void
}

declare dso_local i32 @ISzAlloc_Free(i32, i32) #1

declare dso_local i32 @SzBitUi32s_Free(i32*, i32) #1

declare dso_local i32 @SzBitUi64s_Free(i32*, i32) #1

declare dso_local i32 @SzAr_Free(i32*, i32) #1

declare dso_local i32 @SzArEx_Init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
