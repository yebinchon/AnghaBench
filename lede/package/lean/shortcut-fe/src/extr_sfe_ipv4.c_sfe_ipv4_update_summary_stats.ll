; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_update_summary_stats.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_update_summary_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i64*, i32*, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32 }

@SFE_IPV4_EXCEPTION_EVENT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv4*)* @sfe_ipv4_update_summary_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv4_update_summary_stats(%struct.sfe_ipv4* %0) #0 {
  %2 = alloca %struct.sfe_ipv4*, align 8
  %3 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %2, align 8
  %4 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %5 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %4, i32 0, i32 18
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %8 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %7, i32 0, i32 19
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %6
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 8
  %13 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %14 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %13, i32 0, i32 18
  store i64 0, i64* %14, align 8
  %15 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %16 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %15, i32 0, i32 16
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %19 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %25 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %24, i32 0, i32 16
  store i64 0, i64* %25, align 8
  %26 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %36 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %35, i32 0, i32 14
  store i64 0, i64* %36, align 8
  %37 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %38 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %41 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %47 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %46, i32 0, i32 12
  store i64 0, i64* %47, align 8
  %48 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %49 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %52 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %58 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %57, i32 0, i32 10
  store i64 0, i64* %58, align 8
  %59 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %60 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %63 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %69 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %68, i32 0, i32 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %74 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %80 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %79, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %82 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %85 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %91 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %102 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %131, %1
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @SFE_IPV4_EXCEPTION_EVENT_LAST, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %103
  %108 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %109 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %116 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %114
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %2, align 8
  %126 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %107
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %3, align 4
  br label %103

134:                                              ; preds = %103
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
