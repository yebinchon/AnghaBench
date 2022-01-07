; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.forth_request = type { i32, i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"memcache_get_process: key='%s'\0A\00", align 1
@cmd_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@get_hits = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"last_failure_prog\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"get(\22error\22, signo: %d)\0A\00", align 1
@not_zero_exit_code = common dso_local global i32 0, align 4
@sigabrt = common dso_local global i32 0, align 4
@sigkill = common dso_local global i32 0, align 4
@sigsegv = common dso_local global i32 0, align 4
@sigterm = common dso_local global i32 0, align 4
@sigxcpu = common dso_local global i32 0, align 4
@sigother = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buffer = common dso_local global i32* null, align 8
@get_missed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.forth_request*, align 8
  %11 = alloca %struct.forth_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @cmd_get, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @cmd_get, align 4
  store i32 -1, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @memcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 7
  %27 = call i32 (i8*, i8*, ...) @sscanf(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call %struct.forth_request* @hash_get_req_f(i64 %30)
  store %struct.forth_request* %31, %struct.forth_request** %10, align 8
  %32 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %33 = icmp ne %struct.forth_request* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  %36 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcache_write_res(%struct.connection* %39, i8* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %160

43:                                               ; preds = %24, %20, %3
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 7
  br i1 %45, label %46, label %98

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @memcmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  %53 = call i32 (i8*, i8*, ...) @sscanf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %98

55:                                               ; preds = %50
  %56 = load i64, i64* %8, align 8
  %57 = call %struct.forth_request* @hash_get_req_f(i64 %56)
  store %struct.forth_request* %57, %struct.forth_request** %11, align 8
  %58 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %59 = icmp ne %struct.forth_request* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %62 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @EXIT_SUCCESS, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %68, %64
  %73 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %74 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load i32, i32* @get_hits, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @get_hits, align 4
  %80 = load %struct.connection*, %struct.connection** %5, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %83 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %86 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @return_one_key(%struct.connection* %80, i8* %81, i32* %84, i32 %87)
  %89 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %90 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 1024
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load %struct.forth_request*, %struct.forth_request** %11, align 8
  %95 = call i32 @forth_request_unload_prog(%struct.forth_request* %94)
  br label %96

96:                                               ; preds = %93, %77
  store i32 0, i32* %4, align 4
  br label %160

97:                                               ; preds = %72, %68
  br label %98

98:                                               ; preds = %97, %50, %46, %43
  %99 = load i32, i32* %7, align 4
  %100 = icmp sge i32 %99, 18
  br i1 %100, label %101, label %142

101:                                              ; preds = %98
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @memcmp(i8* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 17)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %142, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 17
  %108 = call i32 (i8*, i8*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %142

110:                                              ; preds = %105
  %111 = load i32, i32* %12, align 4
  %112 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %12, align 4
  switch i32 %113, label %138 [
    i32 0, label %114
    i32 132, label %118
    i32 131, label %122
    i32 130, label %126
    i32 129, label %130
    i32 128, label %134
  ]

114:                                              ; preds = %110
  %115 = load %struct.connection*, %struct.connection** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @stat_failure_write(%struct.connection* %115, i8* %116, i32* @not_zero_exit_code)
  store i32 %117, i32* %4, align 4
  br label %160

118:                                              ; preds = %110
  %119 = load %struct.connection*, %struct.connection** %5, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @stat_failure_write(%struct.connection* %119, i8* %120, i32* @sigabrt)
  store i32 %121, i32* %4, align 4
  br label %160

122:                                              ; preds = %110
  %123 = load %struct.connection*, %struct.connection** %5, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @stat_failure_write(%struct.connection* %123, i8* %124, i32* @sigkill)
  store i32 %125, i32* %4, align 4
  br label %160

126:                                              ; preds = %110
  %127 = load %struct.connection*, %struct.connection** %5, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @stat_failure_write(%struct.connection* %127, i8* %128, i32* @sigsegv)
  store i32 %129, i32* %4, align 4
  br label %160

130:                                              ; preds = %110
  %131 = load %struct.connection*, %struct.connection** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @stat_failure_write(%struct.connection* %131, i8* %132, i32* @sigterm)
  store i32 %133, i32* %4, align 4
  br label %160

134:                                              ; preds = %110
  %135 = load %struct.connection*, %struct.connection** %5, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @stat_failure_write(%struct.connection* %135, i8* %136, i32* @sigxcpu)
  store i32 %137, i32* %4, align 4
  br label %160

138:                                              ; preds = %110
  %139 = load %struct.connection*, %struct.connection** %5, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @stat_failure_write(%struct.connection* %139, i8* %140, i32* @sigother)
  store i32 %141, i32* %4, align 4
  br label %160

142:                                              ; preds = %105, %101, %98
  %143 = load i32, i32* %7, align 4
  %144 = icmp sge i32 %143, 5
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @strncmp(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %145
  %150 = load %struct.connection*, %struct.connection** %5, align 8
  %151 = call i32 @image_prepare_stats(%struct.connection* %150)
  store i32 %151, i32* %13, align 4
  %152 = load %struct.connection*, %struct.connection** %5, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = load i32*, i32** @stats_buffer, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @return_one_key(%struct.connection* %152, i8* %153, i32* %154, i32 %155)
  store i32 0, i32* %4, align 4
  br label %160

157:                                              ; preds = %145, %142
  %158 = load i32, i32* @get_missed, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @get_missed, align 4
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %157, %149, %138, %134, %130, %126, %122, %118, %114, %96, %38
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local %struct.forth_request* @hash_get_req_f(i64) #1

declare dso_local i32 @memcache_write_res(%struct.connection*, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32*, i32) #1

declare dso_local i32 @forth_request_unload_prog(%struct.forth_request*) #1

declare dso_local i32 @stat_failure_write(%struct.connection*, i8*, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @image_prepare_stats(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
