; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_set_mnemonic_prefix.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_set_mnemonic_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_set_mnemonic_prefix(%struct.diff_options* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %8 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %17 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %23 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
