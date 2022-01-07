; ModuleID = '/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/support/extr_support-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i64 0, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@GET_LOG = common dso_local global i32 0, align 4
@SET_LOG_VERBOSITY = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"answer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"_debug\00", align 1
@MAX_RES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%d,%d,%d%n#%d%n\00", align 1
@get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"delete_answer\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@delete = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"DELETED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @hst(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @eat_at(i8* %28, i32 %29, i8** %8, i32* %9)
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %31, 5
  br i1 %32, label %33, label %57

33:                                               ; preds = %3
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = call i32 (...) @support_prepare_stats()
  store i32 %38, i32* %10, align 4
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = load i64, i64* @stats_buff, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %44, %46
  %48 = call i32 @prepare_stats(%struct.connection* %39, i64 %43, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.connection*, %struct.connection** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* @stats_buff, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @return_one_key(%struct.connection* %49, i8* %50, i64 %51, i32 %55)
  store i32 0, i32* %4, align 4
  br label %180

57:                                               ; preds = %33, %3
  %58 = load i32, i32* @GET_LOG, align 4
  %59 = load i32, i32* @SET_LOG_VERBOSITY, align 4
  %60 = load i32, i32* @INIT, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 6
  br i1 %62, label %63, label %137

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %137, label %67

67:                                               ; preds = %63
  store i32 6, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  store i32 1, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 6
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* @MAX_RES, align 4
  store i32 %76, i32* %18, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %17)
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %93, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %83, %75
  %94 = load i32, i32* @get, align 4
  %95 = call i32 @RETURN(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %93, %83
  %97 = load %struct.connection*, %struct.connection** %5, align 8
  %98 = call %struct.TYPE_5__* @MESSAGE(%struct.connection* %97)
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %19, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i64 @msg_verify(%struct.TYPE_5__* %99, i32 %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %18, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103, %96
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %108 = call i32 @msg_free(%struct.TYPE_5__* %107)
  %109 = load i32, i32* @get, align 4
  %110 = call i32 @RETURN(i32 %109, i32 0)
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i8* @get_answer(i32 %112, i32 %113, i32 %116, i32 %119, i32 %120, i32 %121)
  store i8* %122, i8** %20, align 8
  %123 = load i8*, i8** %20, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %111
  %126 = load %struct.connection*, %struct.connection** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i8*, i8** %20, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = call i32 @return_one_key_flags(%struct.connection* %126, i8* %127, i8* %128, i32 %130, i32 1)
  br label %132

132:                                              ; preds = %125, %111
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %134 = call i32 @msg_free(%struct.TYPE_5__* %133)
  %135 = load i32, i32* @get, align 4
  %136 = call i32 @RETURN(i32 %135, i32 0)
  br label %137

137:                                              ; preds = %132, %63, %57
  %138 = load i32, i32* %9, align 4
  %139 = icmp sge i32 %138, 13
  br i1 %139, label %140, label %177

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 13)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %140
  store i32 13, i32* %21, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %21, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = call i32 (i8*, i8*, i32*, i32*, ...) @sscanf(i8* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %22, i32* %23)
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %161, label %151

151:                                              ; preds = %144
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %23, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %152, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %151, %144
  %162 = load i32, i32* @delete, align 4
  %163 = call i32 @RETURN(i32 %162, i32 0)
  br label %164

164:                                              ; preds = %161, %151
  %165 = load i32, i32* %22, align 4
  %166 = call i32 @do_delete_answer(i32 %165)
  store i32 %166, i32* %24, align 4
  %167 = load i32, i32* %24, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.connection*, %struct.connection** %5, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %173 = call i32 @return_one_key_flags(%struct.connection* %170, i8* %171, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %172, i32 1)
  br label %174

174:                                              ; preds = %169, %164
  %175 = load i32, i32* @delete, align 4
  %176 = call i32 @RETURN(i32 %175, i32 0)
  br label %177

177:                                              ; preds = %174, %140, %137
  %178 = load i32, i32* @delete, align 4
  %179 = call i32 @RETURN(i32 %178, i32 0)
  br label %180

180:                                              ; preds = %177, %37
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @hst(i8*, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @support_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i64, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, ...) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local %struct.TYPE_5__* @MESSAGE(%struct.connection*) #1

declare dso_local i64 @msg_verify(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @msg_free(%struct.TYPE_5__*) #1

declare dso_local i8* @get_answer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_flags(%struct.connection*, i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_delete_answer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
