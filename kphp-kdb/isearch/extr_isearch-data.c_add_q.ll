; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_q.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_add_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@H_ADD = common dso_local global i64 0, align 8
@H_MUL = common dso_local global i64 0, align 8
@h_q = common dso_local global i32 0, align 4
@qn = common dso_local global i32 0, align 4
@qr = common dso_local global i32 0, align 4
@q_entry = common dso_local global i32* null, align 8
@STAT_ST = common dso_local global i32 0, align 4
@q_rev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_q(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* @H_ADD, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @H_MUL, align 8
  %13 = load i64, i64* %3, align 8
  %14 = mul nsw i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = bitcast %struct.TYPE_4__* %4 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.TYPE_5__* @hmap_ll_int_add(i32* @h_q, i64 %20, i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %1
  %29 = load i32, i32* @qn, align 4
  %30 = add nsw i32 %29, 3
  %31 = load i32, i32* @qr, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %28
  %34 = load i32, i32* @qr, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 %35, 3
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** @q_entry, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @STAT_ST, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @qr, align 4
  %45 = load i32, i32* @STAT_ST, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32* @dl_realloc(i32* %37, i32 %43, i32 %49)
  store i32* %50, i32** @q_entry, align 8
  %51 = load i32*, i32** @q_rev, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @qr, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32* @dl_realloc(i32* %51, i32 %55, i32 %59)
  store i32* %60, i32** @q_rev, align 8
  %61 = load i32*, i32** @q_entry, align 8
  %62 = load i32, i32* @qr, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @STAT_ST, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @qr, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memset(i32* %67, i32 0, i32 %73)
  %75 = load i32*, i32** @q_rev, align 8
  %76 = load i32, i32* @qr, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @qr, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(i32* %78, i32 0, i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* @qr, align 4
  br label %87

87:                                               ; preds = %33, %28
  %88 = load i32, i32* @qn, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @qn, align 4
  %90 = load i32*, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %2, align 4
  %92 = load i32*, i32** @q_rev, align 8
  %93 = load i32, i32* @qn, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %1
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_5__* @hmap_ll_int_add(i32*, i64, i64) #1

declare dso_local i32* @dl_realloc(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
