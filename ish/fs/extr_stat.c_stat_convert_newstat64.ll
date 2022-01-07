; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_stat.c_stat_convert_newstat64.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_stat.c_stat_convert_newstat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.newstat64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.statbuf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stat_convert_newstat64(%struct.newstat64* noalias sret %0, %struct.statbuf* byval(%struct.statbuf) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 15
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 16
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 14
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 15
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 14
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 14
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 13
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 13
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 12
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 11
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 10
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 9
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 8
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 6
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 4
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.newstat64, %struct.newstat64* %0, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
