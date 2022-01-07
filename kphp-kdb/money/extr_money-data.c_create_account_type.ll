; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_create_account_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_create_account_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.account_type = type { i64, i32, i64, i64, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.lev_money_new_atype = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_ACCOUNT_TYPE = common dso_local global i32 0, align 4
@MIN_CURRENCY_ID = common dso_local global i64 0, align 8
@MAX_CURRENCY_ID = common dso_local global i64 0, align 8
@AccTypes = common dso_local global %struct.account_type** null, align 8
@tot_account_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_money_new_atype*)* @create_account_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_account_type(%struct.lev_money_new_atype* %0) #0 {
  %2 = alloca %struct.lev_money_new_atype*, align 8
  %3 = alloca %struct.account_type*, align 8
  %4 = alloca i32, align 4
  store %struct.lev_money_new_atype* %0, %struct.lev_money_new_atype** %2, align 8
  %5 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %6 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_ACCOUNT_TYPE, align 4
  %13 = icmp sle i32 %11, %12
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %19 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MIN_CURRENCY_ID, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %25 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MAX_CURRENCY_ID, align 8
  %28 = icmp sle i64 %26, %27
  br label %29

29:                                               ; preds = %23, %14
  %30 = phi i1 [ false, %14 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.account_type**, %struct.account_type*** @AccTypes, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.account_type*, %struct.account_type** %33, i64 %35
  %37 = load %struct.account_type*, %struct.account_type** %36, align 8
  %38 = icmp ne %struct.account_type* %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %29
  %40 = call %struct.account_type* @zmalloc0(i32 80)
  store %struct.account_type* %40, %struct.account_type** %3, align 8
  %41 = load %struct.account_type**, %struct.account_type*** @AccTypes, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.account_type*, %struct.account_type** %41, i64 %43
  store %struct.account_type* %40, %struct.account_type** %44, align 8
  %45 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %46 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.account_type*, %struct.account_type** %3, align 8
  %49 = getelementptr inbounds %struct.account_type, %struct.account_type* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.account_type*, %struct.account_type** %3, align 8
  %52 = getelementptr inbounds %struct.account_type, %struct.account_type* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %54 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.account_type*, %struct.account_type** %3, align 8
  %57 = getelementptr inbounds %struct.account_type, %struct.account_type* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %59 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.account_type*, %struct.account_type** %3, align 8
  %62 = getelementptr inbounds %struct.account_type, %struct.account_type* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %64 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.account_type*, %struct.account_type** %3, align 8
  %67 = getelementptr inbounds %struct.account_type, %struct.account_type* %66, i32 0, i32 12
  store i32 %65, i32* %67, align 8
  br label %109

68:                                               ; preds = %29
  %69 = load %struct.account_type**, %struct.account_type*** @AccTypes, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.account_type*, %struct.account_type** %69, i64 %71
  %73 = load %struct.account_type*, %struct.account_type** %72, align 8
  store %struct.account_type* %73, %struct.account_type** %3, align 8
  %74 = load %struct.account_type*, %struct.account_type** %3, align 8
  %75 = getelementptr inbounds %struct.account_type, %struct.account_type* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %78 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %68
  %82 = load %struct.account_type*, %struct.account_type** %3, align 8
  %83 = getelementptr inbounds %struct.account_type, %struct.account_type* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %86 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.account_type*, %struct.account_type** %3, align 8
  %91 = getelementptr inbounds %struct.account_type, %struct.account_type* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %94 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br label %97

97:                                               ; preds = %89, %81, %68
  %98 = phi i1 [ false, %81 ], [ false, %68 ], [ %96, %89 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.account_type*, %struct.account_type** %3, align 8
  %102 = getelementptr inbounds %struct.account_type, %struct.account_type* %101, i32 0, i32 5
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.account_type*, %struct.account_type** %3, align 8
  %105 = getelementptr inbounds %struct.account_type, %struct.account_type* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  %108 = call i32 @zfree(i32* %103, i32 %107)
  br label %109

109:                                              ; preds = %97, %39
  %110 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %111 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.account_type*, %struct.account_type** %3, align 8
  %114 = getelementptr inbounds %struct.account_type, %struct.account_type* %113, i32 0, i32 11
  store i32 %112, i32* %114, align 4
  %115 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %116 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %115, i32 0, i32 10
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.account_type*, %struct.account_type** %3, align 8
  %119 = getelementptr inbounds %struct.account_type, %struct.account_type* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %121 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.account_type*, %struct.account_type** %3, align 8
  %124 = getelementptr inbounds %struct.account_type, %struct.account_type* %123, i32 0, i32 9
  store i32 %122, i32* %124, align 4
  %125 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %126 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.account_type*, %struct.account_type** %3, align 8
  %129 = getelementptr inbounds %struct.account_type, %struct.account_type* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %131 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.account_type*, %struct.account_type** %3, align 8
  %134 = getelementptr inbounds %struct.account_type, %struct.account_type* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 4
  %135 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %136 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.account_type*, %struct.account_type** %3, align 8
  %139 = getelementptr inbounds %struct.account_type, %struct.account_type* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  %140 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %141 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.account_type*, %struct.account_type** %3, align 8
  %144 = getelementptr inbounds %struct.account_type, %struct.account_type* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.account_type*, %struct.account_type** %3, align 8
  %146 = getelementptr inbounds %struct.account_type, %struct.account_type* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %109
  %150 = load %struct.account_type*, %struct.account_type** %3, align 8
  %151 = getelementptr inbounds %struct.account_type, %struct.account_type* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = icmp sle i32 %152, 4096
  br label %154

154:                                              ; preds = %149, %109
  %155 = phi i1 [ false, %109 ], [ %153, %149 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %159 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = call i32* @zmalloc(i32 %161)
  %163 = load %struct.account_type*, %struct.account_type** %3, align 8
  %164 = getelementptr inbounds %struct.account_type, %struct.account_type* %163, i32 0, i32 5
  store i32* %162, i32** %164, align 8
  %165 = load %struct.account_type*, %struct.account_type** %3, align 8
  %166 = getelementptr inbounds %struct.account_type, %struct.account_type* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.lev_money_new_atype*, %struct.lev_money_new_atype** %2, align 8
  %169 = getelementptr inbounds %struct.lev_money_new_atype, %struct.lev_money_new_atype* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.account_type*, %struct.account_type** %3, align 8
  %172 = getelementptr inbounds %struct.account_type, %struct.account_type* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  %175 = call i32 @memcpy(i32* %167, i32 %170, i32 %174)
  %176 = load %struct.account_type*, %struct.account_type** %3, align 8
  %177 = getelementptr inbounds %struct.account_type, %struct.account_type* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.account_type*, %struct.account_type** %3, align 8
  %180 = getelementptr inbounds %struct.account_type, %struct.account_type* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i32, i32* @tot_account_types, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @tot_account_types, align 4
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.account_type* @zmalloc0(i32) #1

declare dso_local i32 @zfree(i32*, i32) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
