; ModuleID = '/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_pq.c_do_sync_gen_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/async_tx/extr_async_pq.c_do_sync_gen_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)*, i32 (i32, i32, i32, i64, i8**)* }
%struct.page = type { i32 }
%struct.async_submit_ctl = type { i8**, i32 }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@ASYNC_TX_PQ_XOR_DST = common dso_local global i32 0, align 4
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i32, i32, i64, %struct.async_submit_ctl*)* @do_sync_gen_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sync_gen_syndrome(%struct.page** %0, i32 %1, i32 %2, i64 %3, %struct.async_submit_ctl* %4) #0 {
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.async_submit_ctl*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.async_submit_ctl* %4, %struct.async_submit_ctl** %10, align 8
  store i32 -1, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 3
  store i32 %16, i32* %14, align 4
  %17 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %18 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = icmp ne i8** %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %23 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %11, align 8
  br label %28

25:                                               ; preds = %5
  %26 = load %struct.page**, %struct.page*** %6, align 8
  %27 = bitcast %struct.page** %26 to i8**
  store i8** %27, i8*** %11, align 8
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %80, %28
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = load %struct.page**, %struct.page*** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %36
  %38 = load %struct.page*, %struct.page** %37, align 8
  %39 = icmp eq %struct.page* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 3
  %44 = icmp sgt i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load i64, i64* @raid6_empty_zero_page, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8**, i8*** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %48, i8** %52, align 8
  br label %79

53:                                               ; preds = %33
  %54 = load %struct.page**, %struct.page*** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  %58 = load %struct.page*, %struct.page** %57, align 8
  %59 = call i8* @page_address(%struct.page* %58)
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load i8**, i8*** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %53
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %40
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %29

83:                                               ; preds = %29
  %84 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %85 = getelementptr inbounds %struct.async_submit_ctl, %struct.async_submit_ctl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASYNC_TX_PQ_XOR_DST, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load i32 (i32, i32, i32, i64, i8**)*, i32 (i32, i32, i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 1), align 8
  %92 = icmp ne i32 (i32, i32, i32, i64, i8**)* %91, null
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load i32 (i32, i32, i32, i64, i8**)*, i32 (i32, i32, i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 1), align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i64, i64* %9, align 8
  %104 = load i8**, i8*** %11, align 8
  %105 = call i32 %99(i32 %100, i32 %101, i32 %102, i64 %103, i8** %104)
  br label %106

106:                                              ; preds = %98, %90
  br label %113

107:                                              ; preds = %83
  %108 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i64, i64* %9, align 8
  %111 = load i8**, i8*** %11, align 8
  %112 = call i32 %108(i32 %109, i64 %110, i8** %111)
  br label %113

113:                                              ; preds = %107, %106
  %114 = load %struct.async_submit_ctl*, %struct.async_submit_ctl** %10, align 8
  %115 = call i32 @async_tx_sync_epilog(%struct.async_submit_ctl* %114)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @async_tx_sync_epilog(%struct.async_submit_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
