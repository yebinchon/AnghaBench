; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_may_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_may_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64*, i32* }
%struct.bio = type { i32 }

@U64_MAX = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*, %struct.bio*, i64*)* @tg_may_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_may_dispatch(%struct.throtl_grp* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.bio*, %struct.bio** %6, align 8
  %13 = call i32 @bio_data_dir(%struct.bio* %12)
  store i32 %13, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %26 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call %struct.bio* @throtl_peek_queued(i32* %31)
  %33 = icmp ne %struct.bio* %24, %32
  br label %34

34:                                               ; preds = %23, %3
  %35 = phi i1 [ false, %3 ], [ %33, %23 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @tg_bps_limit(%struct.throtl_grp* %38, i32 %39)
  %41 = load i64, i64* @U64_MAX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @tg_iops_limit(%struct.throtl_grp* %44, i32 %45)
  %47 = load i64, i64* @UINT_MAX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64*, i64** %7, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64*, i64** %7, align 8
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  store i32 1, i32* %4, align 4
  br label %149

55:                                               ; preds = %43, %34
  %56 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @throtl_slice_used(%struct.throtl_grp* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %62 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  %71 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @throtl_start_new_slice(%struct.throtl_grp* %71, i32 %72)
  br label %103

74:                                               ; preds = %60, %55
  %75 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %76 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* @jiffies, align 8
  %83 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %84 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = call i64 @time_before(i32 %81, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %74
  %92 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i64, i64* @jiffies, align 8
  %95 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %96 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %94, %99
  %101 = call i32 @throtl_extend_slice(%struct.throtl_grp* %92, i32 %93, i64 %100)
  br label %102

102:                                              ; preds = %91, %74
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %105 = load %struct.bio*, %struct.bio** %6, align 8
  %106 = call i64 @tg_with_in_bps_limit(%struct.throtl_grp* %104, %struct.bio* %105, i64* %9)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %110 = load %struct.bio*, %struct.bio** %6, align 8
  %111 = call i64 @tg_with_in_iops_limit(%struct.throtl_grp* %109, %struct.bio* %110, i64* %10)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i64*, i64** %7, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64*, i64** %7, align 8
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %116, %113
  store i32 1, i32* %4, align 4
  br label %149

119:                                              ; preds = %108, %103
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i64 @max(i64 %120, i64 %121)
  store i64 %122, i64* %11, align 8
  %123 = load i64*, i64** %7, align 8
  %124 = icmp ne i64* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i64, i64* %11, align 8
  %127 = load i64*, i64** %7, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %125, %119
  %129 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %130 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* @jiffies, align 8
  %137 = load i64, i64* %11, align 8
  %138 = add i64 %136, %137
  %139 = call i64 @time_before(i32 %135, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i64, i64* @jiffies, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %144, %145
  %147 = call i32 @throtl_extend_slice(%struct.throtl_grp* %142, i32 %143, i64 %146)
  br label %148

148:                                              ; preds = %141, %128
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %118, %54
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.bio* @throtl_peek_queued(i32*) #1

declare dso_local i64 @tg_bps_limit(%struct.throtl_grp*, i32) #1

declare dso_local i64 @tg_iops_limit(%struct.throtl_grp*, i32) #1

declare dso_local i64 @throtl_slice_used(%struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_start_new_slice(%struct.throtl_grp*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @throtl_extend_slice(%struct.throtl_grp*, i32, i64) #1

declare dso_local i64 @tg_with_in_bps_limit(%struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @tg_with_in_iops_limit(%struct.throtl_grp*, %struct.bio*, i64*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
