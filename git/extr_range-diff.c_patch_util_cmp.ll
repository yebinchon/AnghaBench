; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_patch_util_cmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_patch_util_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch_util = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.patch_util*, %struct.patch_util*, i8*)* @patch_util_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_util_cmp(i8* %0, %struct.patch_util* %1, %struct.patch_util* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.patch_util*, align 8
  %7 = alloca %struct.patch_util*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.patch_util* %1, %struct.patch_util** %6, align 8
  store %struct.patch_util* %2, %struct.patch_util** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.patch_util*, %struct.patch_util** %6, align 8
  %10 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  br label %20

16:                                               ; preds = %4
  %17 = load %struct.patch_util*, %struct.patch_util** %7, align 8
  %18 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i8* [ %15, %14 ], [ %19, %16 ]
  %22 = call i32 @strcmp(i8* %11, i8* %21)
  ret i32 %22
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
