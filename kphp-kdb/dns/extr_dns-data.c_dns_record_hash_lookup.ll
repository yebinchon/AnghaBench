; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_record_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-data.c_dns_record_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32* }

@RH = common dso_local global i64* null, align 8
@records_buff = common dso_local global i32* null, align 8
@records_hash_prime = common dso_local global i32 0, align 4
@tot_hashed_records = common dso_local global i64 0, align 8
@max_hashed_records = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dns_record_hash_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_record_hash_lookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i64*, i64** @RH, align 8
  %11 = icmp eq i64* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %160

13:                                               ; preds = %1
  %14 = load i32*, i32** @records_buff, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %4, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %23 [
    i32 131, label %22
    i32 130, label %22
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %13, %13, %13, %13
  br label %24

23:                                               ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %160

24:                                               ; preds = %22
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %24
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = mul i32 257, %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %48, %55
  %57 = load i32, i32* @records_hash_prime, align 4
  %58 = urem i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = mul i32 3, %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %60, %67
  %69 = load i32, i32* @records_hash_prime, align 4
  %70 = sub nsw i32 %69, 1
  %71 = urem i32 %68, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %42

75:                                               ; preds = %42
  %76 = load i32, i32* %6, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %145, %75
  %79 = load i64*, i64** @RH, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %78
  %86 = load i32*, i32** @records_buff, align 8
  %87 = load i64*, i64** @RH, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = bitcast i32* %92 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %9, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %134

101:                                              ; preds = %85
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %101
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %109
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @memcmp(i32* %120, i32* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %117
  %128 = load i64*, i64** @RH, align 8
  %129 = load i32, i32* %5, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %160

134:                                              ; preds = %117, %109, %101, %85
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @records_hash_prime, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @records_hash_prime, align 4
  %143 = load i32, i32* %5, align 4
  %144 = sub i32 %143, %142
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %134
  br label %78

146:                                              ; preds = %78
  %147 = load i64, i64* @tot_hashed_records, align 8
  %148 = load i64, i64* @max_hashed_records, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 -1, i32* %2, align 4
  br label %160

151:                                              ; preds = %146
  %152 = load i64, i64* @tot_hashed_records, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* @tot_hashed_records, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64*, i64** @RH, align 8
  %157 = load i32, i32* %5, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64 %155, i64* %159, align 8
  store i32 -1, i32* %2, align 4
  br label %160

160:                                              ; preds = %151, %150, %127, %23, %12
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
