; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-engine.c_memcache_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"memcache_store: key='%s', key_len=%d, value_len=%d, \0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"common_friends\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@active_aio_queries = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@MAX_FRIENDS = common dso_local global i32 0, align 4
@fr_buff = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_store(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* @INIT, align 4
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %7
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* @MAX_VALUE_LEN, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %164

39:                                               ; preds = %34
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @eat_at(i8* %40, i32 %41, i8** %16, i32* %17)
  %43 = load i32, i32* %17, align 4
  %44 = icmp sge i32 %43, 14
  br i1 %44, label %45, label %163

45:                                               ; preds = %39
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %163, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %16, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 14
  %52 = call i32 @sscanf(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32* %19)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, -4
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %19, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @active_aio_queries, align 4
  %66 = or i32 %65, 262144
  store i32 %66, i32* @active_aio_queries, align 4
  %67 = load i32, i32* @set, align 4
  %68 = call i32 @RETURN(i32 %67, i32 -2)
  br label %69

69:                                               ; preds = %64, %61, %58, %55, %49
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @set, align 4
  %77 = call i32 @RETURN(i32 %76, i32 -2)
  br label %78

78:                                               ; preds = %75, %72, %69
  %79 = load i32, i32* %20, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %19, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load %struct.connection*, %struct.connection** %9, align 8
  %84 = getelementptr inbounds %struct.connection, %struct.connection* %83, i32 0, i32 0
  %85 = load i8*, i8** @buf, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @safe_read_in(i32* %84, i8* %85, i32 %86)
  %88 = load i8*, i8** @buf, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i8*, i8** @buf, align 8
  store i8* %92, i8** %21, align 8
  %93 = call i32 @get_int(i8** %21)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* @MAX_FRIENDS, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp sge i32 %94, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %82
  %99 = load i32, i32* @active_aio_queries, align 4
  %100 = or i32 %99, 32768
  store i32 %100, i32* @active_aio_queries, align 4
  %101 = load i32, i32* @set, align 4
  %102 = call i32 @RETURN(i32 %101, i32 0)
  br label %103

103:                                              ; preds = %98, %82
  %104 = load i32, i32* %22, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @active_aio_queries, align 4
  %108 = or i32 %107, 65536
  store i32 %108, i32* @active_aio_queries, align 4
  %109 = load i32, i32* @set, align 4
  %110 = call i32 @RETURN(i32 %109, i32 0)
  br label %111

111:                                              ; preds = %106, %103
  store i32 0, i32* %23, align 4
  br label %112

112:                                              ; preds = %151, %111
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %22, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %154

116:                                              ; preds = %112
  %117 = load i8*, i8** %21, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @set, align 4
  %123 = call i32 @RETURN(i32 %122, i32 0)
  br label %124

124:                                              ; preds = %121, %116
  %125 = load i8*, i8** %21, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %21, align 8
  %127 = call i32 @get_int(i8** %21)
  %128 = load i32*, i32** @fr_buff, align 8
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32*, i32** @fr_buff, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp sle i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %124
  %139 = load i32*, i32** @fr_buff, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 268435456
  br i1 %144, label %145, label %150

145:                                              ; preds = %138, %124
  %146 = load i32, i32* @active_aio_queries, align 4
  %147 = or i32 %146, 131072
  store i32 %147, i32* @active_aio_queries, align 4
  %148 = load i32, i32* @set, align 4
  %149 = call i32 @RETURN(i32 %148, i32 0)
  br label %150

150:                                              ; preds = %145, %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %23, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %23, align 4
  br label %112

154:                                              ; preds = %112
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32*, i32** @fr_buff, align 8
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @add_common_friends(i32 %155, i32 %156, i32* %157, i32 %158)
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* @set, align 4
  %161 = load i32, i32* %24, align 4
  %162 = call i32 @RETURN(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %154, %45, %39
  br label %164

164:                                              ; preds = %163, %34
  %165 = load i32, i32* @set, align 4
  %166 = call i32 @RETURN(i32 %165, i32 -2)
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @safe_read_in(i32*, i8*, i32) #1

declare dso_local i32 @get_int(i8**) #1

declare dso_local i32 @add_common_friends(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
