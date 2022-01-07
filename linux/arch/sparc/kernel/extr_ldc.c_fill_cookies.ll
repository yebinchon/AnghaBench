; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_fill_cookies.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_fill_cookies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cookie_state = type { i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cookie_state*, i64, i64, i64)* @fill_cookies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_cookies(%struct.cookie_state* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cookie_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.cookie_state* %0, %struct.cookie_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  br label %12

12:                                               ; preds = %107, %4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %17 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = or i64 %18, %19
  %21 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %22 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %25 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %20, i64* %28, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %32, %12
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %44 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (...) @pagesize_code()
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @make_cookie(i64 %45, i32 %46, i64 %47)
  store i64 %48, i64* %11, align 8
  store i64 0, i64* %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %51 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %42
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %57 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %60 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %55
  store i64 %67, i64* %65, align 8
  br label %93

68:                                               ; preds = %42
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %71 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %74 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 %69, i64* %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %81 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %84 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 %79, i64* %88, align 8
  %89 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %90 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %68, %54
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %94, %95
  %97 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %98 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.cookie_state*, %struct.cookie_state** %5, align 8
  %100 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load i64, i64* %10, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %93
  %108 = load i64, i64* %8, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %12, label %110

110:                                              ; preds = %107
  ret void
}

declare dso_local i64 @make_cookie(i64, i32, i64) #1

declare dso_local i32 @pagesize_code(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
