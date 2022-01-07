; ModuleID = '/home/carl/AnghaBench/git/extr_refspec.c_refspec_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_refspec.c_refspec_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32, i32, i64, i64, i64*, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @refspec_clear(%struct.refspec* %0) #0 {
  %2 = alloca %struct.refspec*, align 8
  %3 = alloca i32, align 4
  store %struct.refspec* %0, %struct.refspec** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.refspec*, %struct.refspec** %2, align 8
  %7 = getelementptr inbounds %struct.refspec, %struct.refspec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load %struct.refspec*, %struct.refspec** %2, align 8
  %12 = getelementptr inbounds %struct.refspec, %struct.refspec* %11, i32 0, i32 6
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = call i32 @refspec_item_clear(i64* %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.refspec*, %struct.refspec** %2, align 8
  %23 = getelementptr inbounds %struct.refspec, %struct.refspec* %22, i32 0, i32 6
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @FREE_AND_NULL(i64* %24)
  %26 = load %struct.refspec*, %struct.refspec** %2, align 8
  %27 = getelementptr inbounds %struct.refspec, %struct.refspec* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.refspec*, %struct.refspec** %2, align 8
  %29 = getelementptr inbounds %struct.refspec, %struct.refspec* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %46, %21
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.refspec*, %struct.refspec** %2, align 8
  %33 = getelementptr inbounds %struct.refspec, %struct.refspec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.refspec*, %struct.refspec** %2, align 8
  %38 = getelementptr inbounds %struct.refspec, %struct.refspec* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.refspec*, %struct.refspec** %2, align 8
  %51 = getelementptr inbounds %struct.refspec, %struct.refspec* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = call i32 @FREE_AND_NULL(i64* %52)
  %54 = load %struct.refspec*, %struct.refspec** %2, align 8
  %55 = getelementptr inbounds %struct.refspec, %struct.refspec* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.refspec*, %struct.refspec** %2, align 8
  %57 = getelementptr inbounds %struct.refspec, %struct.refspec* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.refspec*, %struct.refspec** %2, align 8
  %59 = getelementptr inbounds %struct.refspec, %struct.refspec* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local i32 @refspec_item_clear(i64*) #1

declare dso_local i32 @FREE_AND_NULL(i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
