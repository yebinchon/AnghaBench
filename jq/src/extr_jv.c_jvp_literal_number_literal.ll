; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_literal.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@JVP_FLAGS_NUMBER_LITERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@DBL_MIN_STR = common dso_local global i8* null, align 8
@DBL_MAX_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @jvp_literal_number_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @jvp_literal_number_literal(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @JVP_FLAGS_NUMBER_LITERAL, align 4
  %9 = call i32 @JVP_HAS_FLAGS(i32 %7, i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_10__* @jvp_dec_number_ptr(i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_9__* @jvp_literal_number_ptr(i32 %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i64 @decNumberIsNaN(%struct.TYPE_10__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i64 @decNumberIsInfinite(%struct.TYPE_10__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i64 @decNumberIsNegative(%struct.TYPE_10__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i8*, i8** @DBL_MIN_STR, align 8
  store i8* %28, i8** %2, align 8
  br label %55

29:                                               ; preds = %23
  %30 = load i8*, i8** @DBL_MAX_STR, align 8
  store i8* %30, i8** %2, align 8
  br label %55

31:                                               ; preds = %19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.TYPE_10__* @jvp_dec_number_ptr(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 14
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @jv_mem_alloc(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @decNumberToString(%struct.TYPE_10__* %46, i8* %49)
  br label %51

51:                                               ; preds = %36, %31
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %51, %29, %27, %18
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_FLAGS(i32, i32) #1

declare dso_local %struct.TYPE_10__* @jvp_dec_number_ptr(i32) #1

declare dso_local %struct.TYPE_9__* @jvp_literal_number_ptr(i32) #1

declare dso_local i64 @decNumberIsNaN(%struct.TYPE_10__*) #1

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_10__*) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_10__*) #1

declare dso_local i8* @jv_mem_alloc(i32) #1

declare dso_local i32 @decNumberToString(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
