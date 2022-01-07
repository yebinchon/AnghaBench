; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_write.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_cost_model_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.gendisk = type { i32 }
%struct.ioc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NR_I_LCOEFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@cost_ctrl_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@i_lcoef_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @ioc_cost_model_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ioc_cost_model_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gendisk*, align 8
  %11 = alloca %struct.ioc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [32 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load i32, i32* @NR_I_LCOEFS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %27 = call %struct.gendisk* @blkcg_conf_get_disk(i8** %7)
  store %struct.gendisk* %27, %struct.gendisk** %10, align 8
  %28 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %29 = call i64 @IS_ERR(%struct.gendisk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %33 = call i64 @PTR_ERR(%struct.gendisk* %32)
  store i64 %33, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

34:                                               ; preds = %4
  %35 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %36 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ioc* @q_to_ioc(i32 %37)
  store %struct.ioc* %38, %struct.ioc** %11, align 8
  %39 = load %struct.ioc*, %struct.ioc** %11, align 8
  %40 = icmp ne %struct.ioc* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @blk_iocost_init(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %165

49:                                               ; preds = %41
  %50 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %51 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ioc* @q_to_ioc(i32 %52)
  store %struct.ioc* %53, %struct.ioc** %11, align 8
  br label %54

54:                                               ; preds = %49, %34
  %55 = load %struct.ioc*, %struct.ioc** %11, align 8
  %56 = getelementptr inbounds %struct.ioc, %struct.ioc* %55, i32 0, i32 1
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.ioc*, %struct.ioc** %11, align 8
  %59 = getelementptr inbounds %struct.ioc, %struct.ioc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = mul nuw i64 4, %24
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i32* %26, i32* %61, i32 %63)
  %65 = load %struct.ioc*, %struct.ioc** %11, align 8
  %66 = getelementptr inbounds %struct.ioc, %struct.ioc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %14, align 4
  %68 = load %struct.ioc*, %struct.ioc** %11, align 8
  %69 = getelementptr inbounds %struct.ioc, %struct.ioc* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  br label %71

71:                                               ; preds = %133, %130, %54
  %72 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %72, i8** %15, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %134

74:                                               ; preds = %71
  %75 = load i32, i32* @MAX_OPT_ARGS, align 4
  %76 = zext i32 %75 to i64
  %77 = call i8* @llvm.stacksave()
  store i8* %77, i8** %18, align 8
  %78 = alloca i32, i64 %76, align 16
  store i64 %76, i64* %19, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  store i32 3, i32* %17, align 4
  br label %130

83:                                               ; preds = %74
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* @cost_ctrl_tokens, align 4
  %86 = call i32 @match_token(i8* %84, i32 %85, i32* %78)
  switch i32 %86, label %112 [
    i32 129, label %87
    i32 128, label %103
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %78, i64 0
  %90 = call i32 @match_strlcpy(i8* %88, i32* %89, i32 32)
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store i32 0, i32* %14, align 4
  br label %102

95:                                               ; preds = %87
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 1, i32* %14, align 4
  br label %101

100:                                              ; preds = %95
  store i32 6, i32* %17, align 4
  br label %130

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %94
  store i32 3, i32* %17, align 4
  br label %130

103:                                              ; preds = %83
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %105 = getelementptr inbounds i32, i32* %78, i64 0
  %106 = call i32 @match_strlcpy(i8* %104, i32* %105, i32 32)
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %20, i64 0, i64 0
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 6, i32* %17, align 4
  br label %130

111:                                              ; preds = %103
  store i32 3, i32* %17, align 4
  br label %130

112:                                              ; preds = %83
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* @i_lcoef_tokens, align 4
  %115 = call i32 @match_token(i8* %113, i32 %114, i32* %78)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* @NR_I_LCOEFS, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 6, i32* %17, align 4
  br label %130

120:                                              ; preds = %112
  %121 = getelementptr inbounds i32, i32* %78, i64 0
  %122 = call i64 @match_u64(i32* %121, i32* %22)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store i32 6, i32* %17, align 4
  br label %130

125:                                              ; preds = %120
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %26, i64 %128
  store i32 %126, i32* %129, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %130

130:                                              ; preds = %124, %119, %110, %100, %125, %111, %102, %82
  %131 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %17, align 4
  switch i32 %132, label %170 [
    i32 0, label %133
    i32 3, label %71
    i32 6, label %162
  ]

133:                                              ; preds = %130
  br label %71

134:                                              ; preds = %71
  %135 = load %struct.ioc*, %struct.ioc** %11, align 8
  %136 = getelementptr inbounds %struct.ioc, %struct.ioc* %135, i32 0, i32 1
  %137 = call i32 @spin_lock_irq(i32* %136)
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = load %struct.ioc*, %struct.ioc** %11, align 8
  %142 = getelementptr inbounds %struct.ioc, %struct.ioc* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = mul nuw i64 4, %24
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i32* %144, i32* %26, i32 %146)
  %148 = load %struct.ioc*, %struct.ioc** %11, align 8
  %149 = getelementptr inbounds %struct.ioc, %struct.ioc* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %153

150:                                              ; preds = %134
  %151 = load %struct.ioc*, %struct.ioc** %11, align 8
  %152 = getelementptr inbounds %struct.ioc, %struct.ioc* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %140
  %154 = load %struct.ioc*, %struct.ioc** %11, align 8
  %155 = call i32 @ioc_refresh_params(%struct.ioc* %154, i32 1)
  %156 = load %struct.ioc*, %struct.ioc** %11, align 8
  %157 = getelementptr inbounds %struct.ioc, %struct.ioc* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock_irq(i32* %157)
  %159 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %160 = call i32 @put_disk_and_module(%struct.gendisk* %159)
  %161 = load i64, i64* %8, align 8
  store i64 %161, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

162:                                              ; preds = %130
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %16, align 4
  br label %165

165:                                              ; preds = %162, %48
  %166 = load %struct.gendisk*, %struct.gendisk** %10, align 8
  %167 = call i32 @put_disk_and_module(%struct.gendisk* %166)
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %5, align 8
  store i32 1, i32* %17, align 4
  br label %170

170:                                              ; preds = %165, %153, %130, %31
  %171 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i64, i64* %5, align 8
  ret i64 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.gendisk* @blkcg_conf_get_disk(i8**) #2

declare dso_local i64 @IS_ERR(%struct.gendisk*) #2

declare dso_local i64 @PTR_ERR(%struct.gendisk*) #2

declare dso_local %struct.ioc* @q_to_ioc(i32) #2

declare dso_local i32 @blk_iocost_init(i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_strlcpy(i8*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @match_u64(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ioc_refresh_params(%struct.ioc*, i32) #2

declare dso_local i32 @put_disk_and_module(%struct.gendisk*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
