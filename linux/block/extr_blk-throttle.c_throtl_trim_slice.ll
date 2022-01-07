; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_trim_slice.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_trim_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64*, i64*, i64*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"[%c] trim slice nr=%lu bytes=%llu io=%lu start=%lu end=%lu jiffies=%lu\00", align 1
@READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, i32)* @throtl_trim_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_trim_slice(%struct.throtl_grp* %0, i32 %1) #0 {
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @time_before(i32 %16, i64 %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @throtl_slice_used(%struct.throtl_grp* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %193

31:                                               ; preds = %2
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* @jiffies, align 8
  %35 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %36 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %34, %39
  %41 = call i32 @throtl_set_slice_end(%struct.throtl_grp* %32, i32 %33, i64 %40)
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %44 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %42, %49
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %53 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %52, i32 0, i32 5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = udiv i64 %51, %56
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %31
  br label %193

61:                                               ; preds = %31
  %62 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @tg_bps_limit(%struct.throtl_grp* %62, i32 %63)
  %65 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %66 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %64, %69
  %71 = load i64, i64* %5, align 8
  %72 = mul i64 %70, %71
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @HZ, align 8
  %75 = call i32 @do_div(i64 %73, i64 %74)
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %8, align 8
  %77 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @tg_iops_limit(%struct.throtl_grp* %77, i32 %78)
  %80 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %81 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %79, %84
  %86 = load i64, i64* %5, align 8
  %87 = mul i64 %85, %86
  %88 = load i64, i64* @HZ, align 8
  %89 = udiv i64 %87, %88
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %61
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %193

96:                                               ; preds = %92, %61
  %97 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %98 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp uge i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %109 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, %107
  store i64 %115, i64* %113, align 8
  br label %123

116:                                              ; preds = %96
  %117 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %118 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %106
  %124 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %125 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %124, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp uge i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %123
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %136 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %141, %134
  store i64 %142, i64* %140, align 8
  br label %150

143:                                              ; preds = %123
  %144 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %145 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %143, %133
  %151 = load i64, i64* %5, align 8
  %152 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %153 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %152, i32 0, i32 5
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = mul i64 %151, %156
  %158 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %159 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %157
  store i64 %165, i64* %163, align 8
  %166 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %167 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %166, i32 0, i32 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @READ, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 82, i32 87
  %173 = trunc i32 %172 to i8
  %174 = load i64, i64* %5, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %7, align 8
  %177 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %178 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %185 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* @jiffies, align 8
  %192 = call i32 @throtl_log(i32* %167, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8 signext %173, i64 %174, i64 %175, i64 %176, i64 %183, i32 %190, i64 %191)
  br label %193

193:                                              ; preds = %150, %95, %60, %30
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @time_before(i32, i64) #1

declare dso_local i64 @throtl_slice_used(%struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_set_slice_end(%struct.throtl_grp*, i32, i64) #1

declare dso_local i64 @tg_bps_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @tg_iops_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_log(i32*, i8*, i8 signext, i64, i64, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
