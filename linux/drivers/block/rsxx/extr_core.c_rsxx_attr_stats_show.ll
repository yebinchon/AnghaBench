; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_attr_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_attr_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rsxx_cardinfo* }
%struct.rsxx_cardinfo = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Ctrl %d CRC Errors\09= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Ctrl %d Hard Errors\09= %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Ctrl %d Soft Errors\09= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Ctrl %d Writes Issued\09= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Ctrl %d Writes Failed\09= %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Ctrl %d Reads Issued\09= %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Ctrl %d Reads Failed\09= %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Ctrl %d Reads Retried\09= %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Ctrl %d Discards Issued\09= %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Ctrl %d Discards Failed\09= %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Ctrl %d DMA SW Errors\09= %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Ctrl %d DMA HW Faults\09= %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Ctrl %d DMAs Cancelled\09= %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Ctrl %d SW Queue Depth\09= %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Ctrl %d HW Queue Depth\09= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rsxx_attr_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_attr_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsxx_cardinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %8, align 8
  store %struct.rsxx_cardinfo* %9, %struct.rsxx_cardinfo** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %197, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %200

16:                                               ; preds = %10
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %20 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %32 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %44 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %56 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %68 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %80 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %92 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %99)
  %101 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %104 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %102, i32 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %116 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %114, i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %128 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %135)
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %140 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %138, i32 %147)
  %149 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %152 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %150, i32 %159)
  %161 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %164 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %162, i32 %171)
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %176 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %174, i32 %183)
  %185 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %188 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %187, i32 0, i32 1
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = call i32 @atomic_read(i32* %194)
  %196 = call i32 @seq_printf(%struct.seq_file* %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %186, i32 %195)
  br label %197

197:                                              ; preds = %16
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %10

200:                                              ; preds = %10
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
