; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_weights_vector_relax.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_weights_vector_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32* }

@log_last_ts = common dso_local global i8* null, align 8
@TAT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @weights_vector_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @weights_vector_relax(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load i8*, i8** @log_last_ts, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %8 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %83

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %66, %22
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ffs(i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %5, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 32
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32*, i32** @TAT, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @time_amortization_table_fast_exp(i32 %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, %48
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %4, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %28, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i8*, i8** @log_last_ts, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %19
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = call i32 @del_use(%struct.TYPE_6__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = call i32 @add_use_back(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %78, %18
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @time_amortization_table_fast_exp(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @del_use(%struct.TYPE_6__*) #1

declare dso_local i32 @add_use_back(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
