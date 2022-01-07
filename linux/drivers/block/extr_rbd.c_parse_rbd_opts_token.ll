; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_parse_rbd_opts_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_parse_rbd_opts_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_rbd_opts_ctx = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@rbd_opts_tokens = common dso_local global i32 0, align 4
@Opt_last_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"bad option arg (not int) at '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"got int token %d val %d\0A\00", align 1
@Opt_last_string = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"got string token %d val %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"got token %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"queue_depth out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"alloc_size out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"alloc_size must be a power of 2\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"lock_timeout out of range\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @parse_rbd_opts_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rbd_opts_token(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.parse_rbd_opts_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.parse_rbd_opts_ctx*
  store %struct.parse_rbd_opts_ctx* %14, %struct.parse_rbd_opts_ctx** %6, align 8
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.TYPE_9__, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @rbd_opts_tokens, align 4
  %21 = call i32 @match_token(i8* %19, i32 %20, %struct.TYPE_9__* %18)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @Opt_last_int, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %27 = call i32 @match_int(%struct.TYPE_9__* %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %56

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @Opt_last_int, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @Opt_last_string, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 16
  %51 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50)
  br label %55

52:                                               ; preds = %42, %38
  %53 = load i32, i32* %9, align 4
  %54 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %160 [
    i32 130, label %58
    i32 136, label %71
    i32 133, label %93
    i32 131, label %113
    i32 129, label %135
    i32 128, label %140
    i32 134, label %145
    i32 135, label %150
    i32 132, label %155
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %163

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @SECTOR_SIZE, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @is_power_of_2(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  br label %163

93:                                               ; preds = %56
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @INT_MAX, align 4
  %99 = sdiv i32 %98, 1000
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %93
  %102 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %106, 1000
  %108 = call i32 @msecs_to_jiffies(i32 %107)
  %109 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 6
  store i32 %108, i32* %112, align 4
  br label %163

113:                                              ; preds = %56
  %114 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @kfree(i32 %118)
  %120 = call i32 @match_strdup(%struct.TYPE_9__* %18)
  %121 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %126 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %113
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

134:                                              ; preds = %113
  br label %163

135:                                              ; preds = %56
  %136 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %137 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  br label %163

140:                                              ; preds = %56
  %141 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 4
  br label %163

145:                                              ; preds = %56
  %146 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %147 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  store i32 1, i32* %149, align 4
  br label %163

150:                                              ; preds = %56
  %151 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %152 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  store i32 1, i32* %154, align 4
  br label %163

155:                                              ; preds = %56
  %156 = load %struct.parse_rbd_opts_ctx*, %struct.parse_rbd_opts_ctx** %6, align 8
  %157 = getelementptr inbounds %struct.parse_rbd_opts_ctx, %struct.parse_rbd_opts_ctx* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  br label %163

160:                                              ; preds = %56
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

163:                                              ; preds = %155, %150, %145, %140, %135, %134, %105, %87, %65
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %160, %131, %101, %83, %75, %61, %30
  %165 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @match_int(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @dout(i8*, i32, ...) #2

declare dso_local i32 @is_power_of_2(i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @match_strdup(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
