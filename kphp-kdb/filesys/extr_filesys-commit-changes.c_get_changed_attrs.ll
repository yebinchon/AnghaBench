; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_get_changed_attrs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_get_changed_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat*, %struct.stat*)* @get_changed_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_changed_attrs(%struct.stat* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.stat*, %struct.stat** %3, align 8
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.stat*, %struct.stat** %4, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 1
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.stat*, %struct.stat** %3, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.stat*, %struct.stat** %4, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 2
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.stat*, %struct.stat** %3, align 8
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.stat*, %struct.stat** %4, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.stat*, %struct.stat** %3, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.stat*, %struct.stat** %4, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 8
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load %struct.stat*, %struct.stat** %3, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.stat*, %struct.stat** %4, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, 16
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
