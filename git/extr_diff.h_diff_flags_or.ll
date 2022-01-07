; ModuleID = '/home/carl/AnghaBench/git/extr_diff.h_diff_flags_or.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.h_diff_flags_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_flags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_flags*, %struct.diff_flags*)* @diff_flags_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_flags_or(%struct.diff_flags* %0, %struct.diff_flags* %1) #0 {
  %3 = alloca %struct.diff_flags*, align 8
  %4 = alloca %struct.diff_flags*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.diff_flags* %0, %struct.diff_flags** %3, align 8
  store %struct.diff_flags* %1, %struct.diff_flags** %4, align 8
  %8 = load %struct.diff_flags*, %struct.diff_flags** %3, align 8
  %9 = bitcast %struct.diff_flags* %8 to i8*
  store i8* %9, i8** %5, align 8
  %10 = load %struct.diff_flags*, %struct.diff_flags** %4, align 8
  %11 = bitcast %struct.diff_flags* %10 to i8*
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %31, %2
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %28, %22
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %12

34:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
