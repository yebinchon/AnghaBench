; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_set_tm_wday.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_set_tm_wday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @set_tm_wday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tm_wday(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 1900, %9
  %11 = sdiv i32 %10, 100
  store i32 %11, i32* %3, align 4
  %12 = load %struct.tm*, %struct.tm** %2, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 1900, %14
  %16 = srem i32 %15, 100
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tm*, %struct.tm** %2, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.tm*, %struct.tm** %2, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 12
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.tm*, %struct.tm** %2, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double 2.600000e+00, %39
  %41 = fsub double %40, 2.000000e-01
  %42 = fptosi double %41 to i32
  %43 = call i64 @floor(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = add nsw i32 %37, %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 4.000000e+00
  %51 = fptosi double %50 to i32
  %52 = call i64 @floor(i32 %51)
  %53 = trunc i64 %52 to i32
  %54 = add nsw i32 %47, %53
  %55 = load i32, i32* %3, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 4.000000e+00
  %58 = fptosi double %57 to i32
  %59 = call i64 @floor(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %54, %60
  %62 = load i32, i32* %3, align 4
  %63 = mul nsw i32 2, %62
  %64 = sub nsw i32 %61, %63
  %65 = srem i32 %64, 7
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %34
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 7
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %34
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.tm*, %struct.tm** %2, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  ret void
}

declare dso_local i64 @floor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
