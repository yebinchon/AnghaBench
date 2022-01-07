; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_dflt_header_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_dflt_header_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_view = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }

@tod_clock_base = common dso_local global i32* null, align 8
@TOD_UNIX_EPOCH = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%02i %011ld:%06lu %1u %1s %02i %pK  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_dflt_header_fn(i32* %0, %struct.debug_view* %1, i32 %2, %struct.TYPE_7__* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.debug_view*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.debug_view* %1, %struct.debug_view** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** @tod_clock_base, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = lshr i64 %26, 4
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 12
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  %36 = load i32, i32* @TOD_UNIX_EPOCH, align 4
  %37 = ashr i32 %36, 12
  %38 = sext i32 %37 to i64
  %39 = sub i64 %35, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* @USEC_PER_SEC, align 4
  %42 = call i64 @do_div(i64 %40, i32 %41)
  store i64 %42, i64* %13, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %51

50:                                               ; preds = %5
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %14, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i64 @sprintf(i8* %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %56, i64 %57, i64 %58, i32 %59, i8* %60, i32 %65, i8* %67)
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  ret i32 %73
}

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i64, i64, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
