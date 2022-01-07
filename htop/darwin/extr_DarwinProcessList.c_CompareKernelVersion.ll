; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_CompareKernelVersion.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_CompareKernelVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern = type { i16* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareKernelVersion(i16 signext %0, i16 signext %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.kern, align 8
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %9 = call i32 @GetKernelVersion(%struct.kern* %8)
  %10 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %11 = load i16*, i16** %10, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 0
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 0
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* %5, align 2
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 %23, %25
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %29 = load i16*, i16** %28, align 8
  %30 = getelementptr inbounds i16, i16* %29, i64 1
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* %6, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %38 = load i16*, i16** %37, align 8
  %39 = getelementptr inbounds i16, i16* %38, i64 1
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* %6, align 2
  %43 = sext i16 %42 to i32
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %47 = load i16*, i16** %46, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 2
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* %7, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.kern, %struct.kern* %8, i32 0, i32 0
  %56 = load i16*, i16** %55, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 2
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = load i16, i16* %7, align 2
  %61 = sext i16 %60 to i32
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54, %36, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @GetKernelVersion(%struct.kern*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
