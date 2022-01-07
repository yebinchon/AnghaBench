; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_cmdline_parts_verifier.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_cmdline_parts_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_partitions = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s[%llu,%llu] overlaps with %s[%llu,%llu].\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.parsed_partitions*)* @cmdline_parts_verifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdline_parts_verifier(i32 %0, %struct.parsed_partitions* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_partitions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.parsed_partitions* %1, %struct.parsed_partitions** %4, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %151, %2
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %10 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %7
  %14 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %15 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %13, %7
  %24 = phi i1 [ false, %7 ], [ %22, %13 ]
  br i1 %24, label %25, label %154

25:                                               ; preds = %23
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %147, %25
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %31 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %36 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %34, %28
  %45 = phi i1 [ false, %28 ], [ %43, %34 ]
  br i1 %45, label %46, label %150

46:                                               ; preds = %44
  %47 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %48 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %56 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %64 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %72 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @has_overlaps(i64 %54, i64 %62, i64 %70, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %146

81:                                               ; preds = %46
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  %85 = call i32 (...) @overlaps_warns_header()
  br label %86

86:                                               ; preds = %84, %81
  %87 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %88 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %97 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = shl i32 %104, 9
  %106 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %107 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 9
  %116 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %117 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %126 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 %133, 9
  %135 = load %struct.parsed_partitions*, %struct.parsed_partitions** %4, align 8
  %136 = getelementptr inbounds %struct.parsed_partitions, %struct.parsed_partitions* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 9
  %145 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %105, i32 %115, i32 %124, i32 %134, i32 %144)
  br label %146

146:                                              ; preds = %86, %46
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %28

150:                                              ; preds = %44
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %7

154:                                              ; preds = %23
  ret void
}

declare dso_local i64 @has_overlaps(i64, i64, i64, i64) #1

declare dso_local i32 @overlaps_warns_header(...) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
