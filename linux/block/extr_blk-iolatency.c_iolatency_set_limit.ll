; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_set_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_iolatency_set_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.blkcg = type { i32 }
%struct.blkcg_gq = type { i32 }
%struct.blkg_conf_ctx = type { i8*, %struct.blkcg_gq* }
%struct.iolatency_grp = type { i64, %struct.blk_iolatency* }
%struct.blk_iolatency = type { i32 }

@blkcg_policy_iolatency = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%15[^=]=%20s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @iolatency_set_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iolatency_set_limit(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.blkcg*, align 8
  %11 = alloca %struct.blkcg_gq*, align 8
  %12 = alloca %struct.blkg_conf_ctx, align 8
  %13 = alloca %struct.iolatency_grp*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [16 x i8], align 16
  %21 = alloca [21 x i8], align 16
  %22 = alloca i64, align 8
  %23 = alloca %struct.iolatency_grp*, align 8
  %24 = alloca %struct.blk_iolatency*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %26 = call i32 @of_css(%struct.kernfs_open_file* %25)
  %27 = call %struct.blkcg* @css_to_blkcg(i32 %26)
  store %struct.blkcg* %27, %struct.blkcg** %10, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %19, align 4
  %28 = load %struct.blkcg*, %struct.blkcg** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @blkg_conf_prep(%struct.blkcg* %28, i32* @blkcg_policy_iolatency, i8* %29, %struct.blkg_conf_ctx* %12)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %5, align 4
  br label %161

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.blkg_conf_ctx, %struct.blkg_conf_ctx* %12, i32 0, i32 1
  %37 = load %struct.blkcg_gq*, %struct.blkcg_gq** %36, align 8
  %38 = call %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq* %37)
  store %struct.iolatency_grp* %38, %struct.iolatency_grp** %13, align 8
  %39 = getelementptr inbounds %struct.blkg_conf_ctx, %struct.blkg_conf_ctx* %12, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %18, align 4
  br label %43

43:                                               ; preds = %74, %35
  %44 = call i8* @strsep(i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %49 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %50 = call i32 (i8*, i8*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %48, i8* %49)
  %51 = icmp ne i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %107

53:                                               ; preds = %46
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i64 0, i64* %16, align 8
  br label %72

62:                                               ; preds = %57
  %63 = getelementptr inbounds [21 x i8], [21 x i8]* %21, i64 0, i64 0
  %64 = call i32 (i8*, i8*, ...) @sscanf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64* %22)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* @NSEC_PER_USEC, align 8
  %69 = mul nsw i64 %67, %68
  store i64 %69, i64* %16, align 8
  br label %71

70:                                               ; preds = %62
  br label %107

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %61
  br label %74

73:                                               ; preds = %53
  br label %107

74:                                               ; preds = %72
  br label %43

75:                                               ; preds = %43
  %76 = getelementptr inbounds %struct.blkg_conf_ctx, %struct.blkg_conf_ctx* %12, i32 0, i32 1
  %77 = load %struct.blkcg_gq*, %struct.blkcg_gq** %76, align 8
  store %struct.blkcg_gq* %77, %struct.blkcg_gq** %11, align 8
  %78 = load %struct.iolatency_grp*, %struct.iolatency_grp** %13, align 8
  %79 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %17, align 8
  %81 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @iolatency_set_min_lat_nsec(%struct.blkcg_gq* %81, i64 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %75
  %87 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %88 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @blk_get_queue(i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON_ONCE(i32 %93)
  %95 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %96 = call i32 @blkg_get(%struct.blkcg_gq* %95)
  br label %97

97:                                               ; preds = %86, %75
  %98 = load i64, i64* %17, align 8
  %99 = load %struct.iolatency_grp*, %struct.iolatency_grp** %13, align 8
  %100 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %105 = call i32 @iolatency_clear_scaling(%struct.blkcg_gq* %104)
  br label %106

106:                                              ; preds = %103, %97
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %106, %73, %70, %52
  %108 = call i32 @blkg_conf_finish(%struct.blkg_conf_ctx* %12)
  %109 = load i32, i32* %18, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %107
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %111
  %115 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %116 = call %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq* %115)
  store %struct.iolatency_grp* %116, %struct.iolatency_grp** %23, align 8
  %117 = load %struct.iolatency_grp*, %struct.iolatency_grp** %23, align 8
  %118 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %117, i32 0, i32 1
  %119 = load %struct.blk_iolatency*, %struct.blk_iolatency** %118, align 8
  store %struct.blk_iolatency* %119, %struct.blk_iolatency** %24, align 8
  %120 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %121 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @blk_mq_freeze_queue(i32 %122)
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = load %struct.blk_iolatency*, %struct.blk_iolatency** %24, align 8
  %128 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %127, i32 0, i32 0
  %129 = call i32 @atomic_inc(i32* %128)
  br label %140

130:                                              ; preds = %114
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.blk_iolatency*, %struct.blk_iolatency** %24, align 8
  %135 = getelementptr inbounds %struct.blk_iolatency, %struct.blk_iolatency* %134, i32 0, i32 0
  %136 = call i32 @atomic_dec(i32* %135)
  br label %139

137:                                              ; preds = %130
  %138 = call i32 @WARN_ON_ONCE(i32 1)
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139, %126
  %141 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %142 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @blk_mq_unfreeze_queue(i32 %143)
  %145 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %146 = call i32 @blkg_put(%struct.blkcg_gq* %145)
  %147 = load %struct.blkcg_gq*, %struct.blkcg_gq** %11, align 8
  %148 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @blk_put_queue(i32 %149)
  br label %151

151:                                              ; preds = %140, %111, %107
  %152 = load i32, i32* %18, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = sext i32 %152 to i64
  br label %158

156:                                              ; preds = %151
  %157 = load i64, i64* %8, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i64 [ %155, %154 ], [ %157, %156 ]
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %158, %33
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.blkcg* @css_to_blkcg(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i32 @blkg_conf_prep(%struct.blkcg*, i32*, i8*, %struct.blkg_conf_ctx*) #1

declare dso_local %struct.iolatency_grp* @blkg_to_lat(%struct.blkcg_gq*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @iolatency_set_min_lat_nsec(%struct.blkcg_gq*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_get_queue(i32) #1

declare dso_local i32 @blkg_get(%struct.blkcg_gq*) #1

declare dso_local i32 @iolatency_clear_scaling(%struct.blkcg_gq*) #1

declare dso_local i32 @blkg_conf_finish(%struct.blkg_conf_ctx*) #1

declare dso_local i32 @blk_mq_freeze_queue(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(i32) #1

declare dso_local i32 @blkg_put(%struct.blkcg_gq*) #1

declare dso_local i32 @blk_put_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
