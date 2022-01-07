; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_old.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_counter_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, %struct.counter* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get_counter_old (%lld, %d, %d)\0A\00", align 1
@counter_wait = common dso_local global %struct.counter zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.counter* (i64, i32, i32)* @get_counter_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.counter* @get_counter_old(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.counter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.counter*, align 8
  %9 = alloca %struct.counter*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @check_version(i64 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.counter* null, %struct.counter** %4, align 8
  br label %99

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.counter* @get_counter_old(i64 %29, i32 %30, i32 -1)
  store %struct.counter* %31, %struct.counter** %8, align 8
  %32 = load %struct.counter*, %struct.counter** %8, align 8
  %33 = icmp ne %struct.counter* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.counter*, %struct.counter** %8, align 8
  store %struct.counter* %35, %struct.counter** %4, align 8
  br label %99

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i64, i64* %5, align 8
  %39 = call %struct.counter* @get_counter_f(i64 %38, i32 0)
  store %struct.counter* %39, %struct.counter** %9, align 8
  %40 = load %struct.counter*, %struct.counter** %9, align 8
  %41 = icmp ne %struct.counter* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load %struct.counter*, %struct.counter** %9, align 8
  store %struct.counter* %43, %struct.counter** %4, align 8
  br label %99

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @load_counter(i64 %48, i32 0, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.counter*, %struct.counter** %9, align 8
  %55 = icmp ne %struct.counter* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store %struct.counter* null, %struct.counter** %4, align 8
  br label %99

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, -2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store %struct.counter* @counter_wait, %struct.counter** %4, align 8
  br label %99

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.counter*, %struct.counter** %9, align 8
  %67 = call i32 @do_use(%struct.counter* %66)
  %68 = load %struct.counter*, %struct.counter** %9, align 8
  store %struct.counter* %68, %struct.counter** %4, align 8
  br label %99

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %87, %69
  %71 = load %struct.counter*, %struct.counter** %9, align 8
  %72 = icmp ne %struct.counter* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.counter*, %struct.counter** %9, align 8
  %75 = getelementptr inbounds %struct.counter, %struct.counter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store %struct.counter* null, %struct.counter** %4, align 8
  br label %99

80:                                               ; preds = %73
  %81 = load %struct.counter*, %struct.counter** %9, align 8
  %82 = getelementptr inbounds %struct.counter, %struct.counter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.counter*, %struct.counter** %9, align 8
  %89 = getelementptr inbounds %struct.counter, %struct.counter* %88, i32 0, i32 1
  %90 = load %struct.counter*, %struct.counter** %89, align 8
  store %struct.counter* %90, %struct.counter** %9, align 8
  br label %70

91:                                               ; preds = %86, %70
  %92 = load %struct.counter*, %struct.counter** %9, align 8
  %93 = icmp ne %struct.counter* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.counter*, %struct.counter** %9, align 8
  %96 = call i32 @do_use(%struct.counter* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.counter*, %struct.counter** %9, align 8
  store %struct.counter* %98, %struct.counter** %4, align 8
  br label %99

99:                                               ; preds = %97, %79, %65, %60, %56, %42, %34, %27
  %100 = load %struct.counter*, %struct.counter** %4, align 8
  ret %struct.counter* %100
}

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @check_version(i64, i32) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @load_counter(i64, i32, i32) #1

declare dso_local i32 @do_use(%struct.counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
