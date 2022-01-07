; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_create_account.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_create_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.lev_money_new_acc = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.account = type { i32, %struct.TYPE_2__*, i32*, i32, i32, i32, i32, i32, i32 }

@MAX_ACCOUNT_TYPE = common dso_local global i32 0, align 4
@AccTypes = common dso_local global %struct.TYPE_2__** null, align 8
@tot_accounts = common dso_local global i32 0, align 4
@special_accounts = common dso_local global i32 0, align 4
@currency_accounts = common dso_local global i32* null, align 8
@MIN_CURRENCY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_money_new_acc*, i32)* @create_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_account(%struct.lev_money_new_acc* %0, i32 %1) #0 {
  %3 = alloca %struct.lev_money_new_acc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.account*, align 8
  store %struct.lev_money_new_acc* %0, %struct.lev_money_new_acc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %7 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @MAX_ACCOUNT_TYPE, align 4
  %11 = icmp ule i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @AccTypes, align 8
  %14 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %15 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %25 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %28 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_account(i64 %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %36 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @AccTypes, align 8
  %39 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %40 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %37, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = call %struct.account* @zmalloc0(i32 48)
  store %struct.account* %49, %struct.account** %5, align 8
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @AccTypes, align 8
  %51 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %52 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.account*, %struct.account** %5, align 8
  %57 = getelementptr inbounds %struct.account, %struct.account* %56, i32 0, i32 1
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %57, align 8
  %58 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %59 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.account*, %struct.account** %5, align 8
  %62 = getelementptr inbounds %struct.account, %struct.account* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %64 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.account*, %struct.account** %5, align 8
  %67 = getelementptr inbounds %struct.account, %struct.account* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %69 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.account*, %struct.account** %5, align 8
  %72 = getelementptr inbounds %struct.account, %struct.account* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %74 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.account*, %struct.account** %5, align 8
  %77 = getelementptr inbounds %struct.account, %struct.account* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %146

80:                                               ; preds = %20
  %81 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %82 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.account*, %struct.account** %5, align 8
  %85 = getelementptr inbounds %struct.account, %struct.account* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %87 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.account*, %struct.account** %5, align 8
  %90 = getelementptr inbounds %struct.account, %struct.account* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %92 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %145

95:                                               ; preds = %80
  %96 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %97 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.account*, %struct.account** %5, align 8
  %100 = getelementptr inbounds %struct.account, %struct.account* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.account*, %struct.account** %5, align 8
  %102 = getelementptr inbounds %struct.account, %struct.account* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.account*, %struct.account** %5, align 8
  %107 = getelementptr inbounds %struct.account, %struct.account* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sle i32 %108, 4096
  br label %110

110:                                              ; preds = %105, %95
  %111 = phi i1 [ false, %95 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %115 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  %118 = call i32* @zmalloc(i32 %117)
  %119 = load %struct.account*, %struct.account** %5, align 8
  %120 = getelementptr inbounds %struct.account, %struct.account* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.account*, %struct.account** %5, align 8
  %122 = getelementptr inbounds %struct.account, %struct.account* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %125 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %128 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  %131 = call i32 @memcpy(i32* %123, i32 %126, i32 %130)
  %132 = load %struct.account*, %struct.account** %5, align 8
  %133 = getelementptr inbounds %struct.account, %struct.account* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.account*, %struct.account** %5, align 8
  %136 = getelementptr inbounds %struct.account, %struct.account* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  br label %145

145:                                              ; preds = %110, %80
  br label %146

146:                                              ; preds = %145, %20
  %147 = load %struct.account*, %struct.account** %5, align 8
  %148 = call i32 @add_account(%struct.account* %147)
  %149 = load i32, i32* @tot_accounts, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @tot_accounts, align 4
  %151 = load %struct.account*, %struct.account** %5, align 8
  %152 = getelementptr inbounds %struct.account, %struct.account* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load i32, i32* @special_accounts, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @special_accounts, align 4
  br label %161

161:                                              ; preds = %158, %146
  %162 = load i32*, i32** @currency_accounts, align 8
  %163 = load %struct.lev_money_new_acc*, %struct.lev_money_new_acc** %3, align 8
  %164 = getelementptr inbounds %struct.lev_money_new_acc, %struct.lev_money_new_acc* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MIN_CURRENCY_ID, align 8
  %167 = sub i64 %165, %166
  %168 = getelementptr inbounds i32, i32* %162, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_account(i64, i32) #1

declare dso_local %struct.account* @zmalloc0(i32) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @add_account(%struct.account*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
