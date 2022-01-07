; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_getset.c_sys_setresuid.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_getset.c_sys_setresuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"setresuid(%d, %d, %d)\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setresuid(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @STRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %9, i64 %10)
  %12 = call i32 (...) @superuser()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, -1
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @_EPERM, align 4
  store i32 %36, i32* %4, align 4
  br label %106

37:                                               ; preds = %29, %23, %17, %14
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @_EPERM, align 4
  store i32 %59, i32* %4, align 4
  br label %106

60:                                               ; preds = %52, %46, %40, %37
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, -1
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @_EPERM, align 4
  store i32 %82, i32* %4, align 4
  br label %106

83:                                               ; preds = %75, %69, %63, %60
  br label %84

84:                                               ; preds = %83, %3
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, -1
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %98
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %81, %58, %35
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @STRACE(i8*, i64, i64, i64) #1

declare dso_local i32 @superuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
