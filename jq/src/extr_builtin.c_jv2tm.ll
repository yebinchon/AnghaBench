; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_jv2tm.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_jv2tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tm*)* @jv2tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jv2tm(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load %struct.tm*, %struct.tm** %4, align 8
  %6 = call i32 @memset(%struct.tm* %5, i32 0, i32 32)
  %7 = load %struct.tm*, %struct.tm** %4, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @TO_TM_FIELD(i32 %9, i32 %10, i32 0)
  %12 = load %struct.tm*, %struct.tm** %4, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1900
  store i32 %15, i32* %13, align 4
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TO_TM_FIELD(i32 %18, i32 %19, i32 1)
  %21 = load %struct.tm*, %struct.tm** %4, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TO_TM_FIELD(i32 %23, i32 %24, i32 2)
  %26 = load %struct.tm*, %struct.tm** %4, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TO_TM_FIELD(i32 %28, i32 %29, i32 3)
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @TO_TM_FIELD(i32 %33, i32 %34, i32 4)
  %36 = load %struct.tm*, %struct.tm** %4, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @TO_TM_FIELD(i32 %38, i32 %39, i32 5)
  %41 = load %struct.tm*, %struct.tm** %4, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @TO_TM_FIELD(i32 %43, i32 %44, i32 6)
  %46 = load %struct.tm*, %struct.tm** %4, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @TO_TM_FIELD(i32 %48, i32 %49, i32 7)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @jv_free(i32 %51)
  ret i32 1
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @TO_TM_FIELD(i32, i32, i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
