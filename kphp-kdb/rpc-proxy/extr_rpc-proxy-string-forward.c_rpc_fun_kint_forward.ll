; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_fun_kint_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_fun_kint_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, i64* }

@CC = common dso_local global %struct.TYPE_2__* null, align 8
@extension_firstint_num = common dso_local global i64 0, align 8
@TL_ERROR_PROXY_NO_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can not extract %d ints\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_fun_kint_forward(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @extension_firstint_num, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %69, %2
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @extract_num(i8* %35, i32 %36, i8** %10)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @TL_ERROR_PROXY_NO_TARGET, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @tl_fetch_set_error_format(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %3, align 4
  br label %96

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = icmp uge i8* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = icmp ule i8* %49, %53
  br label %55

55:                                               ; preds = %48, %44
  %56 = phi i1 [ false, %44 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %9, align 8
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = udiv i64 %81, %80
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CC, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = urem i64 %87, %90
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = bitcast i32* %92 to i8*
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  store i8* %93, i8** %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %83, %40
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @extract_num(i8*, i32, i8**) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
