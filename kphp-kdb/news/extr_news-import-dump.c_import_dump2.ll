; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_import_dump2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_import_dump2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@import_file = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@import_fd = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Can not open dump (file %s)\0A\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@cur_write_name = common dso_local global i8* null, align 8
@O_APPEND = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@write_fd = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"can not open file %s for write\0A\00", align 1
@write_buff = common dso_local global i32* null, align 8
@wptr = common dso_local global i32* null, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"written %d items\0A\00", align 1
@rptr = common dso_local global i64 0, align 8
@rend = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Total %d bookmarks.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @import_dump2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i8*, i8** @import_file, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = call i64 (i8*, i32, ...) @open(i8* %10, i32 %11)
  store i64 %12, i64* @import_fd, align 8
  %13 = load i64, i64* @import_fd, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** @import_file, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %1, align 4
  br label %124

19:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @log_split_mod, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @generate_write_name(i32 %25)
  %27 = load i8*, i8** @cur_write_name, align 8
  %28 = load i32, i32* @O_APPEND, align 4
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_CREAT, align 4
  %32 = or i32 %30, %31
  %33 = call i64 (i8*, i32, ...) @open(i8* %27, i32 %32, i32 420)
  %34 = load i64*, i64** @write_fd, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %33, i64* %37, align 8
  %38 = load i64*, i64** @write_fd, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @cur_write_name, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 1, i32* %1, align 4
  br label %124

48:                                               ; preds = %24
  %49 = load i32*, i32** @write_buff, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @wptr, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %20

61:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %99
  %63 = call i32 (...) @read_int()
  store i32 %63, i32* %4, align 4
  %64 = call i32 (...) @read_int()
  store i32 %64, i32* %5, align 4
  %65 = call i32 (...) @read_int()
  store i32 %65, i32* %6, align 4
  %66 = call i32 (...) @read_int()
  store i32 %66, i32* %7, align 4
  %67 = call i32 (...) @read_int()
  store i32 %67, i32* %8, align 4
  %68 = call i32 (...) @read_int()
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @new_type(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @valid_type(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @write_event(i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %74, %62
  %83 = load i32, i32* @verbosity, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 1048575
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %85, %82
  %94 = call i32 (...) @eat_whitespaces()
  %95 = load i64, i64* @rptr, align 8
  %96 = load i64, i64* @rend, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  br label %62

100:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %108, %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @log_split_mod, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @flush_write(i32 %106)
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %2, align 4
  br label %101

111:                                              ; preds = %101
  %112 = load i32, i32* @verbosity, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @verbosity, align 4
  %119 = icmp sge i32 %118, 2
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (...) @write_stat()
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122, %111
  store i32 0, i32* %1, align 4
  br label %124

124:                                              ; preds = %123, %44, %15
  %125 = load i32, i32* %1, align 4
  ret i32 %125
}

declare dso_local i64 @open(i8*, i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @generate_write_name(i32) #1

declare dso_local i32 @read_int(...) #1

declare dso_local i32 @new_type(i32) #1

declare dso_local i64 @valid_type(i32) #1

declare dso_local i32 @write_event(i32, i32, i32, i32) #1

declare dso_local i32 @eat_whitespaces(...) #1

declare dso_local i32 @flush_write(i32) #1

declare dso_local i32 @write_stat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
