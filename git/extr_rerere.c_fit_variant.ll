; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_fit_variant.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_fit_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerere_dir = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rerere_dir*, i32)* @fit_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fit_variant(%struct.rerere_dir* %0, i32 %1) #0 {
  %3 = alloca %struct.rerere_dir*, align 8
  %4 = alloca i32, align 4
  store %struct.rerere_dir* %0, %struct.rerere_dir** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %8 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %12 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ALLOC_GROW(i64 %9, i32 %10, i32 %13)
  %15 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %16 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %22 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %25 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %31 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = call i32 @memset(i64 %28, i8 signext 0, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.rerere_dir*, %struct.rerere_dir** %3, align 8
  %37 = getelementptr inbounds %struct.rerere_dir, %struct.rerere_dir* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @ALLOC_GROW(i64, i32, i32) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
