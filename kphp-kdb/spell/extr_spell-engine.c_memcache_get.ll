; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.keep_mc_store = type { i32, i32* }

@cmd_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"request%d\00", align 1
@get_hits = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dicts\00", align 1
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@test_mode = common dso_local global i64 0, align 8
@worst_misspell_msg = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"worst_misspell_msg\00", align 1
@get_missed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.keep_mc_store*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @cmd_get, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @cmd_get, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @get_at_prefix_length(i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sge i32 %25, 5
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = call i32 @spell_prepare_stats(%struct.connection* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i64, i64* @stats_buff, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @return_one_key(%struct.connection* %34, i8* %39, i64 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %149

43:                                               ; preds = %27, %3
  store %struct.keep_mc_store* null, %struct.keep_mc_store** %10, align 8
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = getelementptr inbounds %struct.connection, %struct.connection* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.connection*, %struct.connection** %5, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.keep_mc_store*
  store %struct.keep_mc_store* %54, %struct.keep_mc_store** %10, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.keep_mc_store*, %struct.keep_mc_store** %10, align 8
  %57 = icmp ne %struct.keep_mc_store* %56, null
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @sscanf(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load %struct.keep_mc_store*, %struct.keep_mc_store** %10, align 8
  %64 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %62
  %69 = load i32, i32* @get_hits, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @get_hits, align 4
  %71 = load %struct.connection*, %struct.connection** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i64, i64* @stats_buff, align 8
  %78 = load i64, i64* @stats_buff, align 8
  %79 = load %struct.keep_mc_store*, %struct.keep_mc_store** %10, align 8
  %80 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.keep_mc_store*, %struct.keep_mc_store** %10, align 8
  %85 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.keep_mc_store*, %struct.keep_mc_store** %10, align 8
  %90 = getelementptr inbounds %struct.keep_mc_store, %struct.keep_mc_store* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sprintf(i64 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %88, i32 %93)
  %95 = call i32 @return_one_key(%struct.connection* %71, i8* %76, i64 %77, i32 %94)
  store i32 %95, i32* %4, align 4
  br label %149

96:                                               ; preds = %62, %58, %55
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @memcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* @stats_buff, align 8
  %105 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %106 = call i32 @spell_get_dicts(i64 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @get_hits, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @get_hits, align 4
  %109 = load %struct.connection*, %struct.connection** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i64, i64* @stats_buff, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @return_one_key(%struct.connection* %109, i8* %114, i64 %115, i32 %116)
  store i32 %117, i32* %4, align 4
  br label %149

118:                                              ; preds = %99, %96
  %119 = load i64, i64* @test_mode, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %118
  %122 = load i64, i64* @worst_misspell_msg, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 18
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @memcmp(i8* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 18)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @get_hits, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @get_hits, align 4
  %134 = load %struct.connection*, %struct.connection** %5, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = sub i64 0, %137
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i64, i64* @worst_misspell_msg, align 8
  %141 = load i64, i64* @worst_misspell_msg, align 8
  %142 = call i32 @strlen(i64 %141)
  %143 = call i32 @return_one_key(%struct.connection* %134, i8* %139, i64 %140, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %149

144:                                              ; preds = %127, %124, %121, %118
  %145 = load %struct.connection*, %struct.connection** %5, align 8
  %146 = call i32 @free_tmp_buffers(%struct.connection* %145)
  %147 = load i32, i32* @get_missed, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @get_missed, align 4
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %131, %103, %68, %31
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @spell_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @sprintf(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @spell_get_dicts(i64, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
