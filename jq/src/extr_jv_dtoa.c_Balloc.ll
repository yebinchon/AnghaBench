; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_Balloc.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_Balloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, %struct.TYPE_3__* }
%struct.dtoa_context = type { %struct.TYPE_3__** }

@Kmax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (%struct.dtoa_context*, i32)* @Balloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @Balloc(%struct.dtoa_context* %0, i32 %1) #0 {
  %3 = alloca %struct.dtoa_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.dtoa_context* %0, %struct.dtoa_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @Kmax, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.dtoa_context*, %struct.dtoa_context** %3, align 8
  %12 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %6, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %10
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.dtoa_context*, %struct.dtoa_context** %3, align 8
  %24 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %28, align 8
  br label %46

29:                                               ; preds = %10, %2
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i64 @MALLOC(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %29, %19
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  ret %struct.TYPE_3__* %51
}

declare dso_local i64 @MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
