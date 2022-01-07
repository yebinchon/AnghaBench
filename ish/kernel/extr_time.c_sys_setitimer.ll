; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_setitimer.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_time.c_sys_setitimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.tgroup* }
%struct.tgroup = type { i32 }
%struct.itimerval_ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.timer_spec = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@_EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"setitimer(%d, {%ds %dus, %ds %dus}, 0x%x)\00", align 1
@current = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setitimer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerval_, align 4
  %9 = alloca %struct.timer_spec, align 4
  %10 = alloca %struct.timer_spec, align 4
  %11 = alloca %struct.tgroup*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.itimerval_, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.itimerval_* %8 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 4
  %20 = call i64 @user_get(i32 %14, i64 %17, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @_EFAULT, align 4
  store i32 %23, i32* %4, align 4
  br label %119

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @STRACE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 1000
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %47 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %9, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %57 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %8, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.tgroup*, %struct.tgroup** %61, align 8
  store %struct.tgroup* %62, %struct.tgroup** %11, align 8
  %63 = load %struct.tgroup*, %struct.tgroup** %11, align 8
  %64 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %63, i32 0, i32 0
  %65 = call i32 @lock(i32* %64)
  %66 = load %struct.tgroup*, %struct.tgroup** %11, align 8
  %67 = load i32, i32* %5, align 4
  %68 = bitcast %struct.timer_spec* %9 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 4
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 4
  %73 = call i32 @itimer_set(%struct.tgroup* %66, i32 %67, i64 %70, i64 %72, %struct.timer_spec* %10)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.tgroup*, %struct.tgroup** %11, align 8
  %75 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %74, i32 0, i32 0
  %76 = call i32 @unlock(i32* %75)
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %24
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %119

81:                                               ; preds = %24
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %10, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %13, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %10, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 1000
  %94 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %13, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %13, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.timer_spec, %struct.timer_spec* %10, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 1000
  %105 = getelementptr inbounds %struct.itimerval_, %struct.itimerval_* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = bitcast %struct.itimerval_* %13 to { i64, i64 }*
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 4
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 1
  %112 = load i64, i64* %111, align 4
  %113 = call i64 @user_put(i32 %107, i64 %110, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %84
  %116 = load i32, i32* @_EFAULT, align 4
  store i32 %116, i32* %4, align 4
  br label %119

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %81
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %115, %79, %22
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @user_get(i32, i64, i64) #1

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @itimer_set(%struct.tgroup*, i32, i64, i64, %struct.timer_spec*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i64 @user_put(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
