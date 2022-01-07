; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-json-writer.c_unit_tests.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-json-writer.c_unit_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@obj1 = common dso_local global i32 0, align 4
@obj2 = common dso_local global i32 0, align 4
@obj3 = common dso_local global i32 0, align 4
@obj4 = common dso_local global i32 0, align 4
@obj5 = common dso_local global i32 0, align 4
@obj6 = common dso_local global i32 0, align 4
@arr1 = common dso_local global i32 0, align 4
@arr2 = common dso_local global i32 0, align 4
@arr3 = common dso_local global i32 0, align 4
@arr4 = common dso_local global i32 0, align 4
@nest1 = common dso_local global i32 0, align 4
@inline1 = common dso_local global i32 0, align 4
@inline2 = common dso_local global i32 0, align 4
@mixed1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @unit_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_tests() #0 {
  %1 = load i32, i32* @obj1, align 4
  %2 = call i32 @t(i32 %1)
  %3 = load i32, i32* @obj2, align 4
  %4 = call i32 @t(i32 %3)
  %5 = load i32, i32* @obj3, align 4
  %6 = call i32 @t(i32 %5)
  %7 = load i32, i32* @obj4, align 4
  %8 = call i32 @t(i32 %7)
  %9 = load i32, i32* @obj5, align 4
  %10 = call i32 @t(i32 %9)
  %11 = load i32, i32* @obj6, align 4
  %12 = call i32 @t(i32 %11)
  %13 = load i32, i32* @arr1, align 4
  %14 = call i32 @t(i32 %13)
  %15 = load i32, i32* @arr2, align 4
  %16 = call i32 @t(i32 %15)
  %17 = load i32, i32* @arr3, align 4
  %18 = call i32 @t(i32 %17)
  %19 = load i32, i32* @arr4, align 4
  %20 = call i32 @t(i32 %19)
  %21 = load i32, i32* @nest1, align 4
  %22 = call i32 @t(i32 %21)
  %23 = load i32, i32* @inline1, align 4
  %24 = call i32 @t(i32 %23)
  %25 = load i32, i32* @inline2, align 4
  %26 = call i32 @t(i32 %25)
  %27 = call i32 @jw_init(i32* @obj1)
  %28 = call i32 @jw_init(i32* @obj2)
  %29 = call i32 @jw_init(i32* @obj3)
  %30 = call i32 @jw_init(i32* @obj4)
  %31 = call i32 @jw_init(i32* @arr1)
  %32 = call i32 @jw_init(i32* @arr2)
  %33 = call i32 @jw_init(i32* @arr3)
  %34 = call i32 @jw_init(i32* @arr4)
  %35 = call i32 @jw_init(i32* @inline1)
  %36 = call i32 @jw_init(i32* @inline2)
  %37 = load i32, i32* @obj1, align 4
  %38 = call i32 @p(i32 %37)
  %39 = load i32, i32* @obj2, align 4
  %40 = call i32 @p(i32 %39)
  %41 = load i32, i32* @obj3, align 4
  %42 = call i32 @p(i32 %41)
  %43 = load i32, i32* @obj4, align 4
  %44 = call i32 @p(i32 %43)
  %45 = load i32, i32* @arr1, align 4
  %46 = call i32 @p(i32 %45)
  %47 = load i32, i32* @arr2, align 4
  %48 = call i32 @p(i32 %47)
  %49 = load i32, i32* @arr3, align 4
  %50 = call i32 @p(i32 %49)
  %51 = load i32, i32* @arr4, align 4
  %52 = call i32 @p(i32 %51)
  %53 = load i32, i32* @inline1, align 4
  %54 = call i32 @p(i32 %53)
  %55 = load i32, i32* @inline2, align 4
  %56 = call i32 @p(i32 %55)
  %57 = load i32, i32* @mixed1, align 4
  %58 = call i32 @t(i32 %57)
  %59 = call i32 @jw_init(i32* @mixed1)
  %60 = load i32, i32* @mixed1, align 4
  %61 = call i32 @p(i32 %60)
  ret i32 0
}

declare dso_local i32 @t(i32) #1

declare dso_local i32 @jw_init(i32*) #1

declare dso_local i32 @p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
