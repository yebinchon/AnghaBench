; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"letters\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"_immediate\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%*d,%d,%d#%d\00", align 1
@MAX_PRIORITY = common dso_local global i32 0, align 4
@get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"clear_queue\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

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
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @INIT, align 4
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @eat_at(i8* %29, i32 %30, i8** %8, i32* %9)
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 5
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = call i32 (...) @letters_prepare_stats()
  store i32 %39, i32* %10, align 4
  %40 = load %struct.connection*, %struct.connection** %5, align 8
  %41 = load i8*, i8** @stats_buff, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = call i32 @prepare_stats(%struct.connection* %40, i8* %44, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** @stats_buff, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @return_one_key(%struct.connection* %50, i8* %51, i8* %52, i32 %56)
  store i32 0, i32* %4, align 4
  br label %147

58:                                               ; preds = %34, %28
  %59 = load i32, i32* %9, align 4
  %60 = icmp sge i32 %59, 7
  br i1 %60, label %61, label %110

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strncmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  store i32 7, i32* %16, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 10
  store i32 %74, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %12, i32* %13, i32* %14)
  %81 = icmp ne i32 %80, 3
  br i1 %81, label %93, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @MAX_PRIORITY, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %85, %82, %75
  %94 = load i32, i32* @get, align 4
  %95 = call i32 @RETURN(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i8* @get_letters(i32 %97, i32 %98, i32 %99, i32 %100)
  store i8* %101, i8** %17, align 8
  %102 = load %struct.connection*, %struct.connection** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @return_one_key_flags(%struct.connection* %102, i8* %103, i8* %104, i32 %106, i32 1)
  %108 = load i32, i32* @get, align 4
  %109 = call i32 @RETURN(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %96, %61, %58
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 11
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @strncmp(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 11
  %120 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %18)
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %18, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @MAX_PRIORITY, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125, %122, %117
  %130 = load i32, i32* @get, align 4
  %131 = call i32 @RETURN(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @letters_clear(i32 %133)
  %135 = call i8* @dl_pstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  store i8* %135, i8** %19, align 8
  %136 = load %struct.connection*, %struct.connection** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i8*, i8** %19, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = call i32 @strlen(i8* %139)
  %141 = call i32 @return_one_key(%struct.connection* %136, i8* %137, i8* %138, i32 %140)
  %142 = load i32, i32* @get, align 4
  %143 = call i32 @RETURN(i32 %142, i32 0)
  br label %144

144:                                              ; preds = %132, %113, %110
  %145 = load i32, i32* @get, align 4
  %146 = call i32 @RETURN(i32 %145, i32 0)
  br label %147

147:                                              ; preds = %144, %38
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @letters_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i64) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i8* @get_letters(i32, i32, i32, i32) #1

declare dso_local i32 @return_one_key_flags(%struct.connection*, i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @dl_pstr(i8*, i32) #1

declare dso_local i32 @letters_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
